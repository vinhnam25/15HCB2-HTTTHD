using CardProcessingApi.Data;

namespace CardProcessing.Business.BusinessLogic.Location
{
    public interface ILocationLogic
    {
        District GetDistrictById(int districtId);
    }
}