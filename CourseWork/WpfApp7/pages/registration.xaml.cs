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
using WpfApp7;
namespace WpfApp7.pages
{
    /// <summary>
    /// Логика взаимодействия для registration.xaml
    /// </summary>
    public partial class registration : Page
    {

        public registration()
        {
            InitializeComponent();
        }
       
    }
}





// private readonly Model1 _db = new Model1();
////private async void RegisterBtn_Click(object sender, RoutedEventArgs e)
////{
////    if (nametbx.Text.Equals("") || passwordbx.Password.Equals("")|| ConfirmPasswordBox.Password.Equals(""))
////    {
////        MessageBox.Show("Нужно заполнить все поля перед добавлением");

////    }
////    else if (!ConfirmPasswordBox.Password.Equals(passwordbx.Password))
////    {
////        MessageBox.Show("не верный потвержденный пороль");
////    }
////    else
////    { 
////        var add = new User
////        {
////            Name = nametbx.Text,
////            Password = passwordbx.Password
////        };
////        //CurrentUser.SetUserId(add.Id);

////        _db.Users.Add(add);//добавляем 
////        await _db.SaveChangesAsync();//сохраняем
////        MessageBox.Show("Пользователь зарегистрирован");
////    }
//}

//private void BackBtn_Click(object sender, RoutedEventArgs e)
//{ 
//    App.MainWindowViewModel.CurrentPage = App.LoginPage;
//}
