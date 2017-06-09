using System.Collections.Generic;
using CardProcessingApi.Core.Paging;
using CardProcessingApi.Core.Search;
using CardProcessingApi.Data;

namespace CardProcessing.Business.BusinessLogic.AgentLogic
{
    public interface IAgentLogic
    {
        CardProcessingApi.Data.Agent GetAgentById(int agentId);
        void Add(Agent agent);

        void Update(Agent agent);
        List<Agent> GetAll();
        List<Agent> SearchAgent(int id, string name);
        IList<Agent> SearchAgent(AgentSearchCriteria searchCriteria);
        IPagedList<Agent> SearchAgent(AgentSearchCriteria searchCriteria, PagingFilter pagingFilter);
    }
}
