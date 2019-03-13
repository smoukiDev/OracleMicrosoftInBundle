using Autofac;
using Autofac.Integration.Mvc;
using Autofac.Integration.WebApi;
using ShopOracleEFDataAccess.Persistance;
using ShopOracleEFDataAccess.Models;
using ShopOracleEFDataAccess.Core;
using System.Web.Http;

namespace ShopAPIEntityFrameworkSix
{
    public static class AutofacConfig
    {
        public static void SetDependencyInjection()
        {
            var container = ConfigurateServices();
            var resolver = new AutofacWebApiDependencyResolver(container);
            GlobalConfiguration.Configuration.DependencyResolver = resolver;
        }

        private static IContainer ConfigurateServices()
        {
            var builder = new ContainerBuilder();

            builder
                .RegisterControllers(typeof(WebApiApplication).Assembly);
            builder
                .RegisterApiControllers(typeof(WebApiApplication).Assembly);
            builder
                .RegisterType<CustomersRepository>()
                .As<IRepository<Customer>>()
                .InstancePerDependency();
            builder
                .RegisterInstance(new ShopDbContext("name=ShopSchema"))
                .SingleInstance();

            return builder.Build();
        }
    }
}