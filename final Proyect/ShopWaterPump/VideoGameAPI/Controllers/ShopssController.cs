using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using ShopWaterPumpApi.Exceptions;
using ShopWaterPumpApi.Models;
using ShopWaterPumpApi.Services;

namespace ShopWaterPumpApi.Controllers
{
    
    //[Authorize(Roles = "Admin")]
    [Route("api/shops")]
    public class ShopssController : ControllerBase
    {

        private IShopService _shopService;
        
        public ShopssController(IShopService shopService)
        {
            this._shopService = shopService; 
        }
        
        
        [HttpGet]
        public async Task<ActionResult<IEnumerable<ShopModel>>> GetCompaniesAsync(string orderBy = "Id", bool showWaterPumps = false) 
        {
            try
            {
                var user = User;
                return Ok(await _shopService.GetShopsAsync(orderBy, showWaterPumps));
            }
            catch (BadRequestOperationException ex)
            {
                return BadRequest(ex.Message);
            }
            catch (Exception ex)
            {
                return StatusCode(StatusCodes.Status500InternalServerError, $"Something happend: {ex.Message}");
            }
        }

        
        [HttpGet("{shopId:int}", Name = "GetShop")]
        public async Task<ActionResult<ShopModel>> GetCompanyAync(int shopId, bool showWaterPumps = false)
        {
            try
            {
                return await _shopService.GetShopAsync(shopId, showWaterPumps);
            }
            catch (NotFoundOperationException ex)
            {
                return NotFound(ex.Message); ;
            }
            catch (Exception ex)
            {
                return StatusCode(StatusCodes.Status500InternalServerError, $"Something happend: {ex.Message}");
            }
        }
        [Authorize()]
        [HttpPost]
        public async Task<ActionResult<ShopModel>> CreateShopAsync([FromBody] ShopModel shopModel)
        {
            try
            {
                if (!ModelState.IsValid)
                {
                    return BadRequest(ModelState);
                }   
                
                var url = HttpContext.Request.Host;
                var newShop = await _shopService.CreateShopAsync(shopModel);
                return CreatedAtRoute("GetCompany", new { shopId = newShop.Id }, newShop);
            }
            catch (Exception ex)
            {
                return StatusCode(StatusCodes.Status500InternalServerError, $"Something happend: {ex.Message}");
            }
        }

        

        [HttpPut("{shopId:int}")]
        public async Task<IActionResult> UpdateCompanyAsync(int shopID, [FromBody] ShopModel shopModel)
        {
            try
            {
                if (!ModelState.IsValid)
                {
                    foreach (var pair in ModelState)
                    {
                        if (pair.Key == nameof(shopModel.Name) && pair.Value.Errors.Count > 0)
                        {
                            return BadRequest(pair.Value.Errors);
                        }
                    }
                }

                return Ok(await _shopService.UpdateShopAsync(shopID, shopModel));
            }
            catch (NotFoundOperationException ex)
            {
                return NotFound(ex.Message); ;
            }
            catch (Exception ex)
            {
                return StatusCode(StatusCodes.Status500InternalServerError, $"Something happend: {ex.Message}");
            }
        }
        [HttpDelete("{shopId:int}")]
        public async Task<ActionResult<DeleteModel>> DeletecompanyAsync(int shopID)
        {
            try
            {
                return Ok(await _shopService.DeleteShopAsync(shopID));
            }
            catch (NotFoundOperationException ex)
            {
                return NotFound(ex.Message); ;
            }
            catch (Exception ex)
            {
                return StatusCode(StatusCodes.Status500InternalServerError, $"Something happend: {ex.Message}");
            }
        }


    }
}
/*
 
 */