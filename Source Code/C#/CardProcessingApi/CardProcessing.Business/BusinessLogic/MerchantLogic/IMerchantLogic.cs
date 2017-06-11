using System.Collections.Generic;
using CardProcessingApi.Core.Paging;
using CardProcessingApi.Core.Search;
using CardProcessingApi.Data;

namespace CardProcessing.Business.BusinessLogic.MerchantLogic
{
    public interface IMerchantLogic
    {
        Merchant GetMerchantById(int merchantId);
        void Add(Merchant agent);
        void Update(Merchant agent);
        List<Merchant> GetAll();
        List<Merchant> GetBy(int a, int b);
        List<Merchant> GetStatusManaged(int type);
        void UnactivateMerchant(int merchantId);
        void ActivateMerchant(int merchantId);
        bool GetStatusByMerchantId(int merchantId);
        List<Merchant> GetMerchantByProvince(int provinceId);
        List<Merchant> GetMerchantByDictrict(int dictrictId);
        int AddManaged(int MerchantId, int AgentId);
        List<Merchant> SearchMerchant(int id, string name);
        IList<Merchant> SearchMerchant(MerchantSearchCriteria searchCriteria);
        IPagedList<Merchant> SearchMerchant(MerchantSearchCriteria searchCriteria, PagingFilter pagingFilter);
    }
}
