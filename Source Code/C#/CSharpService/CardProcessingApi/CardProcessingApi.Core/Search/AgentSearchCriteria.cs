using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CardProcessingApi.Core.Search
{
    public class AgentSearchCriteria: BaseSearchCriteria
    {
        private string _district;
        private string _province;

        public string Province
        {
            get { return _province; }
            set { _province = value == null? null: value.ToLowerInvariant(); }
        }

        public string District
        {
            get { return _district; }
            set { _district = value == null? null: value.ToLowerInvariant(); }
        }

        public bool? IsActive { get; set; }
    }
}
