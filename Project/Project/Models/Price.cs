using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel.DataAnnotations.Schema;
using System.ComponentModel.DataAnnotations;

namespace Project.Models
{
    [Table("tblPrice")]
    public class Price
    {
        public int id { get; set; }
        [Display(Name ="Price Type")]
        public string PriceType { get; set; }
        [Display(Name="Winning Number")]
        public string WinningNo { get; set; }
        public Nullable<int> UserId { get; set; }
    }
}