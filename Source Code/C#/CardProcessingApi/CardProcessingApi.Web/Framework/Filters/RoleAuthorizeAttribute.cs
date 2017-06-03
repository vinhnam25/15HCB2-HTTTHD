using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Claims;
using System.Web;
using System.Web.Http;
using System.Web.Http.Controllers;
using CardProcessingApi.Core;

namespace CardProcessingApi.Web.Framework.Filters
{
    public class RoleAuthorizeAttribute: AuthorizeAttribute
    {
        public Enums.UserRole[] UserRoles { get; set; }

        public RoleAuthorizeAttribute(params Enums.UserRole[] userRoles)
        {
            UserRoles = userRoles;
        }

        /// <summary>
        /// Always "false" - use global if not configured at controlerl; otherwise, use controller's one.
        /// </summary>
        public override bool AllowMultiple => false;

        protected override bool IsAuthorized(HttpActionContext actionContext)
        {
            var principal = actionContext.RequestContext.Principal as ClaimsPrincipal;
            if (principal == null || principal.Identity == null || !principal.Identity.IsAuthenticated)
            {
                return false;
            }

            // Leverage parent's logic if not user role passed in
            if (UserRoles == null || UserRoles.Length == 0)
            {
                return base.IsAuthorized(actionContext);
            }

            return UserRoles.Any(role => principal.IsInRole(role.ToString("D")));
        }
    }
}