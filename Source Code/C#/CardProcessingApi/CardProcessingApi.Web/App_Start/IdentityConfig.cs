using System.Threading.Tasks;
using System.Web.Mvc;
using CardProcessing.Business.BusinessLogic.Account;
using CardProcessingApi.Core;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EntityFramework;
using Microsoft.AspNet.Identity.Owin;
using Microsoft.Owin;
using CardProcessingApi.Web.Models;
using Microsoft.Practices.ServiceLocation;

namespace CardProcessingApi.Web
{
    // Configure the application user manager used in this application. UserManager is defined in ASP.NET Identity and is used by the application.

    public class ApplicationUserManager : UserManager<ApplicationUser>
    {
        public ApplicationUserManager(IUserStore<ApplicationUser> store)
            : base(store)
        {
            PasswordHasher = new CustomPasswordHasher();
        }

        public static ApplicationUserManager Create(IdentityFactoryOptions<ApplicationUserManager> options, IOwinContext context)
        {
            var userLogic = ServiceLocator.Current.GetInstance<IUserLogic>();
            var manager = new ApplicationUserManager(new CustomUserStore(userLogic));

            var dataProtectionProvider = options.DataProtectionProvider;
            if (dataProtectionProvider != null)
            {
                manager.UserTokenProvider = new DataProtectorTokenProvider<ApplicationUser>(dataProtectionProvider.Create("ASP.NET Identity"));
            }
            return manager;
        }
    }

    public class CustomPasswordHasher : IPasswordHasher
    {
        public string HashPassword(string password)
        {
            return CommonHelper.HashString(password);
        }

        public PasswordVerificationResult VerifyHashedPassword(string hashedPassword, string providedPassword)
        {
            return hashedPassword == HashPassword(providedPassword)
                ? PasswordVerificationResult.Success
                : PasswordVerificationResult.Failed;
        }
    }
}
