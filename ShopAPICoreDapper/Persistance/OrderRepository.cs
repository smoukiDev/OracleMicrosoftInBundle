using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using ShopAPICoreDapper.Core;
using ShopAPICoreDapper.Models;
using Dapper;

namespace ShopAPICoreDapper.Persistance
{
    public class OrderRepository : IRepository<Order>
    {
        private readonly IOracleDbConnection oracleConnection;

        public OrderRepository(IOracleDbConnection oracleConnection)
        {
            this.oracleConnection = oracleConnection;
        }

        public async Task<IEnumerable<Order>> GetAllAsync()
        {
            using (var connection = this.oracleConnection.GetConnection())
            {
                string query = "SELECT * FROM Orders";
                connection.Open();
                var result = await connection.QueryAsync<Order>(query);
                return result.ToList();
            }
        }
    }
}
