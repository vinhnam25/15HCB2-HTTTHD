using CardProcessingApi.Data;
using CardProcessingApi.DataAccess;

namespace CardProcessing.Business.BusinessLogic.Location
{
    public class LocationLogic : ILocationLogic
    {
        private readonly IGenericRepository<District> _districtRepo;
        public LocationLogic(IGenericRepository<District> districtRepo)
        {
            _districtRepo = districtRepo;
        }
        public District GetDistrictById(int districtId)
        {
            return _districtRepo.GetById(districtId);
        }
    }
}
