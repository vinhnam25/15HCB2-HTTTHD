using Autofac;
using Autofac.Integration.WebApi;
using CardProcessing.Business.BusinessLogic;
using CardProcessing.Business.BusinessLogic.Account;
using CardProcessing.Business.BusinessLogic.AgentLogic;
using CardProcessing.Business.BusinessLogic.Location;
using CardProcessing.Business.BusinessLogic.MerchantLogic;
using CardProcessingApi.Data;
using CardProcessingApi.DataAccess;
using System.Data.Entity;
using System.Reflection;

namespace CardProcessingApi.Web.Framework
{
    public class DependencyRegister
    {
        public static void Register(ContainerBuilder builder)
        {
            builder.RegisterGeneric(typeof(GenericRepository<>)).As(typeof(IGenericRepository<>)).InstancePerLifetimeScope();

            builder.RegisterApiControllers(Assembly.GetExecutingAssembly());
            builder.RegisterType<UserLogic>().As<IUserLogic>().InstancePerLifetimeScope();
            builder.RegisterType<AgentLogic>().As<IAgentLogic>().InstancePerLifetimeScope();
            builder.RegisterType<LocationLogic>().As<ILocationLogic>().InstancePerLifetimeScope();
            builder.RegisterType<CardProcessingEntities>().As<DbContext>().InstancePerLifetimeScope();
            builder.RegisterType<WorkContext>().As<IWorkContext>().InstancePerLifetimeScope();
            builder.RegisterType<UnitOfWork>().As<IUnitOfWork>().InstancePerLifetimeScope();
            builder.RegisterType<ConfigurationLogic>().As<IConfigurationLogic>().InstancePerLifetimeScope();
        }
    }
}