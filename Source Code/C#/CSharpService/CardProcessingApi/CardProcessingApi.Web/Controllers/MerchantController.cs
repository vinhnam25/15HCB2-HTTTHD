using AutoMapper;
using CardProcessing.Business.BusinessLogic.MerchantLogic;
using CardProcessingApi.Core.Paging;
using CardProcessingApi.Core.Search;
using CardProcessingApi.Data;
using CardProcessingApi.Web.Framework.Extension;
using CardProcessingApi.Web.Framework.Filters;
using CardProcessingApi.Web.Models;
using System;
using System.Collections.Generic;
using System.Web.Http;
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
        //[RoleAuthorize(UserRole.Master)]
        [Route("create")]
        public IHttpActionResult CreateMerchant(CreateMerchantBindingModel model)
        {
            //try
            //{
                var entity = AutoMapper.Mapper.Map<Merchant>(model);
                _merchantLogic.Add(entity);

                return Ok();
            //}
            //catch (Exception ex)
            //{
            //    throw new Exception(ex.ToString());
            //}
        }
        [HttpPost]
        //[RoleAuthorize(Enums.UserRole.Master)]
        [Route("update")]
        public IHttpActionResult UpdateMerchant(Merchant model)
        {
           
            _merchantLogic.Update(model);

            return Ok();
        }
        [HttpPost]
        //[RoleAuthorize(Enums.UserRole.Master)]
        [Route("delete")]
        public IHttpActionResult DeleteMerchant(Merchant model)
        {
          
            var entity = AutoMapper.Mapper.Map<Merchant>(model);
            _merchantLogic.Delete(entity);

            return Ok();
        }

        [HttpPost]
        //[RoleAuthorize(Enums.UserRole.Master)]
        [Route("deleteLastest")]
        public IHttpActionResult DeleteLastestMerchant()
        {
            
            _merchantLogic.DeleteLastest();

            return Ok();
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
        //[RoleAuthorize(UserRole.Master)]
        [Route("active/{merchantId}")]
        public IHttpActionResult ActivateMerchant(int merchantId)
        {
            _merchantLogic.ActivateMerchant(merchantId);
            return Ok();
        }

        [HttpPost]
        //[RoleAuthorize(UserRole.Master)]
        [Route("unactive/{merchantId}")]
        public IHttpActionResult InactivateMerchant(int merchantId)
        {
            _merchantLogic.UnactivateMerchant(merchantId);
            return Ok();
        }

        [HttpGet]
        [AllowAnonymous]
        [Route("getStatusById/{merchantId}")]
        public bool GetStatusByMerchantId(int merchantId)
        {
            return _merchantLogic.GetStatusByMerchantId(merchantId);
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
        [Route("lastest")]
        public int  GetLastestMerchant()
        {
            Merchant merchants = _merchantLogic.GetLastestMerchant();
            //var entities = Mapper.Map<List<MerchantDetailModel>>(merchants);

            return merchants.MerchantId;
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

        [Route("search/with-filter")]
        [RoleAuthorize(UserRole.Master)]
        [HttpGet]
        public List<MerchantListItemModel> SearchWithFilter([FromUri] MerchantSearchCriteria searchCriteria)
        {
            var queryResult = _merchantLogic.SearchMerchant(searchCriteria);
            var mappedResult = Mapper.Map<List<MerchantListItemModel>>(queryResult);

            return mappedResult;
        }

        [Route("search/paging/with-filter")]
        [RoleAuthorize(UserRole.Master)]
        [HttpGet]
        public IList<MerchantListItemModel> SearchWithFilter([FromUri] MerchantSearchCriteria searchCriteria,
            [FromUri]PagingFilter pagingFilter)
        {
            if (searchCriteria == null || pagingFilter == null)
            {
                return new PagedList<MerchantListItemModel>(new List<MerchantListItemModel>(), 0, 0);
            }

            var queryResult = _merchantLogic.SearchMerchant(searchCriteria, pagingFilter);

            var mappedResult = queryResult.ToModelList<Merchant, MerchantListItemModel>();

            return mappedResult;
        }
    }

}
