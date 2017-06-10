using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CardProcessingApi.Core.Paging
{
    public class PagingFilter
    {
        private int _pageIndex = 1;
        private int _pageSize = 10;

        public int PageIndex
        {
            get { return _pageIndex; }
            set
            {
                if (value < 1)
                {
                    _pageIndex = 1;
                }
                else
                {
                    _pageIndex = value;
                }
                
            }
        }

        public int PageSize
        {
            get { return _pageSize; }
            set
            {
                if (value < 1)
                {
                    _pageSize = 1;
                }
                else
                {
                    _pageSize = value;
                }
                
            }
        }
    }
}
