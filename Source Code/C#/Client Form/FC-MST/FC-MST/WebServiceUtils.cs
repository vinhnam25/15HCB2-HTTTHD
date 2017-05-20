using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Net.Http;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using CPClient.Core;
using CPClient.Core.Models;
using Newtonsoft.Json;

namespace FC_MST
{
    public class WebServiceUtils
    {
        public delegate void CallBack(SessionState sessionState);

        public static event CallBack Success;
        public static event CallBack Failed;

        public static async Task<bool> Login(string userName, string password)
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
                    AppConfigHelper.Instance.GetString("WebServiceUrl") + "/token")
                {
                    Content = new FormUrlEncodedContent(nvc)
                };
                var res = await WebEngine.ClientInstance.SendAsync(req);

                if (res.IsSuccessStatusCode)
                {
                    var content = await res.Content.ReadAsStringAsync();
                    SessionState sessionState = JsonConvert.DeserializeObject<SessionState>(content);
                    AppContext.CurrentSessionState = sessionState;
                    OnSuccess(sessionState);

                    return true;
                }

                OnFailed(null);
                return false;
            }
            catch (Exception ex)
            {
                // ignored
                return false;
            }
        }

        protected static void OnSuccess(SessionState sessionState)
        {
            Success?.Invoke(sessionState);
        }

        private static void OnFailed(SessionState sessionstate)
        {
            Failed?.Invoke(sessionstate);
        }
    }
}
