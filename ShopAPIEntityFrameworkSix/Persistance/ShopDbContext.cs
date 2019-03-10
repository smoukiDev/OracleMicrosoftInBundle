namespace ShopAPIEntityFrameworkSix.Persistance
{
    using System;
    using System.Data.Entity;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Linq;
    using ShopAPIEntityFrameworkSix.Models;

    public partial class ShopDbContext : DbContext
    {
        public ShopDbContext()
            : base("name=ShopSchema")
        {
        }

        public virtual DbSet<CUSTOMER> CUSTOMERS { get; set; }
        public virtual DbSet<ORDER> ORDERS { get; set; }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            modelBuilder.Entity<CUSTOMER>()
                .Property(e => e.FIRSTNAME)
                .IsUnicode(false);

            modelBuilder.Entity<CUSTOMER>()
                .Property(e => e.LASTNAME)
                .IsUnicode(false);

            modelBuilder.Entity<ORDER>()
                .Property(e => e.ITEM)
                .IsUnicode(false);

            modelBuilder.Entity<ORDER>()
                .Property(e => e.PRICE)
                .HasPrecision(38, 0);
        }
    }
}
