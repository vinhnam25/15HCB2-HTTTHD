using System;
using System.Collections.Generic;
using System.Net.Http;
using System.Net.Http.Headers;
using System.Text;
using System.Threading.Tasks;
using CPClient.Core.Models;
using Newtonsoft.Json;

namespace CPClient.Core
{
    public class WebServiceUtils
    {
        public static async Task<T> Get<T>(string apiUrl, string host = "WebServiceUrl", object prams = null)
        {
            T result = default(T);
            AttachAuthorizationToken();

            if (prams != null)
            {
                apiUrl = HttpUtils.ToUrlWithParams(apiUrl, prams);
            }

            var response = await WebEngine.ClientInstance.GetAsync(AppConfigHelper.GetString(host) + apiUrl);
            if (response.IsSuccessStatusCode)
            {
                var content = await response.Content.ReadAsStringAsync();

                if (host.Equals("WebServiceJava"))
                {
                    content = content.Substring(content.IndexOf('['), content.IndexOf(']') - content.IndexOf('[') + 1);
                }
                
                result = JsonConvert.DeserializeObject<T>(content);

            }

            return result;
        }

        public static async Task<T> Post<T>(string apiUrl, object requestData, string host = "WebServiceUrl")
        {
            AttachAuthorizationToken();
            T result;

            StringContent data = new StringContent(JsonConvert.SerializeObject(requestData), new UnicodeEncoding(), "application/json");
            var response = await WebEngine.ClientInstance.PostAsync(AppConfigHelper.GetString(host) + apiUrl, data);

            if (response.IsSuccessStatusCode)
            {
                var content = await response.Content.ReadAsStringAsync();

                if (host.Equals("WebServiceJava"))
                {
                    content = content.Substring(content.IndexOf('['), content.IndexOf(']') - content.IndexOf('[') + 1);
                }

                result = JsonConvert.DeserializeObject<T>(content);
            }
            else
            {
                var content = await response.Content.ReadAsStringAsync();
                throw new ServiceCallException(content);
            }

            return result;
        }

        public static async Task<bool> Post(string apiUrl, object requestData, Action<string> onSuccess = null, Action<string> onFailed = null, string host = "WebServiceUrl")
        {
            AttachAuthorizationToken();
            var response = await WebEngine.ClientInstance.PostAsync(AppConfigHelper.GetString(host) + apiUrl,
                new StringContent(JsonConvert.SerializeObject(requestData), new UnicodeEncoding(), "application/json"));
            var content = await response.Content.ReadAsStringAsync();
            if (response.IsSuccessStatusCode)
            {
                if (onSuccess != null) {
                    onSuccess.Invoke(content);
                }

                return true;
            }
            else
            {
                if (onFailed != null)
                {
                    onFailed.Invoke(content);
                }

                return false;
            }
        }

        public static async Task<bool> Post(string apiUrl,  Action<string> onSuccess = null, Action<string> onFailed = null, string host = "WebServiceUrl")
        {
            AttachAuthorizationToken();
            var response = await WebEngine.ClientInstance.PostAsync(AppConfigHelper.GetString(host) + apiUrl,
                new StringContent(JsonConvert.SerializeObject(null), new UnicodeEncoding(), "application/json"));
            var content = await response.Content.ReadAsStringAsync();
            if (response.IsSuccessStatusCode)
            {
                if (onSuccess != null)
                {
                    onSuccess.Invoke(content);
                }

                return true;
            }
            else
            {
                if (onFailed != null)
                {
                    onFailed.Invoke(content);
                }

                return false;
            }
        }

        private static void AttachAuthorizationToken()
        {
            if(AppContext.CurrentSessionState != null && !string.IsNullOrEmpty(AppContext.CurrentSessionState.AccessToken)) 
            WebEngine.ClientInstance.DefaultRequestHeaders.Authorization = new AuthenticationHeaderValue("Bearer", AppContext.CurrentSessionState.AccessToken);
        }

    }
}
