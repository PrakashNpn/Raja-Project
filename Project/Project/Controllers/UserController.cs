using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Project.Models;

namespace Project.Controllers
{
    public class UserController : Controller
    {
        private DatabaseContext db = new DatabaseContext();        
        
        public ActionResult Index()
        {
            return View();
        }
        [HttpPost]
        public ActionResult AddingWinningNo(WinningNos numbers)
        {
            db.WinningNos.Add(numbers);
            db.SaveChanges();
            return View("Index");
        }

        public ActionResult Winners()
        {
            var data = db.Database.SqlQuery<GetWinners>("select  tblPrice.id, tblPrice.PriceType, tblUser.Email, tblPrice.WinningNo from tblPrice join tblUser on tblPrice.UserId = tblUser.id");
            return View(data);
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
    }
}