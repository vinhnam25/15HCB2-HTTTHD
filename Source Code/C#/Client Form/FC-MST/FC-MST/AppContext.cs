using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace FC_MST
{
    public class AppContext
    {
        private static readonly Lazy<SessionState> _sessionState = new Lazy<SessionState>(() => new SessionState());

        public static SessionState Current => _sessionState.Value;
    }
}
