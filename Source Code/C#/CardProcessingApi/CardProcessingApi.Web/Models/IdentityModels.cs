using System;
using System.Security.Claims;
using System.Threading.Tasks;
using CardProcessing.Business.BusinessLogic.Account;
using CardProcessingApi.Data;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EntityFramework;
using Microsoft.AspNet.Identity.Owin;

namespace CardProcessingApi.Web.Models
{
    // You can add profile data for the user by adding more properties to your ApplicationUser class, please visit http://go.microsoft.com/fwlink/?LinkID=317594 to learn more.
    public class ApplicationUser : IUser<String>
    {
        private readonly User _user;

        public ApplicationUser(User user)
        {
            _user = user;
        }

        public async Task<ClaimsIdentity> GenerateUserIdentityAsync(UserManager<ApplicationUser> manager, string authenticationType)
        {
            // Note the authenticationType must match the one defined in CookieAuthenticationOptions.AuthenticationType
            var userIdentity = await manager.CreateIdentityAsync(this, authenticationType);
            // Add custom user claims here
            return userIdentity;
        }

        public string Id => _user.UserId.ToString();
        public string UserName
        {
            get { return _user.UserName; }
            set { _user.UserName = value; }
        }

        public string PasswordHash => _user.Password;
    }

    public class CustomUserStore: IUserStore<ApplicationUser>, IUserPasswordStore<ApplicationUser>
    {
        private readonly IUserLogic _userLogic;

        public CustomUserStore(IUserLogic userLogic)
        {
            _userLogic = userLogic;
        }

        public void Dispose()
        {
        }

        public Task CreateAsync(ApplicationUser user)
        {
            throw new NotImplementedException();
        }

        public Task UpdateAsync(ApplicationUser user)
        {
            throw new NotImplementedException();
        }

        public Task DeleteAsync(ApplicationUser user)
        {
            throw new NotImplementedException();
        }

        public Task<ApplicationUser> FindByIdAsync(string userId)
        {
            ApplicationUser applicationUser = null;
            var user = _userLogic.GetByUserId(Convert.ToInt32(userId));
            if (user != null)
            {
                applicationUser = new ApplicationUser(user);
            }
            return Task.FromResult(applicationUser);
        }

        public Task<ApplicationUser> FindByNameAsync(string userName)
        {
            ApplicationUser applicationUser = null;
            var user = _userLogic.GetByUserName(userName);
            if (user != null)
            {
                applicationUser = new ApplicationUser(user);
            }
            return Task.FromResult(applicationUser);
        }

        public Task SetPasswordHashAsync(ApplicationUser user, string passwordHash)
        {
            throw new NotImplementedException();
        }

        public Task<string> GetPasswordHashAsync(ApplicationUser user)
        {
            return Task.FromResult(user.PasswordHash);
        }

        public Task<bool> HasPasswordAsync(ApplicationUser user)
        {
            return Task.FromResult(true);
        }
    }
}