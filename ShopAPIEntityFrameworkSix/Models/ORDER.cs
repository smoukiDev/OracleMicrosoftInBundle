namespace ShopAPIEntityFrameworkSix.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("SHOP.ORDERS")]
    public partial class ORDER
    {
        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        public int ID { get; set; }

        [StringLength(200)]
        public string ITEM { get; set; }

        public decimal? PRICE { get; set; }
    }
}
