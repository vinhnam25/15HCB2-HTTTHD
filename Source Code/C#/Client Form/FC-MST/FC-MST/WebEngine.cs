using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Http;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms.Layout;

namespace FC_MST
{
    class WebEngine
    {
        private static readonly Lazy<HttpClient> HttpClient = new Lazy<HttpClient>(() => new HttpClient()); 

        public static HttpClient ClientInstance => HttpClient.Value;
    }
}
