using CardProcessingApi.Data;

namespace CardProcessing.Business.Services.Location
{
    public interface ILocationService
    {
        District GetDistrictById(int districtId);
    }
}