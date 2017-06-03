using System;
using System.Collections.Generic;
using System.Dynamic;
using System.Linq;
using System.Web;

namespace CardProcessingApi.Web.Models
{
    public class ConfigurationModels
    {
        public class ListViewConfigurationModel
        {
            public string ConfigurationName { get; set; }
            public string ConfigurationValue { get; set; }
        }
    }
}