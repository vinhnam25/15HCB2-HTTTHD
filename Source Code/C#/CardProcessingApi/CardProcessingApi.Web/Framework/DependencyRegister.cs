using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Reflection;
using System.Web;
using Autofac;
using Autofac.Integration.WebApi;
using CardProcessing.Business.Services;
using CardProcessing.Business.Services.Account;
using CardProcessing.Business.Services.Location;
using CardProcessingApi.Data;
using CardProcessingApi.DataAccess;
using CardProcessingApi.Web.Models;

namespace CardProcessingApi.Web.Framework
{
    public class DependencyRegister
    {
        public static void Register(ContainerBuilder builder)
        {
            builder.RegisterGeneric(typeof(GenericRepository<>)).As(typeof(IGenericRepository<>)).InstancePerLifetimeScope();

            builder.RegisterApiControllers(Assembly.GetExecutingAssembly());
            builder.RegisterType<ValueService>().As<IValueService>().InstancePerLifetimeScope();
            builder.RegisterType<AccountService>().As<IAccountService>().InstancePerLifetimeScope();
            builder.RegisterType<LocationService>().As<ILocationService>().InstancePerLifetimeScope();
            builder.RegisterType<CardProcessingEntities>().As<DbContext>().InstancePerLifetimeScope();


        }
    }
}