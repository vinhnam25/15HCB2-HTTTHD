using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Autofac;
using Autofac.Extras.CommonServiceLocator;
using Microsoft.Practices.ServiceLocation;

namespace CardProcessingApi.Web.Framework.Integration
{
    public class CommonServiceLocatorIntegration
    {
        public static void IntegrateWithAutoFac(IContainer container)
        {
            var csl = new AutofacServiceLocator(container);
            ServiceLocator.SetLocatorProvider(() => csl);
        }
    }
}