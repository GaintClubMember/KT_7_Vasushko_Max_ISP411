//------------------------------------------------------------------------------
// <auto-generated>
//     Этот код создан по шаблону.
//
//     Изменения, вносимые в этот файл вручную, могут привести к непредвиденной работе приложения.
//     Изменения, вносимые в этот файл вручную, будут перезаписаны при повторном создании кода.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Master_Pol.Data
{
    using System;
    using System.Collections.Generic;
    
    public partial class Order
    {
        public int id { get; set; }
        public int ProductId { get; set; }
        public int CompanyId { get; set; }
        public string Count { get; set; }
        public System.DateTime Date { get; set; }
    
        public virtual PartnerCompany PartnerCompany { get; set; }
        public virtual Product Product { get; set; }
    }
}
