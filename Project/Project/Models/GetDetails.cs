using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel.DataAnnotations;

namespace Project.Models
{
    public class GetDetails
    {
        public int UserId { get; set; }
        [Display(Name ="Winning Numbers Count")]
        public int id { get; set; }
        public string Email { get; set; }
    }
}