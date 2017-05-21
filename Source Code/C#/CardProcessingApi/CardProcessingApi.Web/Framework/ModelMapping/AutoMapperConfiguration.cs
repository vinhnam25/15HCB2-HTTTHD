using System.ComponentModel;
using AutoMapper;
using AutoMapper.Configuration;
using CardProcessingApi.Data;
using CardProcessingApi.Web.Models;

namespace CardProcessingApi.Web.Framework.ModelMapping
{
    public class AutoMapperConfiguration
    {
        public static void ConfigMapping()
        {
            var cfg = new MapperConfigurationExpression();
            cfg.CreateMap<CreateAgentBindingModel, Agent>();
            cfg.CreateMap<CommonViewModels.DistrictListItemModel, District>().ReverseMap();

            Mapper.Initialize(cfg);
        }
    }
}