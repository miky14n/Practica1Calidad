using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Threading.Tasks;

namespace ShopWaterPumpApi.Data.Entities
{
    public class WaterPumpEntity : ProductEntity
    {
        
        public int? PowerHP { get; set; }
        public string Capacity { get; set; }
       
        [ForeignKey("ShopId")]
         public virtual ShopEntity Shop { get; set; }
    }
}
