﻿using System;
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

        [Route("search-with-filter")]
        public List<AgentListItemModel> SearchWithFilter([FromBody] AgentSearchCriteria searchCriteria)
        {
            var queryResult = _agentLogic.SearchAgent(searchCriteria);
            var mappedResult = Mapper.Map<List<AgentListItemModel>>(queryResult);

            return mappedResult;
        }

        public PagedList<AgentListItemModel> SearchWithFilter([FromBody] AgentSearchCriteria searchCriteria,
            PagingFilter pagingFilter)
        {
            var queryResult = _agentLogic.SearchAgent(searchCriteria, pagingFilter);

            var mappedResult = Mapper.Map<PagedList<AgentListItemModel>>(queryResult);

            return mappedResult;
        }
    }
}