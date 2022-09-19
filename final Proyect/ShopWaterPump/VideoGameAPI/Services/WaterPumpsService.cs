using AutoMapper;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using ShopWaterPumpApi.Data.Entities;
using ShopWaterPumpApi.Data.Repository;
using ShopWaterPumpApi.Exceptions;
using ShopWaterPumpApi.Models;

namespace ShopWaterPumpApi.Services
{
    public class WaterPumpsService : IWaterPumpsService
    {
        private IMapper _mapper;
        private ILibraryRepository _libraryRepository;

        public WaterPumpsService(IMapper mapper, ILibraryRepository libraryRepository)
        {
            _mapper = mapper;
            _libraryRepository = libraryRepository;
        }

        public async Task<WaterPumpModel> CreateWaterPumpAsync(int ShopId, WaterPumpModel waterPump)
        {
            await validateShop(ShopId);
            waterPump.shopId = ShopId;
            var waterPumpEntity = _mapper.Map<WaterPumpEntity>(waterPump);
            _libraryRepository.CreateWaterPump(waterPumpEntity);
            var saveResult = await _libraryRepository.SaveChangesAsync();
            if (!saveResult)
            {
                throw new Exception("save error");
            }

            var modelToReturn = _mapper.Map< WaterPumpModel>(waterPumpEntity);
            modelToReturn.shopId = ShopId;
            return modelToReturn;
        }

        public async Task<bool> DeleteWaterPumpAsync(int ShopId, int waterPumpId)
        {
            await GetWaterPumpAsync(ShopId, waterPumpId);
            _libraryRepository.DeleteWaterPump(waterPumpId);
            var saveRestul = await _libraryRepository.SaveChangesAsync();
            if (!saveRestul)
            {
                throw new Exception("Error while saving.");
            }
            return true;
        }

        public async Task<WaterPumpModel> GetWaterPumpAsync(int ShopId, int waterPumpId)
        {
            await validateShop(ShopId);
            await validateWaterPump(waterPumpId);
            var waterPump = await _libraryRepository.GetWaterPumpAsync(waterPumpId);
            if (waterPump.Shop.Id != ShopId)
            {
                throw new NotFoundOperationException($"the waterPump id:{waterPumpId} does not exists for company id:{ShopId}");
            }
            return _mapper.Map<WaterPumpModel>(waterPump);
        }

        public async Task<IEnumerable<WaterPumpModel>> GetWaterPumpsAsync(int ShopId)
        {
            await validateShop(ShopId);
            var waterPumps = await _libraryRepository.GetWaterPumpsAsync(ShopId);
            return _mapper.Map<IEnumerable<WaterPumpModel>>(waterPumps);
        }

        public async Task<bool> UpdateWaterPumpAsync(int ShopId, int waterPumpId, WaterPumpModel waterPump)
        {
            await GetWaterPumpAsync(ShopId, waterPumpId);
            waterPump.Id = waterPumpId;
            await _libraryRepository.UpdateWaterPumpAsync(_mapper.Map<WaterPumpEntity>(waterPump));
            var saveRestul = await _libraryRepository.SaveChangesAsync();
            if (!saveRestul)
            {
                throw new Exception("Error while saving.");
            }
            return true;
        }

        private async Task validateShop(int shopId)
        {
            var company = await _libraryRepository.GetShopAsync(shopId); //_libraryRepository.GetCompany(ShopId);
            if (company == null)
            {
                throw new NotFoundOperationException($"the company id:{shopId}, does not exist");
            }
        }

        private async Task validateWaterPump(int waterPumpId)
        {
            var waterPump = await _libraryRepository.GetWaterPumpAsync(waterPumpId);
            if (waterPump == null)
            {
                throw new NotFoundOperationException($"the waterPump id:{waterPumpId}, does not exist");
            }
        }
    }
}
