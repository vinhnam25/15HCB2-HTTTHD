//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace CardProcessingApi.Data
{
    using System;
    using System.Collections.Generic;
    
    public partial class MerchantInvitation : BaseEntity
    {
        public int FromMerchantId { get; set; }
        public string NewMerchantName { get; set; }
        public string InvitationDescription { get; set; }
        public System.DateTime InvitationDate { get; set; }
        public bool IsResolved { get; set; }
    
        public virtual Merchant Merchant { get; set; }
    }
}
