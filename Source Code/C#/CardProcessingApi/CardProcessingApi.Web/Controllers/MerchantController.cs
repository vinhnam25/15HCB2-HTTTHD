using System.Web.Http;
using CardProcessingApi.Core;
using CardProcessingApi.Web.Framework.Filters;
using CardProcessing.Business.BusinessLogic.MerchantLogic;

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

        //[HttpGet]
        //[Route("all")]
        //public List<MerchantBindingModels> GetAll()
        //{
        //    var merchants = _merchantLogic.GetAll();
        //    var entities = Mapper.Map<List<MerchantListItemModel>>(merchants);

        //    return entities;
        //}
    }
}
