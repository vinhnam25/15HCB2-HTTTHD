using System.Collections.Generic;
using CardProcessingApi.Data;

namespace CardProcessing.Business.BusinessLogic.AgentLogic
{
    public interface IAgentLogic
    {
        CardProcessingApi.Data.Agent GetAgentById(int agentId);

        List<Agent> GetAgentByProvince(int provinceId);


        List<Agent> GetAgentByDictrict(int dictrictId);
        void Add(Agent agent);

        void Update(Agent agent);

        List<Agent> GetAll();
    }
}
