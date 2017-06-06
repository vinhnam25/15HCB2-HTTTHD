using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CardProcessing.Business.BusinessLogic.MerchantLogic
{
    public interface IMerchantLogic
    {
        void UnactivateMerchant(int agentId);
        void ActivateMerchant(int agentId);
    }
}
