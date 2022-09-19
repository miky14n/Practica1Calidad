//using RestaurantAPI.Models;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace ShopWaterPumpApi.Data.Entities
{
    public class ShopEntity
    {
        [Key]
        [Required]
        public int Id { get; set; }

        public string Name { get; set; }

        public string Address { get; set; }

        public string Phone { get; set; }

        public DateTime? Founded { get; set; }

        public ICollection<WaterPumpEntity> WaterPumps { get; set; }
    }
}
