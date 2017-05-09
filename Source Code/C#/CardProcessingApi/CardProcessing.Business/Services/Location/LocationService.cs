using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using CardProcessingApi.Data;
using CardProcessingApi.DataAccess;

namespace CardProcessing.Business.Services.Location
{
    public class LocationService : ILocationService
    {
        private readonly IGenericRepository<District> _districtRepo;
        public LocationService(IGenericRepository<District> districtRepo)
        {
            _districtRepo = districtRepo;
        }
        public District GetDistrictById(int districtId)
        {
            return _districtRepo.GetById(districtId);
        }
    }
}
