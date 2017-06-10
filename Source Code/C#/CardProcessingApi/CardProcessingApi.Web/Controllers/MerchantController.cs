using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using CardProcessing.Business.BusinessLogic.MerchantLogic;
using CardProcessingApi.Web.Models;
using AutoMapper;
using CardProcessingApi.Data;
using CardProcessingApi.Web.Framework.Filters;
using CardProcessingApi.Core;
using UserRole = CardProcessingApi.Core.UserRole;

namespace CardProcessingApi.Web.Controllers
{
    [RoutePrefix("api/merchant")]
    public class MerchantController : ApiController
    {
        private readonly IMerchantLogic _merchantLogic;

        public MerchantController(IMerchantLogic merchantLogic)
        {
            _merchantLogic = merchantLogic;
        }

        [HttpPost]
        [Route("listbv")]
        public List<MerchantModel> GetBy(MerchantBindingModel md)
        {
            try
            {
                var merchants = _merchantLogic.GetBy(int.Parse(md.action), int.Parse(md.value));
                var entities = Mapper.Map<List<MerchantModel>>(merchants);
                return entities;
            }
            catch(Exception ex)
            {
                return null;
            }

            
        }

        [HttpPost]
        [Route("detail")]
        public MerchantDetailModel GetDetail(IDTransfer obj)
        {
            try
            {
                var merchants = _merchantLogic.GetMerchantById(obj.Id);
                var entities = Mapper.Map<MerchantDetailModel>(merchants);
                return entities;
            }
            catch (Exception ex)
            {
                return null;
            }
        }

        [HttpPost]
        [RoleAuthorize(UserRole.Master)]
        [Route("active/{merchantId}")]
        public IHttpActionResult ActivateMerchant(int merchantId)
        {
            _merchantLogic.ActivateMerchant(merchantId);
            return Ok();
        }

        [HttpPost]
        [RoleAuthorize(UserRole.Master)]
        [Route("unactive/{merchantId}")]
        public IHttpActionResult InactivateMerchant(int merchantId)
        {
            _merchantLogic.UnactivateMerchant(merchantId);
            return Ok();
        }

        [HttpGet]
        [Route("all")]
        public List<MerchantDetailModel> GetAll()
        {
            var merchants = _merchantLogic.GetAll();
            var entities = Mapper.Map<List<MerchantDetailModel>>(merchants);

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

        [HttpGet]
        [Route("managed/{type}")]
        public List<MerchantModel> GetManaged(int type)
        {
            try
            {
                var merchants = _merchantLogic.GetStatusManaged(type);
                var entities = Mapper.Map<List<MerchantModel>>(merchants);
                return entities;
            }
            catch (Exception ex)
            {
                return null;
            }
        }

        [HttpPost]
        [Route("addmanaged")]
        public IHttpActionResult AddManaged(UpdateManagedMerchant obj)
        {
            try
            {
                var rs = _merchantLogic.AddManaged(obj.MerchantId, obj.AgentId);
                return Ok();
            }
            catch (Exception ex)
            {
                return InternalServerError();
            }
        }
    }

}
