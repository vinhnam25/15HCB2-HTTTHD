using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web;
using System.Web.Http;
using AutoMapper;
using CardProcessing.Business.BusinessLogic.AgentLogic;
using CardProcessingApi.Core;
using CardProcessingApi.Data;
using CardProcessingApi.Web.Framework;
using CardProcessingApi.Web.Framework.Extension;
using CardProcessingApi.Web.Framework.Filters;
using CardProcessingApi.Web.Models;

namespace CardProcessingApi.Web.Controllers
{
    public class MerchantController : BaseApiController
    {
        public MerchantController()
        {
        }

        [HttpPost]
        [RoleAuthorize(Enums.UserRole.Master)]
        [Route("active/{merchantId}")]
        public IHttpActionResult ActivateMerchant(int merchantId)
        {
            return Ok();
        }

        [HttpPost]
        [RoleAuthorize(Enums.UserRole.Master)]
        [Route("inactive/{merchantId}")]
        public IHttpActionResult InactivateMerchant(int merchantId)
        {
            return Ok();
        }
    }
}
