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
    public class LookupTablesController : Controller
    {
        private YuriVisaDBEntities db = new YuriVisaDBEntities();

        // GET: Admin/LookupTables
        public ActionResult Index()
        {
            return View(db.LookupTables.ToList());
        }

        // GET: Admin/LookupTables/Details/5
        public ActionResult Details(string id,string lang)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            LookupTable lookupTable = db.LookupTables.Find(id,lang);
            if (lookupTable == null)
            {
                return HttpNotFound();
            }
            return View(lookupTable);
        }

        // GET: Admin/LookupTables/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: Admin/LookupTables/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "Object,Lang,Content")] LookupTable lookupTable)
        {
            if (ModelState.IsValid)
            {
                db.LookupTables.Add(lookupTable);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(lookupTable);
        }

        // GET: Admin/LookupTables/Edit/5
        public ActionResult Edit(string id,string lang)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            LookupTable lookupTable = db.LookupTables.Find(id,lang);
            if (lookupTable == null)
            {
                return HttpNotFound();
            }
            return View(lookupTable);
        }

        // POST: Admin/LookupTables/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "Object,Lang,Content")] LookupTable lookupTable)
        {
            if (ModelState.IsValid)
            {
                db.Entry(lookupTable).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(lookupTable);
        }

        // GET: Admin/LookupTables/Delete/5
        public ActionResult Delete(string id,string lang)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            LookupTable lookupTable = db.LookupTables.Find(id,lang);
            if (lookupTable == null)
            {
                return HttpNotFound();
            }
            return View(lookupTable);
        }

        // POST: Admin/LookupTables/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(string id,string lang)
        {
            LookupTable lookupTable = db.LookupTables.Find(id,lang);
            db.LookupTables.Remove(lookupTable);
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
