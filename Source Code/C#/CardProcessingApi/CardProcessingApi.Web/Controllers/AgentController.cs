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
    [RoutePrefix("api/agent")]
    public class AgentController: BaseApiController
    {
        private readonly IAgentLogic _agentLogic;

        public AgentController(IAgentLogic agentLogic)
        {
            _agentLogic = agentLogic;
        }

        [HttpPost]
        [RoleAuthorize(Enums.UserRole.Master)]
        [Route("create")]
        public IHttpActionResult CreateAgent(CreateAgentBindingModel model)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState.FirstError());
            }

            var entity = AutoMapper.Mapper.Map<Agent>(model);
            _agentLogic.Add(entity);

            return Ok();
        }

        [HttpPost]
        [AllowAnonymous]
        //[RoleAuthorize(Enums.UserRole.Master)]
        [Route("update")]
        public IHttpActionResult UpdateAgent(CreateAgentBindingModel model)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState.FirstError());
            }

            var entity = AutoMapper.Mapper.Map<Agent>(model);
            _agentLogic.Update(entity);

            return Ok();
        }

        [HttpPost]
        [RoleAuthorize(Enums.UserRole.Master)]
        [Route("unactive/{agentId}")]
        public IHttpActionResult UnactivateAgent(int agentId)
        {
            _agentLogic.UnactivateAgent(agentId);
            return Ok();
        }

        [HttpPost]
        [RoleAuthorize(Enums.UserRole.Master)]
        [Route("active/{agentId}")]
        public IHttpActionResult ActivateAgent(int agentId)
        {
            _agentLogic.ActivateAgent(agentId);
            return Ok();
        }

        [HttpGet]
        [Route("all")]
        public List<AgentListItemModel> GetAll()
        {
            var agents = _agentLogic.GetAll();
            var entities = Mapper.Map<List<AgentListItemModel>>(agents);

            return entities;
        }

        [HttpGet]
        [AllowAnonymous]
        [Route("getByProvince/{provinceId}")]
        public List<AgentListItemModel> GetByProvince(int provinceId)
        {

            var agents = _agentLogic.GetAgentByProvince(provinceId);
            var entities = Mapper.Map<List<AgentListItemModel>>(agents);

            return entities;
        }

        [HttpGet]
        [AllowAnonymous]
        [Route("getByDictrict/{dictrictId}")]
        public List<AgentListItemModel> GetByDictrict(int dictrictId)
        {

            var agents = _agentLogic.GetAgentByDictrict(dictrictId);
            var entities = Mapper.Map<List<AgentListItemModel>>(agents);

            return entities;
        }
    }
}