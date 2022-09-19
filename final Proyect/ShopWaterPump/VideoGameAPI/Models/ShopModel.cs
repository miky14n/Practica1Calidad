using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace ShopWaterPumpApi.Models
{
    public class ShopModel
    {
        public int Id { get; set; }

        public string Name { get; set; }

        public string Address { get; set; }

        public string Phone { get; set; }

        public DateTime? Founded { get; set; }

        public ICollection<WaterPumpModel> WaterPumps { get; set; }
    }
}
