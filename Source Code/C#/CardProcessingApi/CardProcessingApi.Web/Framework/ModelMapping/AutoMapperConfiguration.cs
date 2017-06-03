using System.CodeDom.Compiler;
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
            cfg.CreateMap<CommonViewModels.ProvinceListItemModel, Province>().ReverseMap();
            cfg.CreateMap<ConfigurationModels.ListViewConfigurationModel, Configuration>().ReverseMap();
            cfg.CreateMap<Agent, AgentListItemModel>()
                .ForMember(dst => dst.Province,
                    src => src.ResolveUsing(c => new CommonViewModels.ProvinceListItemModel()
                    {
                        ProvinceName = c.Province.ProvinceName,
                        ProvinceId = c.ProvinceId
                    }))
                 .ForMember(dst => dst.District,
                 src => src.ResolveUsing(c => new CommonViewModels.DistrictListItemModel()
                 {
                     DistrictId = c.DistrictId,
                     DistrictName = c.District.DistrictName
                 }));
            Mapper.Initialize(cfg);
        }
    }
}