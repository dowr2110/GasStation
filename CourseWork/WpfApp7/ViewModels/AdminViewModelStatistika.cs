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
    class AdminViewModelStatistika : ViewModelBase
    {
        private readonly Model1 _db = new Model1();
        private double allcol = 0;
        private double allfulcost = 0;
        private double allcol2 = 0;
        private double allfulcost2 = 0;
        //private double allcol3 = 0;
        //private double allfulcost3 = 0;

        public AdminViewModelStatistika()
        { 
            ToOrdersCommand = new RellayCommand(ToOrders);

          
            var outter = from dict in _db.Orders select dict;//linq

            foreach (var item in outter)
            {
                Allfulcost = Allfulcost + item.FullCost;
                Allcol = Allcol + item.Amount;
            }
            foreach (var item in outter)
            {
                if (item.When.Month == DateTime.Now.Month)
                {
                    Allfulcost2 = Allfulcost2 + item.FullCost;
                    Allcol2 = Allcol2 + item.Amount;
                }
            }
            //foreach (var item in outter)
            //{
            //    if (item.When.Month == DateTime.Now.Month - 1)
            //    {
            //        Allfulcost3 = Allfulcost3 + item.FullCost;
            //        Allcol3 = Allcol3 + item.Amount;
            //    }
            //}

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
        //public double Allcol3
        //{
        //    get => allcol3;
        //    set
        //    {
        //        allcol3 = value;
        //        OnPropertyChanged(nameof(Allcol3));
        //    }
        //}
        //public double Allfulcost3
        //{
        //    get => allfulcost3;
        //    set
        //    {
        //        allfulcost3 = value;
        //        OnPropertyChanged(nameof(Allfulcost3));
        //    }
        //}
        
        private void ToOrders(object obj)
        {
            App.AdminPage = new adminPage();
            App.MainWindowViewModel.CurrentPage = App.AdminPage;
        }

    }
}
