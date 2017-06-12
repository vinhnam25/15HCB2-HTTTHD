using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace WC_MCAG.Controllers
{
    public class UserController : Controller
    {
        //
        // GET: /User/
        public ActionResult ViewListUser()
        {
            return View();
        }

        public ActionResult Login()
        {
            return View();
        }

        public ActionResult ChangePassword()
        {
            return View();
        }
       
	}
}