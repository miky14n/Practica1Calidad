using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace ShopWaterPumpApi.Models
{
    public class WaterPumpModel : ProductModel
    {

        public int? PowerHP { get; set; }
        public string Capacity { get; set; }
        public virtual int shopId { get; set; }
    }
}
