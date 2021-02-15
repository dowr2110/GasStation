using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Threading.Tasks;
using System.Windows;
using WpfApp7.pages;
using WpfApp7.ViewModels;
namespace WpfApp7
{
    /// <summary>
    /// Логика взаимодействия для App.xaml
    /// </summary>
    public partial class App : Application
    {
        public static MainWindowViewModel MainWindowViewModel { get; set; } = new MainWindowViewModel();
        public static object Language { get; internal set; }

        //public static AuthorizationViewModel AuthorizationViewModel { get; set; } = new AuthorizationViewModel();
        //public static RegistrationViewModel RegistrationViewModel { get; set; } = new RegistrationViewModel();
        //public static AddOrderViewModel AddOrderViewModel { get; set; } = new AddOrderViewModel();
        //public static HomeViewModel HomeViewModel { get; set; } = new HomeViewModel();

        public static home HomePage;
        public static registration RegistrPage;
        public static addorder AddorderPage;
        public static login LoginPage = new login();
        public static adminPage AdminPage;
        public static adminPage2 AdminPage2;
        public static adminPage3 AdminPage3;
        public static ownkabinet OwnKabinet;
        public static statistika Statistika;
        public static adminPageStatistika AdminPageStatistika;
        public static adminPageChangePassword AdminPageChangePassword;
    }
}
