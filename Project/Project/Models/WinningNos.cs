using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel.DataAnnotations.Schema;
using System.ComponentModel.DataAnnotations;

namespace Project.Models
{
    [Table("tblWinningNo")]
    public class WinningNos
    {
        public int id { get; set; }
        [Display(Name ="Winning Number")]
        public string WinningNo { get; set; }
        public int UserId { get; set; }
    }
}