﻿//------------------------------------------------------------------------------
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
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class DB_Entities : DbContext
    {
        private static DB_Entities _context;
        public static DB_Entities GetContext()
        {
            if(_context == null)
            {
                _context = new DB_Entities();
            }
            return _context;
        }
        public DB_Entities()
            : base("name=DB_Entities")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<City> City { get; set; }
        public virtual DbSet<Order> Order { get; set; }
        public virtual DbSet<Partner> Partner { get; set; }
        public virtual DbSet<PartnerCompany> PartnerCompany { get; set; }
        public virtual DbSet<PartnerType> PartnerType { get; set; }
        public virtual DbSet<Product> Product { get; set; }
        public virtual DbSet<ProductName> ProductName { get; set; }
        public virtual DbSet<ProductType> ProductType { get; set; }
        public virtual DbSet<Region> Region { get; set; }
        public virtual DbSet<Street> Street { get; set; }
        public virtual DbSet<sysdiagrams> sysdiagrams { get; set; }
    }
}
