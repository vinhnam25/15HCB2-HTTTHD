using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Http;
using CardProcessing.Business.BusinessLogic.Location;
using CardProcessingApi.Data;
using CardProcessingApi.Web.Models;

namespace CardProcessingApi.Web.Controllers
{
    [RoutePrefix("api/common")]
    public class CommonController : BaseApiController
    {
        private readonly ILocationLogic _locationLogic;

        public CommonController(ILocationLogic locationLogic)
        {
            _locationLogic = locationLogic;
        }

        [HttpGet]
        [Route("all/districts")]
        public IEnumerable<CommonViewModels.DistrictListItemModel> GetAllDistricts()
        {
            var query = _locationLogic.GetAllDistricts();
            var result = AutoMapper.Mapper.Map<List<CommonViewModels.DistrictListItemModel>>(query);
            return result;
        }

        [HttpGet]
        [Route("all/provinces")]
        public IEnumerable<CommonViewModels.ProvinceListItemModel> GetAllProvinces()
        {
            var query = _locationLogic.GetAllProvinces();
            var result = AutoMapper.Mapper.Map<List<CommonViewModels.ProvinceListItemModel>>(query);
            return result;
        }
    }
}