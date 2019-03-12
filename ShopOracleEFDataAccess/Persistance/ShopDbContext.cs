namespace ShopOracleEFDataAccess.Persistance
{
    using System;
    using System.Data.Entity;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Linq;
    using ShopOracleEFDataAccess.Models;

    public class ShopDbContext : DbContext
    {
        public ShopDbContext(string connectionName)
            : base(connectionName)
        {
        }

        public virtual DbSet<Customer> Customers { get; set; }
        public virtual DbSet<Order> Orders { get; set; }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            SetCustomersMapping(modelBuilder);
            SetOrderMapping(modelBuilder);
        }

        private static void SetOrderMapping(DbModelBuilder modelBuilder)
        {
            modelBuilder.Entity<Order>()
                .Property(e => e.Id)
                .HasColumnName("ID");

            modelBuilder.Entity<Order>()
                .Property(e => e.Item)
                .HasColumnName("ITEM")
                .IsUnicode(false);

            modelBuilder.Entity<Order>()
                .Property(e => e.Price)
                .HasColumnName("PRICE")
                .HasPrecision(38, 0);
        }

        private static void SetCustomersMapping(DbModelBuilder modelBuilder)
        {
            modelBuilder.Entity<Customer>()
                .Property(e => e.Id)
                .HasColumnName("ID");

            modelBuilder.Entity<Customer>()
                .Property(e => e.FirstName)
                .HasColumnName("FIRSTNAME")
                .IsUnicode(false);

            modelBuilder.Entity<Customer>()
                .Property(e => e.LastName)
                .HasColumnName("LASTNAME")
                .IsUnicode(false);
        }
    }
}
