using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CPClient.Core.Models
{
    public class AgentModels
    {
        public class CreateAgentBindingModel
        {
            public string AgentName { get; set; }
            public string Address { get; set; }
            public string Phone { get; set; }
            public string Fax { get; set; }
            public string Zip { get; set; }
            public string Email { get; set; }
            public int ProvinceId { get; set; }
            public int DistrictId { get; set; }
        }
    }
}
