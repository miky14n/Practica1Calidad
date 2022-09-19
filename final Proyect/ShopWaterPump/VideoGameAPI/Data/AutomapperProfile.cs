using AutoMapper;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using ShopWaterPumpApi.Data.Entities;
using ShopWaterPumpApi.Models;

namespace ShopWaterPumpApi.Data
{
    public class AutomapperProfile : Profile
    {
        public AutomapperProfile()
        {
            this.CreateMap<ShopEntity, ShopModel>()
                .ReverseMap();


            this.CreateMap<WaterPumpModel, WaterPumpEntity>()
                .ForMember(des => des.Shop, opt => opt.MapFrom(scr => new ShopEntity { Id = scr.shopId }))  
                .ReverseMap()
                .ForMember(dest => dest.shopId, opt => opt.MapFrom(scr => scr.Shop.Id));
            //this.CreateMap<Camp, CampModel>()
            //  .ForMember(c => c.Venue, o => o.MapFrom(m => m.Location.VenueName))
            //  .ReverseMap();

            //this.CreateMap<Talk, TalkModel>()
            //  .ReverseMap()
            //  .ForMember(t => t.Camp, opt => opt.Ignore())
            //  .ForMember(t => t.Speaker, opt => opt.Ignore());
        }
    }
}
