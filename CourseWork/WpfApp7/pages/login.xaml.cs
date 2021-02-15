using System;
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
using WpfApp7.Commands;
namespace WpfApp7.pages
{
    /// <summary>
    /// Логика взаимодействия для login.xaml
    /// </summary>
    public partial class login : Page
    {
        private readonly Model1 _db = new Model1(); 
        public login()
        {
            InitializeComponent();
            var users = from dict in _db.Users
                        select dict;//linq 
        }
        
    }
}


// var user = users.FirstOrDefault(x => x.Password == PasswordBox.Password && x.Name == nametbx.Text); 
//    private void Button_Click2(object sender, RoutedEventArgs e)
//{
//    //var outter = from dict in _db.Users
//    //             where dict.Name == nametbx.Text && dict.Password == PasswordBox.Password
//    //             select dict;//linq

//    var users = from dict in _db.Users 
//                select dict;//linq 
//    var user = users.FirstOrDefault(x => x.Password == PasswordBox.Password && x.Name == nametbx.Text);

//    if (nametbx.Text.Equals("") || PasswordBox.Password.Equals(""))
//    {
//        MessageBox.Show("Поля пустые");
//    }
//    else
//    {
//        if (user == null)
//        {
//            MessageBox.Show("неверный логин");
//        }
//        else
//        {
//            CurrentUser.SetUserId(user.Id);
//            App.HomePage = new home();
//            App.MainWindowViewModel.CurrentPage = App.HomePage;
//        }
//    }
//}

//private void Button_Click(object sender, RoutedEventArgs e)
//{
//    App.RegistrPage = new registration();
//    App.MainWindowViewModel.CurrentPage = App.RegistrPage;
//}
