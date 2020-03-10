using System.Web.Mvc;

namespace Yurivisa_v2._1.Areas.Admin
{
    public class AdminAreaRegistration : AreaRegistration 
    {
        public override string AreaName 
        {
            get 
            {
                return "Admin";
            }
        }

        public override void RegisterArea(AreaRegistrationContext context) 
        {
            context.MapRoute(
                "Admin_login",
                "Admin/Login",
                new { controller = "Account", action = "Login", id = UrlParameter.Optional },
                new[] { "Yurivisa_v2._1.Areas.Admin.Controllers" }
            );
            
            context.MapRoute(
                "Admin_default",
                "Admin/{controller}/{action}/{id}",
                new {controller="Dashboard", action = "Index", id = UrlParameter.Optional },
                new[] { "Yurivisa_v2._1.Areas.Admin.Controllers" }
            );
        }
    }
}