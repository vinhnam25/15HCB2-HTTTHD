using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Net.Http;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using Newtonsoft.Json;

namespace FC_MST
{
    public class WebServiceUtils
    {
        public delegate void CallBack();

        public event CallBack Success;

        public static async Task<SessionState> Login()
        {
            var nvc = new List<KeyValuePair<string, string>>();
            nvc.Add(new KeyValuePair<string, string>("grant_type", "password"));
            nvc.Add(new KeyValuePair<string, string>("username", "demo01"));
            nvc.Add(new KeyValuePair<string, string>("password", "123456"));
            var req = new HttpRequestMessage(HttpMethod.Post, "http://localhost:49231/token") { Content = new FormUrlEncodedContent(nvc) };
            WebEngine.ClientInstance.Timeout = TimeSpan.FromSeconds(10);
            var res = await WebEngine.ClientInstance.SendAsync(req);
            
            if (res.IsSuccessStatusCode)
            {
                var content = await res.Content.ReadAsStringAsync();
                return JsonConvert.DeserializeObject<SessionState>(content);
            }

            return null;
        }

        protected virtual void OnSuccess()
        {
            Success?.Invoke();
        }

    }

    public class SessionState
    {
        [JsonProperty(propertyName:"access_token")]
        public string AccessToken { get; set; }
        [JsonProperty(propertyName: "token_type")]
        public string TokenType { get; set; }
        [JsonProperty(propertyName: "expires_in")]
        public string ExpiresIn { get; set; }
        public string UserName { get; set; }
        [JsonProperty(propertyName: ".issued")]
        public DateTime Issued { get; set; }
        [JsonProperty(propertyName: ".expires")]
        public DateTime Expires { get; set; }

        public SessionState()
        {
            var session = WebServiceUtils.Login().Result;
            AccessToken = session.AccessToken;
        }
    }


}
