using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using CPClient.Core;
using CPClient.Core.Models;

namespace CPClient.Business
{
    public class LocationLogic
    {
        public static async Task<List<DistrictListItemModel>> FetchAllDistrictsAsync()
        {
            var districts = await WebServiceUtils.Get<List<DistrictListItemModel>>("/api/common/all/districts");
            return districts.ToList();
        }

        public static async Task<List<ProvinceListItemModel>> FetchAllProvincesAsync()
        {
            var provinces =
                await WebServiceUtils.Get<List<ProvinceListItemModel>>("/api/common/all/provinces");
            return provinces.ToList();
        }
    }
}
