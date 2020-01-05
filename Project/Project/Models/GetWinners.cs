using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel.DataAnnotations;

namespace Project.Models
{
    public class GetWinners
    {
        public int id { get; set; }

        [Display(Name ="Price Types")]
        public string PriceType { get; set; }

        public string Email { get; set; }
        [Display(Name ="Winning Number")]
        public string WinningNo { get; set; }
    }
}