using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CardProcessingApi.Core
{
    public class WorkingUser
    {
        public WorkingUser()
        {
            Roles = new UserRole[] { };
        }

        public int Id { get; set; }
        public string UserName { get; set; }
        public string FullName { get; set; }
        public int? ProvinceId { get; set; }
        //public string LocationName { get; set; }
        public int? DistrictId { get; set; }

        public IList<UserRole> Roles { get; set; }

        /// <summary>
        /// Gets string used for logging purpose (including user id and username).
        /// </summary>
        /// <returns></returns>
        public string GetLogString()
        {
            return string.Format("{0} - {1}", Id, UserName);
        }

        public bool IsInRole(UserRole role)
        {
            return Roles.Contains(role);
        }

        public bool IsInRole(params UserRole[] roles)
        {
            return roles.Any(userRole => Roles.Contains(userRole));
        }
    }
}
