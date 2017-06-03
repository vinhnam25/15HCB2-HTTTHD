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
        public static async Task<T> Get<T>(string apiUrl)
        {
            T result = default(T);
            AttachAuthorizationToken();
            var response = await WebEngine.ClientInstance.GetAsync(AppConfigHelper.GetString("WebServiceUrl") + apiUrl);
            if (response.IsSuccessStatusCode)
            {
                var content = await response.Content.ReadAsStringAsync();
                result = JsonConvert.DeserializeObject<T>(content);
            }

            return result;
        }

        public static async Task<T> Post<T>(string apiUrl, object requestData)
        {
            AttachAuthorizationToken();
            T result;
            var response =
                await
                    WebEngine.ClientInstance.PostAsync(AppConfigHelper.GetString("WebServiceUrl") + apiUrl,
                        new StringContent(JsonConvert.SerializeObject(requestData), new UnicodeEncoding(), "application/json"));

            if (response.IsSuccessStatusCode)
            {
                var content = await response.Content.ReadAsStringAsync();
                result = JsonConvert.DeserializeObject<T>(content);
            }
            else
            {
                var content = await response.Content.ReadAsStringAsync();
                throw new ServiceCallException(content);
            }

            return result;
        }

        public static async Task<bool> Post(string apiUrl, object requestData, Action<string> onSuccess = null, Action<string> onFailed = null)
        {
            AttachAuthorizationToken();
            var response = await WebEngine.ClientInstance.PostAsync(AppConfigHelper.GetString("WebServiceUrl") + apiUrl,
                new StringContent(JsonConvert.SerializeObject(requestData), new UnicodeEncoding(), "application/json"));
            var content = await response.Content.ReadAsStringAsync();
            if (response.IsSuccessStatusCode)
            {
                onSuccess?.Invoke(content);
                return true;
            }
            else
            {
                onFailed?.Invoke(content);
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
