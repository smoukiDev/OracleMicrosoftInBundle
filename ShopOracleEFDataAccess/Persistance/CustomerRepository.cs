using ShopAPIEntityFrameworkSix.Core;
using ShopAPIEntityFrameworkSix.Models;
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Threading.Tasks;
using System.Web;

namespace ShopAPIEntityFrameworkSix.Persistance
{
    public class CustomersRepository : IRepository<CUSTOMER>
    {
        private readonly ShopDbContext context;

        public CustomersRepository(string connectionString)
        {
            this.context = new ShopDbContext(connectionString);
        }

        public async Task<IEnumerable<CUSTOMER>> GetAllAsync()
        {
            var result = this.context.CUSTOMERS.AsNoTracking();
            return await result.ToListAsync();
        }
    }
}