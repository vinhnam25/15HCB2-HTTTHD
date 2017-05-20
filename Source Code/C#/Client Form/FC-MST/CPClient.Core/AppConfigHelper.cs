using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CPClient.Core
{
    public class AppConfigHelper
    {
        private AppConfigHelper()
        {
            
        }

        static AppConfigHelper()
        {
            
        }

        public string GetString(string key)
        {
            string value = ConfigurationManager.AppSettings[key];

            return value;
        }

        private static readonly AppConfigHelper instance = new AppConfigHelper();

        public static AppConfigHelper Instance => instance;
    }
}
