using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
namespace WpfApp7
{
    using System.Data.Entity;
    using System.Text.RegularExpressions;
    using System.Windows;

    public class Model1 : DbContext
    {
        public Model1() : base("name=Model1") { }
        public DbSet<User> Users { get; set; }
        public DbSet<Fuel> Fuels { get; set; }
        public DbSet<Order> Orders { get; set; }
        public DbSet<Admin> Admins { get; set; }
    }
    
    public class User
    {
        public User()
        {
            Orders = new List<Order>();
        }
        [Key]
        public int Id { get; set; }
        [Required]
        public string Name { get; set; }
        [Required] 
        public string Password { get; set; }
      
        public virtual ICollection<Order> Orders { get; set; }
    }
    public class Order
    { 
        public bool status2; 
        [Key]
        public int OrderId { get; set; }
        [Required]
        public string Name { get; set; }
        [MaxLength(300)]
        public string Text { get; set; }
        public DateTime When { get; set; }
        [Required]
        [ForeignKey("User")]
        public virtual int UserId { get; set; } 
        public virtual User User { get; set; }
        [Required]
        [ForeignKey("Fuel")]
        public virtual int FuelId { get; set; }//////// 
        public virtual Fuel Fuel { get; set; }/////// 
        public string Status { get; set; }
        public bool Status2
        {
            get
            {
                return status2;
            }
            set
            {
                status2 = value;
                if (status2 == false)
                {
                    Status = "не принято";
                    Opovesh = 0; 
                }
                else
                {
                    Status = "принято";
                    Opovesh++;
                }
            }
        }
        public int Opovesh { get; set; }
        [Required]
        public double Amount { get; set; }
        [Required]
        public double FullCost { get; set; }
    }
    public class Fuel
    {
        [Key]
        public int FuelId { get; set; }
        [Required]
        public double Cost { get; set; }
        [Required]
        public string Name { get; set; }
        [Required]
        public double Left { get; set; }
        public virtual ICollection<Order> Orders { get; set; }
    }
    public class Admin
    { 
        [Key]
        public int Id { get; set; }
        [Required]
        public string Name { get; set; }
        [Required]
        public string Password { get; set; }  
    }
}
