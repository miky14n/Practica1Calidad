using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using ShopWaterPumpApi.Models;

namespace ShopWaterPumpApi.Services
{
    public interface IWaterPumpsService
    {
        Task<WaterPumpModel> CreateWaterPumpAsync(int ShopId, WaterPumpModel waterPump);
        Task<WaterPumpModel> GetWaterPumpAsync(int ShopId, int waterPumpId);
        Task<IEnumerable<WaterPumpModel>> GetWaterPumpsAsync(int ShopId);
        Task<bool> UpdateWaterPumpAsync(int ShopId, int waterPumpId, WaterPumpModel WaterPump);
        Task<bool> DeleteWaterPumpAsync(int ShopId, int waterPumpId);
    }
}
