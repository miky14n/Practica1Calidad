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
    public class ShopsService : IShopService
    {
        ILibraryRepository _libraryRepository;
        private IMapper _mapper;

        private HashSet<string> allowedOrderByParameters = new HashSet<string>()
        {
            "id",
            "name",
            "fundation-date",
            "departament"
        };

        public ShopsService(ILibraryRepository libraryRepository, IMapper mapper)
        {
            _libraryRepository = libraryRepository;
            _mapper = mapper;
        }

        public async Task<ShopModel> CreateShopAsync(ShopModel shopModel)
        {
            var shopEntity = _mapper.Map<ShopEntity>(shopModel);
            _libraryRepository.CreateShop(shopEntity);
            var result = await _libraryRepository.SaveChangesAsync();

            if (result)
            {
                return _mapper.Map<ShopModel>(shopEntity);
            }

            throw new Exception("Database Error");
        }

        public async Task<DeleteModel> DeleteShopAsync(int shopId)
        {
            await GetShopAsync(shopId);

            var DeleteResult = await _libraryRepository.DeleteShopAsync(shopId);

            var saveResult = await _libraryRepository.SaveChangesAsync();

            if (!saveResult||!DeleteResult)
            {
                throw new Exception("Database Error");
            }


            if (saveResult)
            {
                return new DeleteModel()
                {
                    IsSuccess = saveResult,
                    Message = "The shop was deleted."
                };
            } else
            {
                return new DeleteModel()
                {
                    IsSuccess = saveResult,
                    Message = "The shop was not deleted."
                };
            }
        }

        public async Task<IEnumerable<ShopModel>> GetShopsAsync(string orderBy, bool showWaterPumps)
        {
            if (!allowedOrderByParameters.Contains(orderBy.ToLower()))
            {
                throw new BadRequestOperationException($"the field: {orderBy} is not supported, please use one of these {string.Join(",", allowedOrderByParameters)}");
            }

            var entityList = await _libraryRepository.GetShopssAsync(orderBy, showWaterPumps);
            var modelList = _mapper.Map<IEnumerable<ShopModel>>(entityList);
            return modelList;
        }

        public async Task<ShopModel> GetShopAsync(int companyID, bool showWaterPumps = false)
        {
            var shop = await _libraryRepository.GetShopAsync(companyID, showWaterPumps);
            if (shop == null)
            {
                throw new NotFoundOperationException($"The shop with id:{shop.Id} does not exists");
            }

            return _mapper.Map<ShopModel>(shop);
        }

        public async Task<ShopModel> UpdateShopAsync(int shopId, ShopModel shopModel)
        {
            var companyEntity = _mapper.Map<ShopEntity>(shopModel);
            await GetShopAsync(shopId);
            companyEntity.Id = shopId;
            _libraryRepository.UpdateShop(companyEntity);
            
            var saveResult = await _libraryRepository.SaveChangesAsync();

            if (!saveResult)
            {
                throw new Exception("Database Error");
            }
            return shopModel;
        }
    }
}
