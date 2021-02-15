using System;
using System.Collections.ObjectModel;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;
 

namespace WpfApp7.pages
{
    /// <summary>
    /// Логика взаимодействия для addorder.xaml
    /// </summary>
    public partial class addorder : Page
    { 
        public addorder()
        {
            InitializeComponent(); 
        } 
    }
}



//var outter = from dict in _db.Fuels select dict;//linq
//liist.DataContext = outter.ToList();
//private void Button_Click(object sender, RoutedEventArgs e)
//{
//    App.MainWindowViewModel.CurrentPage = App.LoginPage;
//}

//private void Button_Click_1(object sender, RoutedEventArgs e)
//{
//    App.HomePage = new home();
//    App.MainWindowViewModel.CurrentPage = App.HomePage;
//}

//private void Button_Click_2(object sender, RoutedEventArgs e)
//{
//    if (Texttbx.Text.Equals("") || UserNametbx.Text.Equals(""))
//    {
//        MessageBox.Show("Нужно заполнить все поля перед добавлением"); 
//    }
//    else
//    {


//        //var add = new Order
//        //{
//        //    UserId = CurrentUser.GetUserId(),

//        //    //FuelId =1,
//        //    FullCost = 10 * selectedFuel.Cost,

//        //    Name = UserNametbx.Text,
//        //    Amount = Convert.ToDouble(Amounttbx.Text),
//        //    Text = Texttbx.Text,
//        //    Status = "Не принят",
//        //    When = DateTime.Now,
//        //    FuelId = selectedFuel.FuelId,
//        //};

//        //_db.Orders.Add(add);//добавляем 
//        //_db.SaveChanges();//сохраняем
//        //MessageBox.Show("заказ добавлен");
//    }
//}