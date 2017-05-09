using System.Linq;
using CardProcessingApi.Data;
using CardProcessingApi.DataAccess;

namespace CardProcessing.Business.Services.Account
{
    public class AccountService : IAccountService
    {
        private readonly IGenericRepository<User> _userRepository;
        private readonly IGenericRepository<Province> _districtRepo;
        public AccountService(IGenericRepository<User> userRepository, IGenericRepository<Province> districtRepo)
        {
            _userRepository = userRepository;
            _districtRepo = districtRepo;
        }
        public string GetUserName()
        {
            return _districtRepo.GetAll().ToList().ToString();
        }

        public User GetUserByUserName(string userName)
        {
            var user = _userRepository.FindBy(c => c.UserName == userName).FirstOrDefault();
            return user;
        }
    }
}