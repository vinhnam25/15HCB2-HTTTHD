using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CardProcessingApi.Core.Paging
{
    public class PagingFilter
    {
        public int PageIndex { get; set; }
        public int PageSize { get; set; }
    }
}
