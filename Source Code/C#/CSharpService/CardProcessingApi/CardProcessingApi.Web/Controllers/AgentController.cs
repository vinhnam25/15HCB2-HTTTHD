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
using CardProcessingApi.Core.Paging;
using CardProcessingApi.Core.Search;
using CardProcessingApi.Data;
using CardProcessingApi.Web.Framework;
using CardProcessingApi.Web.Framework.Extension;
using CardProcessingApi.Web.Framework.Filters;
using CardProcessingApi.Web.Models;
using UserRole = CardProcessingApi.Core.UserRole;

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
        //[RoleAuthorize(UserRole.Master)]
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
        //[RoleAuthorize(Enums.UserRole.Master)]
        [Route("update")]
        public IHttpActionResult UpdateAgent(Agent model)
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
        //[RoleAuthorize(Enums.UserRole.Master)]
        [Route("delete")]
        public IHttpActionResult DeleteAgent(Agent model)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState.FirstError());
            }


            var entity = AutoMapper.Mapper.Map<Agent>(model);
            _agentLogic.Delete(entity);

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

        [HttpPost]
        [Route("search")]
        public List<AgentListItemModel> SearchById_Name(ConditionFilterAgent obj)
        {
            var model = _agentLogic.SearchAgent(obj.id, obj.name);
            var entity = Mapper.Map<List<AgentListItemModel>>(model);

            return entity;
        }

                [HttpPost]
         [RoleAuthorize(UserRole.Master)]
         [Route("unactive/{agentId}")]
         public IHttpActionResult UnactivateAgent(int agentId)
         {
             _agentLogic.UnactivateAgent(agentId);
             return Ok();
         }
 
         [HttpPost]
         [RoleAuthorize(UserRole.Master)]
         [Route("active/{agentId}")]
         public IHttpActionResult ActivateAgent(int agentId)
         {
             _agentLogic.ActivateAgent(agentId);
             return Ok();
         }


        [Route("search/with-filter")]
        //[RoleAuthorize(UserRole.Master)]
        [HttpGet]
        public List<AgentListItemModel> SearchWithFilter([FromUri] AgentSearchCriteria searchCriteria)
        {
            var queryResult = _agentLogic.SearchAgent(searchCriteria);
            var mappedResult = Mapper.Map<List<AgentListItemModel>>(queryResult);

            return mappedResult;
        }

        [Route("search/paging/with-filter")]
        [RoleAuthorize(UserRole.Master)]
        [HttpGet]
        public IList<AgentListItemModel> SearchWithFilter([FromUri] AgentSearchCriteria searchCriteria,
            [FromUri]PagingFilter pagingFilter)
        {
            if (searchCriteria == null || pagingFilter == null)
            {
                return new PagedList<AgentListItemModel>(new List<AgentListItemModel>(), 0, 0);
            }

            var queryResult = _agentLogic.SearchAgent(searchCriteria, pagingFilter);

            var mappedResult = queryResult.ToModelList<Agent, AgentListItemModel>();

            return mappedResult;
        }
    }
}