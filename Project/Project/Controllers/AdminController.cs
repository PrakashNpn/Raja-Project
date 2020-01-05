using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Project.Models;

namespace Project.Controllers
{
    public class AdminController : Controller
    {
        private DatabaseContext db = new DatabaseContext();
        public ActionResult Index()
        {
            return View();
        }

        public JsonResult GetAjax()
        {
            var json = db.Database.SqlQuery<GetValue>("select top 1 UserId as UserId , Max(WinningNo) as WinningNo from tblWinningNo  rand group by UserId");         
            return Json(json);
        
        }
        public ActionResult LuckyDrawSubmit(Price price)
        {
            Price p = db.Prices.Find(price.id);
            p.UserId = price.UserId;
            p.WinningNo = price.WinningNo;
            db.SaveChanges();
            return View("Index");
        }

        public ActionResult Details()
        {
            var data = db.Database.SqlQuery<GetDetails>("select  Max(tblUser.id)as UserId, Count(WinningNo) as id, tblUser.Email from tblUser join tblWinningNo on tblUser.id = tblWinningNo.UserId group by Email");
            return View(data);
        }


        public ActionResult getDetails(int id)
        {
            var winningNo = db.Database.SqlQuery<DetailsOfWinningNo>("select tblWinningNo.id as id, tblUser.id as UserId, tblWinningNo.WinningNo from tblWinningNo join tblUser on tblWinningNo.UserId = tblUser.id where tblUser.id = @id",
                new SqlParameter("@id", id));

            return View(winningNo);
        }

        public ActionResult Winners()
        {
            var data = db.Database.SqlQuery<GetWinners>("select  tblPrice.id, tblPrice.PriceType, tblUser.Email, tblPrice.WinningNo from tblPrice join tblUser on tblPrice.UserId = tblUser.id");
            return View(data);
        }
    }
}