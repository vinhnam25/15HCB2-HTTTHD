using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using CPClient.Core;
using CPClient.Core.Models;

namespace CPClient.Business
{
    public class AgentLogic
    {
        public static async Task<List<AgentListItemModel>> FetchAllAgent()
        {
            var agents = await WebServiceUtils.Get<List<AgentListItemModel>>("/api/agent/all");
            return agents;
        }

        public static async Task<AgentListItemModel> FetchAgentById(string id)
        {
            var agent = await WebServiceUtils.Get<AgentListItemModel>("/api/agent/" + id);
            return agent;
        }
    }
}
