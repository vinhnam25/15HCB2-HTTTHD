using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CardProcessingApi.Core.Search
{
    public abstract class BaseSearchCriteria
    {
        private string _id;
        private string _name;

        public string Id
        {
            get { return _id; }
            set { _id = value == null? null: value.ToLowerInvariant(); }
        }

        public string Name
        {
            get { return _name; }
            set { _name = value == null? null: value.ToLowerInvariant(); }
        }
    }
}
