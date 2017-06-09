using CardProcessingApi.Data;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CardProcessing.Business.BusinessLogic.MerchantLogic
{
    public interface IMerchantLogic
    {
        Merchant GetMerchantById(int merchantId);
        void Add(Merchant agent);
        void Update(Merchant agent);
        List<Merchant> GetAll();
        List<Merchant> GetBy(int a, int b);
        void UnactivateMerchant(int merchantId);
        void ActivateMerchant(int merchantId);
        List<Merchant> GetMerchantByProvince(int provinceId);
        List<Merchant> GetMerchantByDictrict(int dictrictId);
    }
}
