using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using ShopWaterPumpApi.Models;

namespace ShopWaterPumpApi.Services
{
    public interface IShopService
    {
        Task<IEnumerable<ShopModel>> GetShopsAsync(string orderBy, bool showWaterPumps);
        Task<ShopModel> GetShopAsync(int companyId, bool showWaterPumps);
        Task<ShopModel> CreateShopAsync(ShopModel shopModel);
        Task<DeleteModel> DeleteShopAsync(int shopId);
        Task<ShopModel> UpdateShopAsync(int shopId, ShopModel shopModel);
    }
}

