﻿using System.CodeDom.Compiler;
using System.ComponentModel;
using AutoMapper;
using AutoMapper.Configuration;
using CardProcessingApi.Core.Paging;
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
            cfg.CreateMap<Merchant, MerchantModel>();
            cfg.CreateMap<Merchant, MerchantListItemModel>();
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

            cfg.CreateMap<IPagedList<Agent>, IPagedList<AgentListItemModel>>().ConvertUsing<PagedListConverter<Agent, AgentListItemModel>>();

            cfg.CreateMap<Merchant, MerchantDetailModel>()
                .ForMember(agn => agn.Agent,
                    src => src.ResolveUsing(c => new CommonViewModels.AgentDataFilter()
                    {
                        AgentId = (int)c.AgentId,
                        AgentName = c.Agent.AgentName
                    }))
                .ForMember(dst => dst.Province,
                    src => src.ResolveUsing(c => new CommonViewModels.ProvinceListItemModel()
                    {
                        ProvinceName = c.Province.ProvinceName,
                        ProvinceId = c.ProvinceId
                    }))
                 .ForMember(dst => dst.District,
                 src => src.ResolveUsing(c => new CommonViewModels.DistrictListItemModel()
                 {
                     DistrictId = (int)c.DistrictId,
                     DistrictName = c.District.DistrictName
                 }))
                 .ForMember(dst => dst.MerchantType,
                 src => src.ResolveUsing(c => new CommonViewModels.MerchantTypeModel()
                 {
                     TypeId = (int)c.MerchantType,
                     TypeName = c.MerchantType1.TypeName
                 }));
            cfg.CreateMap<CreateMerchantBindingModel, Merchant>();
            Mapper.Initialize(cfg);

        }
    }
}