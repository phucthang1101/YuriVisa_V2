using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Yurivisa_v2._1.Models;

namespace Yurivisa_v2._1.Controllers
{
    public class BaseController : Controller
    {
       
        //initilizing culture on controller initialization
        protected string _currentLanguage = "";
        protected string _defaultLanguage = "en";
        protected string[] _languages = new string[] { "vi", "en", "kr" };

        public BaseController()
        {
            var req = System.Web.HttpContext.Current.Request;

            if (req.Cookies["lang"] != null)
            {
                _currentLanguage = req.Cookies["lang"].Value;
            }

            if (req.QueryString["lang"] != null && _languages.Contains(req.QueryString["lang"]))
            {
                _setLanguage(req.QueryString["lang"]);
            }
            else
                if (_currentLanguage == "")
            {
                _setLanguage(_defaultLanguage);
            }
            ViewBag.CurrentLanguage = _currentLanguage;
            ViewBag.Languages = _languages;
        }
        protected void _setLanguage(string lang)
        {
            _currentLanguage = lang;
            System.Web.HttpContext.Current.Response.Cookies.Add(new HttpCookie("lang", lang));

        }
        public string GetLang()
        {
            return _currentLanguage;
        }
        //public ActionResult SetCulture(string culture)
        //{
        //    // Validate input
        //    culture = CultureHelper.GetImplementedCulture(culture);
        //    // Save culture in a cookie
        //    HttpCookie cookie = Request.Cookies["_culture"];
        //    if (cookie != null)
        //        cookie.Value = culture;   // update cookie value
        //    else
        //    {
        //        cookie = new HttpCookie("_culture");
        //        cookie.Value = culture;
        //        cookie.Expires = DateTime.Now.AddYears(1);
        //    }
        //    Response.Cookies.Add(cookie);
        //    return RedirectToAction("Index");
        //}

        protected override void OnActionExecuting(ActionExecutingContext context)
        {
            DataTable dt = new DataTable();
            string CS = ConfigurationManager.ConnectionStrings["YuriVisaDBEntities1"].ConnectionString;
            using (SqlConnection con = new SqlConnection(CS))
            {
                using (SqlCommand cmd = new SqlCommand("spFindMatch", con))
                {
                    con.Open();
                    cmd.CommandType = System.Data.CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@lang", _currentLanguage);

                    using (SqlDataAdapter ad = new SqlDataAdapter(cmd))
                    {
                        ad.Fill(dt);
                    }
                }
            }
            foreach (DataRow row in dt.Rows)
            {
                ViewData.Add(new KeyValuePair<string, object>((string)row["Object"], row["Content"]));

            }

        }

    }
}