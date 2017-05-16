using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CardProcessingApi.Core
{
    public class Enums
    {
        public enum UserRole : int
        {
            Merchant = 1,
            Agent = 2, 
            Master = 3
        }
    }
}
