using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace CardProcessingApi.Web.Models
{
    public class IDTransfer
    {
        public int Id { get; set; }
    }

    public class UpdateManagedMerchant
    {
        public int MerchantId { get; set; }
        public int AgentId { get; set; }
    }
    public class MerchantBindingModel
    {
        public string action { get; set; }
        public string value { get; set; }
    }

    public class MerchantModel
    {
        public string MerchantId { get; set; }
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

        public CommonViewModels.AgentDataFilter Agent { get; set; }
        public CommonViewModels.ProvinceListItemModel Province { get; set; }
        public CommonViewModels.DistrictListItemModel District { get; set; }
        public CommonViewModels.MerchantTypeModel MerchantType { get; set; }
    }

    public class CreateMerchantBindingModel
    {
        [Required]
        public string MerchantName { get; set; }
        [Required]
        public string Address { get; set; }
        [Phone]
        public string Phone { get; set; }
        public string Fax { get; set; }
        public string Zip { get; set; }
        [EmailAddress]
        public string Email { get; set; }
        //public string AgentId { get; set; }
        public int ProvinceId { get; set; }
        public int DistrictId { get; set; }
    }

    public class MerchantListItemModel
    {
        public string MerchantId { get; set; }
        public string MerchentName { get; set; }
        public string Phone { get; set; }
        public string Fax { get; set; }
        public string Email { get; set; }
        public CommonViewModels.ProvinceListItemModel Province { get; set; }
        public CommonViewModels.DistrictListItemModel District { get; set; }
        public bool IsActive { get; set; }
    }
}