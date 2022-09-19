using Microsoft.AspNetCore.Identity.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using ShopWaterPumpApi.Data.Entities;

namespace ShopWaterPumpApi.Data
{
    public class LibraryDbContext : IdentityDbContext
    {
        public DbSet<ShopEntity> Shops { get; set; }
        public DbSet<WaterPumpEntity> WaterPumps { get; set; }

        public LibraryDbContext(DbContextOptions<LibraryDbContext> options)
            :base(options)
        {
        }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            base.OnModelCreating(modelBuilder);

            modelBuilder.Entity<ShopEntity>().ToTable("Shops");
            modelBuilder.Entity<ShopEntity>().Property(c => c.Id).ValueGeneratedOnAdd();
            modelBuilder.Entity<ShopEntity>().HasMany(c => c.WaterPumps).WithOne(v => v.Shop);

            modelBuilder.Entity<WaterPumpEntity>().ToTable("WaterPumps");
            modelBuilder.Entity<WaterPumpEntity>().Property(v => v.Id).ValueGeneratedOnAdd();
            modelBuilder.Entity<WaterPumpEntity>().HasOne(v => v.Shop).WithMany(c => c.WaterPumps);
        }


        //dotnet tool install --global dotnet-ef
        //dotnet ef migrations add InitialCreate
        //dotnet ef database update

    }
}
