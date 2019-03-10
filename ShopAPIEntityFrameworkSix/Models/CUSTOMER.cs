namespace ShopAPIEntityFrameworkSix.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("SHOP.CUSTOMERS")]
    public partial class CUSTOMER
    {
        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        public int ID { get; set; }

        [StringLength(255)]
        public string FIRSTNAME { get; set; }

        [StringLength(255)]
        public string LASTNAME { get; set; }
    }
}
