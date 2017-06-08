using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace CardProcessingApi.Web.Models
{
    public class MerchantBindingModels
    {
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