using System.Collections.Generic;
using CardProcessingApi.Data;

namespace CardProcessing.Business.BusinessLogic.MerchantLogic
{
    public interface IMerchantLogic
    {
        CardProcessingApi.Data.Merchant GetMerchantById(int merchantId);
        List<Merchant> GetAll();
        void UnactivateMerchant(int merchantId);
        void ActivateMerchant(int merchantId);
        List<Merchant> GetMerchantByProvince(int provinceId);
        List<Merchant> GetMerchantByDictrict(int dictrictId);
    }
}
