using CardProcessingApi.Data;

namespace CardProcessing.Business.BusinessLogic.Account
{
    public interface IUserLogic
    {
        string GetUserName();
        User GetByUserName(string userName);
        User GetByUserId(int userId);
    }
}
