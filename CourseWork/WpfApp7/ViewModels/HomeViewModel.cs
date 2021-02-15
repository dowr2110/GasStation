using System;
using System.Collections.Generic; 
using System.Net;
using System.IO;
using System.Threading.Tasks;
using System.Net.Mail;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text; 
using System.Windows;
using System.Windows.Controls;
using WpfApp7.Commands;
using WpfApp7.pages;
namespace WpfApp7.ViewModels
{
    class HomeViewModel : ViewModelBase
    {
        private readonly Model1 _db = new Model1();
        private string message;
        public HomeViewModel()
        {
            RefreshCommand = new RellayCommand(RefreshPage);
            LogOutCommand = new RellayCommand(LogOut);
            AddOrderCommand = new RellayCommand(AddOrder);
            OwnkabinetCommand = new RellayCommand(Toownkabinet);
            StatistikaCommand = new RellayCommand(ToStatistika);
            OpoveshCommand = new RellayCommand(opovesh);
            var currentUserId = CurrentUser.GetUserId();
            var outter = from dict in _db.Orders where dict.UserId == currentUserId orderby dict.OrderId descending select dict;//linq
            Orders = new  ObservableCollection<Order>(outter);
            
          
            var d = from dict in _db.Orders where dict.UserId == currentUserId select dict;
            int o=0;
            if (d.Count() > 0)
            {
                foreach (var item in d)
                {
                    if (item.Opovesh > 0)
                    {
                        o++;
                    } 
                }
                if (o > 0)
                { 
                    Message ="ОПОВЕЩАНИЕ!!!\nстатус заказов был\nизменен админом";  
                }
                else
                { 
                }
            }
            else
            {  
            }


            
        }
        public ObservableCollection<Order> Orders { get; set; }
        public RellayCommand AddOrderCommand { get; }
        public RellayCommand LogOutCommand { get; }
        public RellayCommand RefreshCommand { get; }
        public RellayCommand OwnkabinetCommand { get; }
        public RellayCommand StatistikaCommand { get; }
        public RellayCommand OpoveshCommand { get; }

        public void RefreshPage(object o)
        {
            App.HomePage = new home();
            App.MainWindowViewModel.CurrentPage = App.HomePage;
        }
        public void LogOut(object o)
        {
            MessageBoxResult result = MessageBox.Show("Вы уверены что хотите покинуть свой аккаунт?", "Предупреждение!", MessageBoxButton.YesNo);
            switch (result)
            {
                case MessageBoxResult.Yes:
                    App.LoginPage = new login();
                    App.MainWindowViewModel.CurrentPage = App.LoginPage;
                    break;
                case MessageBoxResult.No:
                    break;
            }
        }
        public void AddOrder(object o)
        {
            App.AddorderPage = new addorder();
            App.MainWindowViewModel.CurrentPage = App.AddorderPage;
        }
        public void Toownkabinet(object o)
        {
            App.OwnKabinet = new ownkabinet();
            App.MainWindowViewModel.CurrentPage = App.OwnKabinet;
        }
        public void ToStatistika(object o)
        {
            App.Statistika = new statistika();
            App.MainWindowViewModel.CurrentPage = App.Statistika;
        }
        public void opovesh(object o)
        {
            var currentUserId = CurrentUser.GetUserId();
            var d = from dict in _db.Orders where dict.UserId == currentUserId select dict;
            foreach (var item in d)
            {
                item.Opovesh = 0;
            }
            _db.SaveChanges();
            var knopka = o as Button;
            Message = ""; 
            knopka.Visibility = Visibility.Hidden;
        }
        public string Message
        {
            get => message;
            set
            {
                message = value;
                OnPropertyChanged(nameof(Message));
            }
        }
    }
}
