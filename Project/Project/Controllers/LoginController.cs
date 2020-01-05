using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Project.Models;

namespace Project.Controllers
{
    public class LoginController : Controller
    {
        private DatabaseContext db = new DatabaseContext();
        public ActionResult Index()
        {
            return View();
        }

        [HttpPost]
        public ActionResult login(User user)
        {
            User users = db.Users.SingleOrDefault(m => m.Email.Equals(user.Email) && m.Password.Equals(user.Password));
            if (users.Email == "admin@ucsm.com" && user.Password == "wakeUPup@1")
            {
                Session["Id"] = users.id;
                Session["Email"] = users.Email;
                return RedirectToAction("Index", "Admin");
            }
            else if(user.Email == users.Email && user.Password == users.Password)
            {
                Session["Id"] = users.id;
                Session["Email"] = users.Email;
                return RedirectToAction("Index", "User");
            }
            return new HttpNotFoundResult();
        }
        public ActionResult Logoff()
        {
            return RedirectToAction("Index");
        }
    }
}