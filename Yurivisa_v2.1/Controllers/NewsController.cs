using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Yurivisa_v2._1.Models;

namespace Yurivisa_v2._1.Controllers
{
    public class NewsController : BaseController
    {
        private YuriVisaDBEntities db = new YuriVisaDBEntities();
        // GET: News
        public ActionResult Index()
        {
            List<POST> tempContent = db.POSTs.OrderByDescending(x => x.ID).ToList();

            return View(tempContent);
        }
        public ActionResult Post(string title, int? id)
        {
            if (title == null || id == null)
                return RedirectToAction("Index");
            else
            {
                POST item = db.POSTs.Find(id);
                if(item.LINK!=title)
                    return RedirectToAction("Index");
                item.VIEW_NUMBER++;
                db.Entry(item).State = EntityState.Modified;
                db.SaveChanges();
                return View(item);
            }                  
            
        }


    }
}