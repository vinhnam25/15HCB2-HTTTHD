using System;
using System.Net.Http;

namespace CPClient.Core
{
    public class WebEngine
    {
        private static readonly Lazy<HttpClient> HttpClient = new Lazy<HttpClient>(() => new HttpClient()); 

        public static HttpClient ClientInstance => HttpClient.Value;
    }
}
