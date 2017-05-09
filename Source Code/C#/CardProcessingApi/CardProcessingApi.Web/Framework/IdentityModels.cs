using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Microsoft.AspNet.Identity;

namespace CardProcessingApi.Web.Framework
{
    public class IdentityModels
    {
    }

    public class ApplicationUser : IUser<String>
    {
        public string Id { get; }
        public string UserName { get; set; }
    }

    public 
}