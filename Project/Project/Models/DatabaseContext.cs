using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;

namespace Project.Models
{
    public class DatabaseContext:DbContext
    {
        public DbSet<User> Users { get; set; }
        public DbSet<Price> Prices { get; set; }    
        public DbSet<WinningNos> WinningNos { get; set; }

        public System.Data.Entity.DbSet<Project.Models.GetDetails> GetDetails { get; set; }
    }
}