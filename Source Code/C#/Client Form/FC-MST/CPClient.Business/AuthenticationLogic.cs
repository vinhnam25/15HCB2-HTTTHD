using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Http;
using System.Text;
using System.Threading.Tasks;
using CPClient.Core;
using CPClient.Core.Models;
using Newtonsoft.Json;

namespace CPClient.Business
{
    public class AuthenticationLogic
    {
        public static async Task<bool> Login(string userName, string password, Action<string> onSuccess = null, Action<string> onFailed = null)
        {
            try
            {
                var nvc = new List<KeyValuePair<string, string>>
                {
                    new KeyValuePair<string, string>("grant_type", "password"),
                    new KeyValuePair<string, string>("username", userName),
                    new KeyValuePair<string, string>("password", password)
                };
                var req = new HttpRequestMessage(HttpMethod.Post,
                    AppConfigHelper.GetString("WebServiceUrl") + "/token")
                {
                    Content = new FormUrlEncodedContent(nvc)
                };
                var res = await WebEngine.ClientInstance.SendAsync(req);
                var content = await res.Content.ReadAsStringAsync();

                if (res.IsSuccessStatusCode)
                {
                    
                    SessionState sessionState = JsonConvert.DeserializeObject<SessionState>(content);
                    AppContext.CurrentSessionState = sessionState;
                    if(onSuccess != null) {
                        onSuccess.Invoke(content);
                    }

                    return true;
                }

                if (onFailed != null)  {
                    onFailed.Invoke(content);
                }
                
                return false;
            }
            catch (Exception ex)
            {
                // ignored
                if (onFailed !=  null) {
                    onFailed.Invoke(ex.Message);
                }
                return false;
            }
        }
    }
}
