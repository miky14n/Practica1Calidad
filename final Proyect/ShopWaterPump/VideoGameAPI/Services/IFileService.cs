using Microsoft.AspNetCore.Http;

namespace ShopWaterPumpApi.Services
{
    public interface IFileService
    {
        string UploadFile(IFormFile file);
    }
}
