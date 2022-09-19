using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using ShopWaterPumpApi.Data.Entities;

namespace ShopWaterPumpApi.Data.Repository
{
    public class LibraryRepository : ILibraryRepository
    {
        private LibraryDbContext _dbContext;

        public LibraryRepository(LibraryDbContext dbContext)
        {
            _dbContext = dbContext;
        }

        public void CreateShop(ShopEntity shopModel)
        {
            _dbContext.Shops.Add(shopModel);
        }


        public async Task<bool> DeleteShopAsync(int shopId)
        {
            var shopToDelete = await _dbContext.Shops.FirstOrDefaultAsync(c => c.Id == shopId);
            _dbContext.Shops.Remove(shopToDelete);

            return true;
        }

       

        public async Task<ShopEntity> GetShopAsync(int shopId, bool showWaterPump = false)
        {
            IQueryable<ShopEntity> query = _dbContext.Shops;
            query = query.AsNoTracking();

            if (showWaterPump)
            {
                query = query.Include(c => c.WaterPumps);
            }
            return await query.FirstOrDefaultAsync(c => c.Id == shopId);
        }

        public async Task<IEnumerable<ShopEntity>> GetShopssAsync(string orderBy, bool showWaterPumpss = false)
        {
            IQueryable<ShopEntity> query = _dbContext.Shops;
            query = query.AsNoTracking();

            switch (orderBy)
            {
                case "id":
                    query = query.OrderBy(c => c.Id);
                    break;
                case "name":
                    query = query.OrderBy(c => c.Name);
                    break;
                case "fundation-date":
                    query = query.OrderBy(c => c.Founded);
                    break;
                case "adrres":
                    query = query.OrderBy(c => c.Address);
                    break;
                default:
                    query = query.OrderBy(c => c.Id); ;
                    break;
            }
            var result = query.ToList();
            return result; 
        }

        public void CreateWaterPump(WaterPumpEntity waterPump)
        {
            if (waterPump.Shop != null)
            {
                _dbContext.Entry(waterPump.Shop).State = EntityState.Unchanged;
            }
            _dbContext.WaterPumps.Add(waterPump);
        }

        public async Task<WaterPumpEntity> GetWaterPumpAsync(int waterPumpId)
        {
            IQueryable<WaterPumpEntity> query = _dbContext.WaterPumps;
            query = query.Include(v => v.Shop);
            query = query.AsNoTracking();
            var waterPump = await query.SingleOrDefaultAsync(v => v.Id == waterPumpId);
            return waterPump;
        }

        public async Task<IEnumerable<WaterPumpEntity>> GetWaterPumpsAsync(int shopId)
        {

            
            IQueryable<WaterPumpEntity> query = _dbContext.WaterPumps;
            query = query.Where(v => v.Shop.Id == shopId);
            query = query.Include(v => v.Shop);
            query = query.AsNoTracking();

            return await query.ToArrayAsync(); ;
        }
        public bool DeleteWaterPump(int waterPumpId)
        {
            var waterPumpDelete = new WaterPumpEntity() { Id = waterPumpId };
            _dbContext.Entry(waterPumpDelete).State = EntityState.Deleted;
            return true;
        }

        public async Task<bool> SaveChangesAsync()
        {
            try
            {
                var res = await _dbContext.SaveChangesAsync();
                return res > 0;
            }
            catch (Exception ex)
            {

                throw ex;
            }
        }

        public bool UpdateShop(ShopEntity shopEntity)
        {
            var shopUpdate = _dbContext.Shops.FirstOrDefault(c => c.Id == shopEntity.Id);

            _dbContext.Entry(shopUpdate).CurrentValues.SetValues(shopEntity);

            
            return true;
        }

        public async Task<bool> UpdateWaterPumpAsync(WaterPumpEntity waterPump)
        {
            var waterPumpUpdate = await _dbContext.WaterPumps.FirstOrDefaultAsync(v => v.Id == waterPump.Id);
            waterPumpUpdate.Name = waterPump.Name ?? waterPumpUpdate.Name;
            waterPumpUpdate.Description = waterPump.Description ?? waterPumpUpdate.Description;
            waterPumpUpdate.Price = waterPump.Price ?? waterPumpUpdate.Price;
            waterPumpUpdate.Mark = waterPump.Mark ?? waterPumpUpdate.Mark;
            waterPumpUpdate.PowerHP = waterPump.PowerHP ?? waterPumpUpdate.PowerHP;
            waterPumpUpdate.Capacity = waterPump.Capacity ?? waterPumpUpdate.Capacity;

            return true;
        }

        
        }
    }
