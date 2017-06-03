using System.Collections.Generic;
using CardProcessingApi.Data;

namespace CardProcessing.Business.BusinessLogic.Location
{
    public interface ILocationLogic
    {
        District GetDistrictById(int districtId);

        List<District> GetAllDistricts();

        List<Province> GetAllProvinces();
    }
}