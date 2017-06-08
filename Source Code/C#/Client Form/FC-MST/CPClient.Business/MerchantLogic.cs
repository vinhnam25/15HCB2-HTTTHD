using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using CPClient.Core;
using CPClient.Core.Models;

namespace CPClient.Business
{
    class MerchantLogic
    {
        public static async Task<List<MerchantListItemModel>> FetchAllMerchant()
        {
            var Merchants = await WebServiceUtils.Get<List<MerchantListItemModel>>("/api/merchant/all");
            return Merchants;
        }

        public static async Task<MerchantListItemModel> FetchMerchantById(string id)
        {
            var Merchant = await WebServiceUtils.Get<MerchantListItemModel>("/api/merchant/" + id);
            return Merchant;
        }

        public static void ActivateMerchant(string MerchantId, Action<string> onSuccess, Action<string> onFailed)
        {
            WebServiceUtils.Post("/api/merchant/active/" + MerchantId, null, onSuccess, onFailed);
        }

        public static void DeactivateMerchant(string MerchantId, Action<string> onSuccess, Action<string> onFailed)
        {
            WebServiceUtils.Post("/api/merchant/unactive/" + MerchantId, null, onSuccess, onFailed);
        }
    }
}
