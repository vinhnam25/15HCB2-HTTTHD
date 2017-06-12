using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace WC_MCAG.Controllers
{
    public class NotificationController : Controller
    {
        //
        // GET: /Notification/
        public ActionResult Inbox()
        {
            return View();
        }
        public ActionResult Inbox_detail()
        {
            return View();
        }
        public ActionResult New_Notification()
        {
            return View();
        }
	}
}