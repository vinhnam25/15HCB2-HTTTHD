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

        Merchant GetLastestMerchant();
        void Add(Merchant agent);
        void Update(Merchant agent);
        void Delete(Merchant agent);
        void DeleteLastest();
        List<Merchant> GetAll();
        List<Merchant> GetBy(int a, int b);
        List<Merchant> GetStatusManaged(int type);
        void UnactivateMerchant(int merchantId);
        void ActivateMerchant(int merchantId);
        List<Merchant> GetMerchantByProvince(int provinceId);
        List<Merchant> GetMerchantByDictrict(int dictrictId);
        int AddManaged(int MerchantId, int AgentId);
    }
}
