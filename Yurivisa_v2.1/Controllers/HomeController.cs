using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.Entity;
using System.Data.SqlClient;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using Yurivisa_v2._1.Models;

namespace Yurivisa_v2._1.Controllers
{
    public class HomeController : BaseController
    {
        private YuriVisaDBEntities db = new YuriVisaDBEntities();
       

        public ActionResult ChangeCulture(string culture, string returnUrl)
        {
            _setLanguage(culture);
            return Redirect(returnUrl);
        }


        public ActionResult Index()
        {
            return View();
        }

        //public ActionResult News()
        //{
        //    List<POST> tempContent = db.POSTs.OrderByDescending(x => x.ID).ToList();

        //    return View(tempContent);
        //}
        //public ActionResult Post(string title, int? id)
        //{
        //    if (title == null || id == null)
        //        return RedirectToAction("Index");
        //    else
        //    {
        //        POST item = db.POSTs.Find(id);
        //        if (item.LINK != title)
        //            return RedirectToAction("Index");
        //        item.VIEW_NUMBER++;
        //        db.Entry(item).State = EntityState.Modified;
        //        db.SaveChanges();
        //        return View(item);
        //    }

        //}

        //public ActionResult About()
        //{
        //    return View();
        //}

        //public ActionResult Payment()
        //{
        //    return View();
        //}



        //public ActionResult Index()
        //{
        //    return View();
        //}
        //public ActionResult VisaChoNguoiViet()
        //{
        //    List<POST> tempContent = db.POSTs.OrderByDescending(x => x.ID).ToList();
        //    return View(tempContent);

        //}
        //public ActionResult VisaChoNguoiNuocNgoai()
        //{
        //    List<POST> tempContent = db.POSTs.OrderByDescending(x => x.ID).ToList();
        //    return View(tempContent);
        //}
        //public ActionResult ChungMinhTaiChinh()
        //{
        //    List<POST> tempContent = db.POSTs.OrderByDescending(x => x.ID).ToList();
        //    return View(tempContent);
        //}
        //public ActionResult HopPhapHoaLanhSu()
        //{
        //    List<POST> tempContent = db.POSTs.OrderByDescending(x => x.ID).ToList();
        //    return View(tempContent);
        //}
        //public ActionResult Post(string name, string title, int? id)
        //{
        //    if (title == null || id == null)
        //        return RedirectToAction("Index");
        //    else
        //    {
        //        POST item = db.POSTs.Find(id);
        //        string categ = db.CATEGORies.Find(item.CATEGORY).category_name;
        //        if (categ != name || item.LINK != title)
        //        {
        //            return RedirectToAction("Index");
        //        }
        //        item.VIEW_NUMBER++;
        //        db.Entry(item).State = EntityState.Modified;
        //        db.SaveChanges();
        //        return View(item);
        //    }
        //}
    }

}