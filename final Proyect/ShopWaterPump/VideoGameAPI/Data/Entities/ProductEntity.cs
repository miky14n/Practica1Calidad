using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace ShopWaterPumpApi.Data.Entities
{
    public class ProductEntity
    {
        [Key]
        [Required]
        public int Id { get; set; }
        [Required]
        public string Name { get; set; }
        public string Description { get; set; }
        public float? Price { get; set; }
        public string Mark { get; set; }
        public string ImagePath { get; set; }

        //public virtual ICollection<VideoGameEntity> WaterPumps { get; set; }
    }
}
