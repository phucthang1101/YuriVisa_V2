using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Routing;

namespace Yurivisa_v2._1
{
    public class RouteConfig
    {
        public static void RegisterRoutes(RouteCollection routes)
        {
            routes.IgnoreRoute("{resource}.axd/{*pathInfo}");


            routes.MapRoute(
               name: "Home",
               url: "",
               defaults: new { controller = "Home", action = "Index", id = UrlParameter.Optional },
               namespaces: new[] { "Yurivisa_v2._1.Controllers" }
           );
            routes.MapRoute(
                name: "navbar",
                url: "{controller}",
                defaults: new { controller = "Home", action = "Index", id = UrlParameter.Optional },
                namespaces: new[] { "Yurivisa_v2._1.Controllers" }
            );
            routes.MapRoute(
              name: "news",
              url: "news/{title}-{id}",
              defaults: new { controller = "News", action = "Post", id = UrlParameter.Optional },
              namespaces: new[] { "Yurivisa_v2._1.Controllers" }
          );
            routes.MapRoute(
             name: "visa-cho-nguoi-viet",
             url: "services/visa-cho-nguoi-viet",
             defaults: new { controller = "Services", action = "VisaChoNguoiViet", id = UrlParameter.Optional },
             namespaces: new[] { "Yurivisa_v2._1.Controllers" }
         );
            routes.MapRoute(
  name: "ChangeCulture", // Route name
  url: "Home/ChangeCulture", // URL with parameters
 defaults: new { controller = "Home", action = "ChangeCulture", id = UrlParameter.Optional }, // Parameter defaults
    namespaces: new[] { "Yurivisa_v2._1.Controllers" }
);
            routes.MapRoute(
           name: "visa-cho-nguoi-nuoc-ngoai",
           url: "services/visa-cho-nguoi-nuoc-ngoai",
           defaults: new { controller = "Services", action = "VisaChoNguoiNuocNgoai", id = UrlParameter.Optional },
           namespaces: new[] { "Yurivisa_v2._1.Controllers" }
       );
            routes.MapRoute(
        name: "chung-minh-tai-chinh",
        url: "services/chung-minh-tai-chinh",
        defaults: new { controller = "Services", action = "ChungMinhTaiChinh", id = UrlParameter.Optional },
        namespaces: new[] { "Yurivisa_v2._1.Controllers" }
    );
            routes.MapRoute(
        name: "hop-phap-hoa-lanh-su",
        url: "services/hop-phap-hoa-lanh-su",
        defaults: new { controller = "Services", action = "HopPhapHoaLanhSu", id = UrlParameter.Optional },
        namespaces: new[] { "Yurivisa_v2._1.Controllers" }
    );
            routes.MapRoute(
    name: "Default",
    url: "services/{name}/{title}-{id}",
    defaults: new { controller = "Services", action = "Post", id = UrlParameter.Optional },
    namespaces: new[] { "Yurivisa_v2._1.Controllers" }
);
        }
    }
}
