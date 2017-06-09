using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using CPClient.Core.Models;
using CPClient.Core;
using System.Data;

namespace CPClient.Business
{
    public class MerchantLogic
    {
        public static async Task<List<TypeMerchantModel>> FetchAllTypeByID(string id)
        {
            var data = await WebServiceUtils.Get<List<TypeMerchantModel>>("/rest/other/data/" + id, "WebServiceJava");
            return data.ToList();
        }

        public static async Task<DataTable> FetchDataByView(object reqest)
        {
            var data = await WebServiceUtils.Post<DataTable>("/api/merchant/listbv", reqest);
            return data;
        }

        public static async Task<MerchantDetailModel> FetchDetail(object reqest)
        {
            var data = await WebServiceUtils.Post<MerchantDetailModel>("/api/merchant/detail", reqest);
            return data;
        }

        /*
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
         */
    }
}
