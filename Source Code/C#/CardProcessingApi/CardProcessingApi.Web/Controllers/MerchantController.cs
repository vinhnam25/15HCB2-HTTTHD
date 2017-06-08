using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web;
using System.Web.Http;
using AutoMapper;
using CardProcessing.Business.BusinessLogic.MerchantLogic;
using CardProcessingApi.Core;
using CardProcessingApi.Data;
using CardProcessingApi.Web.Framework;
using CardProcessingApi.Web.Framework.Extension;
using CardProcessingApi.Web.Framework.Filters;
using CardProcessingApi.Web.Models;

namespace CardProcessingApi.Web.Controllers
{
    [RoutePrefix("api/merchant")]
    public class MerchantController : BaseApiController
    {
        private readonly IMerchantLogic _merchantLogic;

        public MerchantController(IMerchantLogic merchantLogic)
        {
            _merchantLogic = merchantLogic;
        }

        [HttpPost]
        [RoleAuthorize(Enums.UserRole.Master)]
        [Route("active/{merchantId}")]
        public IHttpActionResult ActivateMerchant(int merchantId)
        {
            _merchantLogic.ActivateMerchant(merchantId);
            return Ok();
        }

        [HttpPost]
        [RoleAuthorize(Enums.UserRole.Master)]
        [Route("unactive/{merchantId}")]
        public IHttpActionResult InactivateMerchant(int merchantId)
        {
            _merchantLogic.UnactivateMerchant(merchantId);
            return Ok();
        }

        [HttpGet]
        [Route("all")]
        public List<MerchantListItemModel> GetAll()
        {
            var merchants = _merchantLogic.GetAll();
            var entities = Mapper.Map<List<MerchantListItemModel>>(merchants);

            return entities;
        }

        [HttpGet]
        [AllowAnonymous]
        [Route("getByProvince/{provinceId}")]
        public List<MerchantListItemModel> GetByProvince(int provinceId)
        {

            var merchants = _merchantLogic.GetMerchantByProvince(provinceId);
            var entities = Mapper.Map<List<MerchantListItemModel>>(merchants);

            return entities;
        }

        [HttpGet]
        [AllowAnonymous]
        [Route("getByDictrict/{dictrictId}")]
        public List<MerchantListItemModel> GetByDictrict(int dictrictId)
        {

            var merchants = _merchantLogic.GetMerchantByDictrict(dictrictId);
            var entities = Mapper.Map<List<MerchantListItemModel>>(merchants);

            return entities;
        }
    }
}
