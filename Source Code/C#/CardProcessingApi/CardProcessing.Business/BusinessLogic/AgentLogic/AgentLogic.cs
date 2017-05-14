using System;
using CardProcessingApi.DataAccess;

namespace CardProcessing.Business.BusinessLogic.AgentLogic
{
    public class AgentLogic:IAgentLogic
    {
        private readonly IGenericRepository<CardProcessingApi.Data.Agent> _agentRepository;

        public AgentLogic(IGenericRepository<CardProcessingApi.Data.Agent> agentRepository)
        {
            this._agentRepository = agentRepository;
        }

        public CardProcessingApi.Data.Agent GetAgentById(int agentId)
        {
            throw new NotImplementedException();
        }

        public void Add(CardProcessingApi.Data.Agent agent)
        {
            throw new NotImplementedException();
        }
    }
}
