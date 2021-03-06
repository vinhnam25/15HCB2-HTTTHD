﻿using System.Web.Http;
using System.Web.Mvc;
using System.Web.Optimization;
using System.Web.Routing;
using Autofac;
using Autofac.Integration.Mvc;
using Autofac.Integration.WebApi;
using CardProcessingApi.Web.Framework;
using CardProcessingApi.Web.Framework.Integration;
using CardProcessingApi.Web.Framework.ModelMapping;

namespace CardProcessingApi.Web
{
    public class WebApiApplication : System.Web.HttpApplication
    {
        protected void Application_Start()
        {
            AreaRegistration.RegisterAllAreas();
            GlobalConfiguration.Configure(WebApiConfig.Register);
            FilterConfig.RegisterGlobalFilters(GlobalFilters.Filters);
            RouteConfig.RegisterRoutes(RouteTable.Routes);
            BundleConfig.RegisterBundles(BundleTable.Bundles);

            var builder = new ContainerBuilder();
            var config = GlobalConfiguration.Configuration;

            // Register dependencies
            DependencyRegister.Register(builder);

            var container = builder.Build();

            // Integrate with AutoFac container
            config.DependencyResolver = new AutofacWebApiDependencyResolver(container);
            DependencyResolver.SetResolver(new AutofacDependencyResolver(container));
            CommonServiceLocatorIntegration.IntegrateWithAutoFac(container);

            // Config Mapping
            AutoMapperConfiguration.ConfigMapping();
        }
    }
}
