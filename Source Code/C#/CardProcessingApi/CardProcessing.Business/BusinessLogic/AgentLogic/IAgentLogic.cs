namespace CardProcessing.Business.BusinessLogic.AgentLogic
{
    public interface IAgentLogic
    {
        CardProcessingApi.Data.Agent GetAgentById(int agentId);
        void Add(CardProcessingApi.Data.Agent agent);
    }
}
