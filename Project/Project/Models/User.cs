using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel.DataAnnotations.Schema;
using System.ComponentModel.DataAnnotations;

namespace Project.Models
{
    [Table("tblUser")]  
    public class User
    {
        public int id { get; set; }
            
        [Required(AllowEmptyStrings = false, ErrorMessage ="Email  Address Required")]
        [DataType(DataType.EmailAddress , ErrorMessage ="Please enter your password.")]
        public string Email { get; set; }
        [Required]
        public string Password { get; set; }
       
    }
}