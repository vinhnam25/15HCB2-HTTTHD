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
    
    public partial class Agent : BaseEntity
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Agent()
        {
            this.Merchants = new HashSet<Merchant>();
        }
    
        public int AgentId { get; set; }
        public string AgentName { get; set; }
        public int ProvinceId { get; set; }
        public int DistrictId { get; set; }
        public string Address { get; set; }
        public bool IsActive { get; set; }
        public Nullable<int> OwnerId { get; set; }
        public string Phone { get; set; }
        public string Fax { get; set; }
        public string Zip { get; set; }
        public string Email { get; set; }
    
        public virtual District District { get; set; }
        public virtual Province Province { get; set; }
        public virtual User User { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Merchant> Merchants { get; set; }
    }
}
