using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Yurivisa_v2._1.Areas.Admin.Controllers
{
    [Authorize]
    public class DashboardController : Controller
    {
        // GET: Admin/Home
        public ActionResult Index()
        {
            return View();
        }
        public ActionResult Themes()
        {
            return View();
        }
        
    }
}