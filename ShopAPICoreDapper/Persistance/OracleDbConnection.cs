using System.Data;
using Oracle.ManagedDataAccess.Client;
using ShopAPICoreDapper.Core;

namespace ShopAPICoreDapper.Persistance
{
    public class OracleDbConnection : IOracleDbConnection
    {
        private readonly string connectionString;

        public OracleDbConnection(string connectionString)
        {
            this.connectionString = connectionString;
        }

        public IDbConnection GetConnection()
        {
            return new OracleConnection(connectionString);
        }
    }
}
