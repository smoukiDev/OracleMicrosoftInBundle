using ShopOracleEFDataAccess.Core;
using ShopOracleEFDataAccess.Models;
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Threading.Tasks;
using System.Web;

namespace ShopOracleEFDataAccess.Persistance
{
    public class CustomersRepository : IRepository<Customer>
    {
        private readonly ShopDbContext context;

        public CustomersRepository(ShopDbContext context)
        {
            this.context = context;
        }

        public async Task<IEnumerable<Customer>> GetAllAsync()
        {
            var result = this.context.Customers.AsNoTracking();
            return await result.ToListAsync();
        }
    }
}