using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CardProcessingApi.Web.Models
{
    public class JsonList<T>
    {
        public int TotalItems { get; set; }
        public IEnumerable<T> Data { get; set; }
        public object Metadata { get; set; }
    }
}