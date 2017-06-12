using System.Linq;
using CardProcessingApi.Data;
using CardProcessingApi.DataAccess;

namespace CardProcessing.Business.BusinessLogic.Account
{
    public class UserLogic : IUserLogic
    {
        private readonly IGenericRepository<User> _userRepository;
        private readonly IGenericRepository<Province> _districtRepo;
        public UserLogic(IGenericRepository<User> userRepository, IGenericRepository<Province> districtRepo)
        {
            _userRepository = userRepository;
            _districtRepo = districtRepo;
        }
        public string GetUserName()
        {
            return _districtRepo.GetAll().ToList().ToString();
        }

        public User GetByUserId(int userId)
        {
            return _userRepository.GetById(userId);
        }

        public User GetByUserName(string userName)
        {
            return _userRepository.FindBy(c => c.UserName == userName.Trim().ToLower()).FirstOrDefault();
        }

        public User GetUserByUserName(string userName)
        {
            var user = _userRepository.FindBy(c => c.UserName == userName).FirstOrDefault();
            return user;
        }
    }
}