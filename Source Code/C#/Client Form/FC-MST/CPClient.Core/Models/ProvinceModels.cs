using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CPClient.Core.Models
{
    public class ProvinceModels
    {
        public class ProvinceListItemModel 
        {
            public int ProvinceId { get; set; }
            public string ProvinceName { get; set; }

            public override string ToString()
            {
                return ProvinceName;
            }
        }
    }
}
