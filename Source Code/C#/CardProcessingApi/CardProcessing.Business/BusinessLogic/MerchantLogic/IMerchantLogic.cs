using System.Collections.Generic;
using CardProcessingApi.Data;

namespace CardProcessing.Business.BusinessLogic.MerchantLogic
{
    public interface IMerchantLogic
    {
        List<Merchant> GetAll();
        void UnactivateMerchant(int merchantId);
        void ActivateMerchant(int merchantId);
    }
}
