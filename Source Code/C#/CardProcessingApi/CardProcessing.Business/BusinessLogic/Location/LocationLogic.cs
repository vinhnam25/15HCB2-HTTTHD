using System.Collections.Generic;
using System.Linq;
using CardProcessingApi.Data;
using CardProcessingApi.DataAccess;

namespace CardProcessing.Business.BusinessLogic.Location
{
    public class LocationLogic : ILocationLogic
    {
        private readonly IGenericRepository<District> _districtRepo;
        private readonly IGenericRepository<Province> _provinceRepo; 
        public LocationLogic(IGenericRepository<District> districtRepo, IGenericRepository<Province> provinceRepo)
        {
            _districtRepo = districtRepo;
            _provinceRepo = provinceRepo;
        }

        public District GetDistrictById(int districtId)
        {
            return _districtRepo.GetById(districtId);
        }

        public List<District> GetAllDistricts()
        {
            return _districtRepo.GetAll().ToList();
        }

        public List<Province> GetAllProvinces()
        {
            return _provinceRepo.GetAll().ToList();
        } 
    }
}
