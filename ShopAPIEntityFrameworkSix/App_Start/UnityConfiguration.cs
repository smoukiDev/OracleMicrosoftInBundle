using System.Web.Http;
using Unity;
using ShopOracleEFDataAccess.Core;
using ShopOracleEFDataAccess.Models;
using ShopOracleEFDataAccess.Persistance;

namespace ShopAPIEntityFrameworkSix
{
    public class UnityConfiguration
    {
        public IUnityContainer ConfigurateContainer()
        {
            var container = new UnityContainer()
                .RegisterInstance(new ShopDbContext("name=ShopSchema"))
                .RegisterType<IRepository<Customer>, CustomersRepository>();

            return container;
        }
    }
}