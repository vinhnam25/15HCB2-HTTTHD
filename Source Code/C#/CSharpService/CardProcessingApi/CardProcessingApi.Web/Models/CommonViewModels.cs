using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CardProcessingApi.Web.Models
{
    public class CommonViewModels
    {
        public class DistrictListItemModel
        {
            public int DistrictId { get; set; }
            public string DistrictName { get; set; }
        }

        public class ProvinceListItemModel
        {
            public int ProvinceId { get; set; }
            public string ProvinceName { get; set; }
        }

        public class AgentDataFilter
        {
            public int AgentId { get; set; }
            public string AgentName { get; set; }
        }

        public class MerchantTypeModel
        {
            public int TypeId { get; set; }
            public string TypeName { get; set; }
        }
    }
}