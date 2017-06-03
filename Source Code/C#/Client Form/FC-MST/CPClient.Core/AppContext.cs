using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.NetworkInformation;
using System.Text;
using System.Threading.Tasks;
using CPClient.Core.Models;

namespace CPClient.Core
{
    public class AppContext
    {
        public static SessionState CurrentSessionState { get; set; }
    }
}
