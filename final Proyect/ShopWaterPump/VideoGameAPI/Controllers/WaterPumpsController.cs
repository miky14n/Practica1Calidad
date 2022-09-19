using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using ShopWaterPumpApi.Exceptions;
using ShopWaterPumpApi.Models;
using ShopWaterPumpApi.Services;

namespace ShopWaterPumpApi.Controllers
{
    [Route("api/shops/{shopId:int}/waterPump")]
    public class WaterPumpsController : ControllerBase
    {
        private IWaterPumpsService _waterPumpService;
        private IFileService _fileService;

        public WaterPumpsController(IWaterPumpsService waterPumpService, IFileService fileService)
        {
            _waterPumpService = waterPumpService;
            _fileService = fileService;
        }

        [HttpGet]
        public async Task<ActionResult<IEnumerable<WaterPumpModel>>> GetWaterPumps(int shopId)
        {
            try
            {
                return  Ok(await _waterPumpService.GetWaterPumpsAsync(shopId));
            }
            catch(NotFoundOperationException ex)
            {
                return NotFound(ex.Message);
            }
            catch (Exception ex)
            {
                return StatusCode(StatusCodes.Status500InternalServerError, $"Something happend: {ex.Message}");
            }
        }

        [HttpGet("{waterPumpId:int}")]
        public async Task<ActionResult<WaterPumpModel>> GetWaterPumpAsync(int shopId, int waterPumpId)
        {
            try
            {
                return Ok(await _waterPumpService.GetWaterPumpAsync(shopId, waterPumpId));
            }
            catch (NotFoundOperationException ex)
            {
                return NotFound(ex.Message);
            }
            catch (Exception ex)
            {
                return StatusCode(StatusCodes.Status500InternalServerError, $"Something happend: {ex.Message}");
            }
        }

        //frm
        //[Authorize()]
        [HttpPost]
        public async Task<ActionResult<WaterPumpModel>> CreateWaterPumpAsync(int shopId, [FromForm] WaterPumpModel waterPump)
        {
            try
            {
                var file = waterPump.Image;
                string imagePath = _fileService.UploadFile(file);

                waterPump.ImagePath = imagePath;
                var waterPumpCreate = await _waterPumpService.CreateWaterPumpAsync(shopId, waterPump);
                return CreatedAtRoute("GetVideogame", new { shopID = shopId, waterPumpId = waterPumpCreate.Id }, waterPumpCreate);
            }
            catch (NotFoundOperationException ex)
            {
                return NotFound(ex.Message);
            }
            catch (Exception ex)
            {
                return StatusCode(StatusCodes.Status500InternalServerError, $"Something happend: {ex.Message}");
            }
        }
        [HttpPut("{waterPumpId:int}")]
        public async Task<ActionResult<WaterPumpModel>> UpdateWaterPumpAsync(int shopId, int waterPumpId, [FromForm] WaterPumpModel waterPump)
        {
            try
            {
                var file = waterPump.Image;
                string imagePath = _fileService.UploadFile(file);

                waterPump.ImagePath = imagePath;
                return Ok(await _waterPumpService.UpdateWaterPumpAsync(shopId, waterPumpId, waterPump));
            }
            catch (NotFoundOperationException ex)
            {
                return NotFound(ex.Message);
            }
            catch (Exception ex)
            {
                return StatusCode(StatusCodes.Status500InternalServerError, $"Something happend: {ex.Message}");
            }
        }

        [HttpDelete("{waterPumpId:int}")]
        public async Task<ActionResult<bool>> DeleteWaterPumpAsync(int shopId, int waterPumpId)
        {
            try
            {
                return Ok(await _waterPumpService.DeleteWaterPumpAsync(shopId, waterPumpId));
            }
            catch (NotFoundOperationException ex)
            {
                return NotFound(ex.Message);
            }
            catch (Exception ex)
            {
                return StatusCode(StatusCodes.Status500InternalServerError, $"Something happend: {ex.Message}");
            }
        }
    }
}
//postman
/*[HttpPost]
public async Task<ActionResult<WaterPumpModel>> CreateWaterPumpAsync(int shopId, [FromBody] WaterPumpModel waterPump)
{
    try
    {

        var waterPumpCreate = await _waterPumpService.CreateWaterPumpAsync(shopId, waterPump);
        return CreatedAtRoute("GetVideogame",  new { shopID = shopId , waterPumpId = waterPumpCreate.Id}, waterPumpCreate);
    }
    catch (NotFoundOperationException ex)
    {
        return NotFound(ex.Message);
    }
    catch (Exception ex)
    {
        return StatusCode(StatusCodes.Status500InternalServerError, $"Something happend: {ex.Message}");
    }
}*/