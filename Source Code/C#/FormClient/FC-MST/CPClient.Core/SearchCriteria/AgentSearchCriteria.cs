using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CPClient.Core.SearchCriteria
{
    public class AgentSearchCriteria
    {
        public string Id { get; set; }
        public string Name { get; set; }
        public string Province { get; set; }
        public string District { get; set; }
        public bool IsActive { get; set; }
    }

    public class MerchantSearchCriteria
    {
        public string Id { get; set; }
        public string Name { get; set; }
        public string Province { get; set; }
        public string District { get; set; }
        public bool IsActive { get; set; }
    }
}
