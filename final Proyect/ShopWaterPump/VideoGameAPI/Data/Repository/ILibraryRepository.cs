using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using ShopWaterPumpApi.Data.Entities;

namespace ShopWaterPumpApi.Data.Repository
{
    public interface ILibraryRepository
    {
        //shopId
         Task<IEnumerable<ShopEntity>> GetShopssAsync(string orderBy, bool showWaterPumps = false);
        Task<ShopEntity> GetShopAsync(int shopId, bool showWaterPumps = false);
        void CreateShop(ShopEntity shopModel);
        Task<bool> DeleteShopAsync(int shopId);
        bool UpdateShop(ShopEntity shopModel);

        //WaterPump 
        void CreateWaterPump(WaterPumpEntity waterPump);
        Task<WaterPumpEntity> GetWaterPumpAsync(int waterPumpId);
        Task<IEnumerable<WaterPumpEntity>> GetWaterPumpsAsync(int shopId);
        Task<bool> UpdateWaterPumpAsync(WaterPumpEntity waterPump);
        bool DeleteWaterPump(int waterPumpId);

        //save changes
        Task<bool> SaveChangesAsync();
    }
}
