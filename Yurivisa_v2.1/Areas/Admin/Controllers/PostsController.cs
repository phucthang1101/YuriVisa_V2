using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using Yurivisa_v2._1.Models;

namespace Yurivisa_v2._1.Areas.Admin.Controllers
{
    public class PostsController : Controller
    {
        private YuriVisaDBEntities db = new YuriVisaDBEntities();

        // GET: Admin/Posts
        public ActionResult Index()
        {
            var pOSTs = db.POSTs.Include(p => p.CATEGORY1);
            return View(pOSTs.ToList());
        }

        // GET: Admin/Posts/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            POST pOST = db.POSTs.Find(id);
            if (pOST == null)
            {
                return HttpNotFound();
            }
            return View(pOST);
        }

        // GET: Admin/Posts/Create
        public ActionResult Create()
        {
            ViewBag.CATEGORY = new SelectList(db.CATEGORies, "ID", "category_name");
            return View();
        }

        // POST: Admin/Posts/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "ID,LINK,SEO_TITLE,SEO_DESCRIPTION,IMG_DESCRIPTION,TEXT_DESCRIPTION,CONTENT,DATE_CREATE,AUTHOR,VIEW_NUMBER,CATEGORY,POST_STATE,TITLE,IMG")] POST pOST)
        {
            if (ModelState.IsValid)
            {
                db.POSTs.Add(pOST);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            ViewBag.CATEGORY = new SelectList(db.CATEGORies, "ID", "category_name", pOST.CATEGORY);
            return View(pOST);
        }

        // GET: Admin/Posts/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            POST pOST = db.POSTs.Find(id);
            if (pOST == null)
            {
                return HttpNotFound();
            }
            ViewBag.CATEGORY = new SelectList(db.CATEGORies, "ID", "category_name", pOST.CATEGORY);
            return View(pOST);
        }

        // POST: Admin/Posts/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "ID,LINK,SEO_TITLE,SEO_DESCRIPTION,IMG_DESCRIPTION,TEXT_DESCRIPTION,CONTENT,DATE_CREATE,AUTHOR,VIEW_NUMBER,CATEGORY,POST_STATE,TITLE,IMG")] POST pOST)
        {
            if (ModelState.IsValid)
            {
                db.Entry(pOST).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.CATEGORY = new SelectList(db.CATEGORies, "ID", "category_name", pOST.CATEGORY);
            return View(pOST);
        }

        // GET: Admin/Posts/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            POST pOST = db.POSTs.Find(id);
            if (pOST == null)
            {
                return HttpNotFound();
            }
            return View(pOST);
        }

        // POST: Admin/Posts/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            POST pOST = db.POSTs.Find(id);
            db.POSTs.Remove(pOST);
            db.SaveChanges();
            return RedirectToAction("Index");
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }
    }
}
