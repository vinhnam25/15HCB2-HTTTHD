using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CPClient.Core.Models
{
    public class MerchantModel
    {
        public int MerchantId { get; set; }
        public string MerchantName { get; set; }
        public string Address1 { get; set; }
        public string Phone { get; set; }
        public string Email { get; set; }
        public string Status { get; set; }
        public Nullable<int> AgentId { get; set; }
    }

    public class MerchantDetailModel
    {
        public string MerchantId { get; set; }
        public string MerchantName { get; set; }
        public string Address1 { get; set; }
        public string Phone { get; set; }
        public string Email { get; set; }
        public string Fax { get; set; }
        public string Status { get; set; }
        public DateTime ApprovalDate { get; set; }
        public DateTime LastActiveDate { get; set; }
        public string Address2 { get; set; }
        public string Address3 { get; set; }
        public string Zip { get; set; }

        public AgentItemModel Agent { get; set; }
        public ProvinceListItemModel Province { get; set; }
        public DistrictListItemModel District { get; set; }
        public TypeMerchantModel1 MerchantType { get; set; }
    }

    public class MerchantStatusItemModel
    {
        public string MerchantId { get; set; }
        public string MerchantName { get; set; }
        public bool IsActive { get; set; }
    }
}
