using Microsoft.AspNetCore.Http;

namespace ShopWaterPumpApi.Models
{
    public class ProductModel
    {
        
        public int Id { get; set; }
        public string Name { get; set; }
        public string Description { get; set; }
        public float? Price { get; set; }
        public string Mark { get; set; }
        public string ImagePath { get; set; }
        public IFormFile Image { get; set; }
    }
}
