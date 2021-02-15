using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;
using System.Text.RegularExpressions;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using WpfApp7.Commands;
using WpfApp7.pages;
namespace WpfApp7.ViewModels
{
    class statistikaViewModel:ViewModelBase
    {
        private readonly Model1 _db = new Model1();
        private double allcol =0;
        private double allfulcost =0;
        private double allcol2 = 0;
        private double allfulcost2 = 0;


        public statistikaViewModel()
        {
            ToAuthorizationCommand = new RellayCommand(ToAuthorization); 
            ToOrdersCommand = new RellayCommand(ToOrders);

            var currentUserId = CurrentUser.GetUserId();
            var outter = from dict in _db.Orders where dict.UserId == currentUserId orderby dict.OrderId descending select dict;//linq

            foreach (var item in outter)
            {
                Allfulcost = Allfulcost + item.FullCost;
                Allcol = Allcol + item.Amount;
            }
            foreach (var item in outter)
            {
                if (item.When.Month==DateTime.Now.Month)
                {
                    Allfulcost2 = Allfulcost2 + item.FullCost;
                    Allcol2 = Allcol2 + item.Amount;
                }
            }
 

        }
 
        public RellayCommand ToAuthorizationCommand { get; }
        public RellayCommand ToOrdersCommand { get; }

        public double Allcol
        {
            get => allcol;
            set
            {
                allcol = value;
                OnPropertyChanged(nameof(Allcol));
            }
        }
        public double Allfulcost
        {
            get => allfulcost;
            set
            {
                allfulcost = value;
                OnPropertyChanged(nameof(Allfulcost));
            }
        }
        public double Allcol2
        {
            get => allcol2;
            set
            {
                allcol2 = value;
                OnPropertyChanged(nameof(Allcol2));
            }
        }
        public double Allfulcost2
        {
            get => allfulcost2;
            set
            {
                allfulcost2 = value;
                OnPropertyChanged(nameof(Allfulcost2));
            }
        }

       
        private void ToAuthorization(object obj)
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
        private void ToOrders(object obj)
        {
            App.HomePage = new home();
            App.MainWindowViewModel.CurrentPage = App.HomePage;
        }
        
    }
}
