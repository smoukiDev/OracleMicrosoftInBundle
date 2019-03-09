using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.AccessControl;
using System.Threading.Tasks;

namespace ShopAPICoreDapper.Models
{
    public class Order
    {
        public int Id { get; set; }

        public string Item { get; set; }

        public decimal Price { get; set; }
    }
}
