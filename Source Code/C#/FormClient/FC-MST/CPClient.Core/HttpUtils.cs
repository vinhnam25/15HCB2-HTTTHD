using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CPClient.Core
{
    public static class HttpUtils
    {
        public static string ToUrlWithParams(string url, object prams)
        {
            var result = new List<string>();
            foreach (PropertyDescriptor property in TypeDescriptor.GetProperties(prams))
            {
                result.Add(property.Name + "=" + property.GetValue(prams));
            }

            var stringParams = string.Join("&", result);

            return url + "?" + stringParams;
        }
    }
}
