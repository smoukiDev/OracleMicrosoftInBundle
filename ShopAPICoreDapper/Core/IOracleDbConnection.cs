using System.Data;

namespace ShopAPICoreDapper.Core
{
    public interface IOracleDbConnection
    {
        IDbConnection GetConnection();
    }
}
