using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows; 
using System.Collections.ObjectModel;
using WpfApp7.Commands;
using WpfApp7.pages;
using System.Windows.Controls;
using System.Text.RegularExpressions;

namespace WpfApp7.ViewModels
{ 
    class AdminViewModel :ViewModelBase
    {
        private readonly Model1 _db = new Model1();
        private ObservableCollection<Order> orders;
        private string searchtbx;
  
        public AdminViewModel()
        {
            Updatecommand = new RellayCommand(Update);
            ToAuthorizationCommand = new RellayCommand(ToAuthorization);
            ToFuelsCommand = new RellayCommand(ToFuels);
            ToUsersCommand = new RellayCommand(ToUsers);
            SearchCommand = new RellayCommand(Search);
            RefreshCommand = new RellayCommand(Refresh);
            ToStatistikaCommand = new RellayCommand(ToStatistika);
            ChangePasswordCommand = new RellayCommand(ToChangePassword);
            Deleteordercommand = new RellayCommand(deleteorders);

            var outter = from dict in _db.Orders select dict;//linq   
            Orders = new ObservableCollection<Order>(outter);
        } 

        public RellayCommand Updatecommand { get; }
        public RellayCommand ToAuthorizationCommand { get; }
        public RellayCommand ToFuelsCommand { get; }
        public RellayCommand ToUsersCommand { get; }
        public RellayCommand SearchCommand { get; }
        public RellayCommand RefreshCommand { get; }
        public RellayCommand ToStatistikaCommand { get; }
        public RellayCommand ChangePasswordCommand { get; }
        public RellayCommand Deleteordercommand { get; }

        public ObservableCollection<Order> Orders
        {
            get => orders;
            set
            {
                orders = value;
                OnPropertyChanged(nameof(Orders));
            }
        }
        public string Searchtbx
        {
            get { return searchtbx; }
            set
            {
                searchtbx = value;
                OnPropertyChanged(nameof(Searchtbx));
            } 
        } 
        private void ToAuthorization(object o)
        {
            App.LoginPage = new login();
            App.MainWindowViewModel.CurrentPage = App.LoginPage;
        }
        private void ToFuels(object o)
        {
            App.AdminPage2 = new adminPage2();
            App.MainWindowViewModel.CurrentPage = App.AdminPage2;
        }
        private void ToUsers(object o)
        {
            App.AdminPage3 = new adminPage3();
            App.MainWindowViewModel.CurrentPage = App.AdminPage3;
        }
        private void ToChangePassword(object o)
        {
            App.AdminPageChangePassword = new adminPageChangePassword();
            App.MainWindowViewModel.CurrentPage = App.AdminPageChangePassword;
        }
        private async void Update(object o)
        {   
            MessageBox.Show("Изменении сохранены"); 
            await _db.SaveChangesAsync();
            var outter = from dict in _db.Orders select dict;//linq   
            Orders = new ObservableCollection<Order>(outter);
        }
        private void Refresh(object o)
        { 
            App.AdminPage = new adminPage();
            App.MainWindowViewModel.CurrentPage = App.AdminPage;
        }
        private void ToStatistika(object o)
        {
            App.AdminPageStatistika = new adminPageStatistika();
            App.MainWindowViewModel.CurrentPage = App.AdminPageStatistika;
        }
        private void deleteorders(object o)
        {
            var datagrid = o as DataGrid;
            var p1 = (Order)datagrid.SelectedItem;//полнчаем выбранное поле с datagrid(явно указываем тип)
            if (p1 != null)
            {
                MessageBoxResult result = MessageBox.Show("Вы уверены что хотите удалить выбранный заказ?", "Предупреждение!", MessageBoxButton.YesNo);
                switch (result)
                {
                    case MessageBoxResult.Yes:
                        _db.Orders.Remove(p1);
                        _db.SaveChanges();
                        break;
                    case MessageBoxResult.No:
                        break;
                }
            }
            else
            {
                MessageBox.Show("Выберите какой заказ удалять");
            }
            var outter = from dict in _db.Orders select dict;//linq 
            Orders = new ObservableCollection<Order>(outter);
        }
        private void Search(object o)
        {
            
            var combobox = o as ComboBox;
            if (Searchtbx == null)
            {
                MessageBox.Show("заполните поле для поиска");
                var outter = from dict in _db.Orders select dict;//linq   
                Orders = new ObservableCollection<Order>(outter);
            }
            else if (Searchtbx.Equals(""))
            {
                MessageBox.Show("заполните поле для поиска");
                var outter = from dict in _db.Orders select dict;//linq   
                Orders = new ObservableCollection<Order>(outter);
            }

            else if (combobox.SelectedIndex == 0)
            {
                Regex r = new Regex(Searchtbx);
                List<Order> rez = new List<Order>(); 
                var users = from dict in _db.Orders
                            select dict;//linq  
                foreach (var item in users)
                {
                    if (r.IsMatch(Convert.ToString(item.OrderId)))
                    {
                        rez.Add(item);
                    }
                } 
                Orders = new ObservableCollection<Order>(rez); 
            } 
            else if (combobox.SelectedIndex == 1)
            {
                Regex r = new Regex(Searchtbx);
                List<Order> rez = new List<Order>(); 
                var users = from dict in _db.Orders
                            select dict;//linq  
                foreach (var item in users)
                {
                    if (r.IsMatch(item.Name))
                    {
                        rez.Add(item);
                    }
                }
                Orders = new ObservableCollection<Order>(rez);
            }

            else if (combobox.SelectedIndex == 2)
            {

                Regex r = new Regex(Searchtbx);
                List<Order> rez = new List<Order>(); 
                var users = from dict in _db.Orders
                            select dict;//linq  
                foreach (var item in users)
                {
                    if (r.IsMatch(Convert.ToString(item.UserId)))
                    {
                        rez.Add(item);
                    }
                }
                Orders = new ObservableCollection<Order>(rez);
            }
            else if (combobox.SelectedIndex == 3)
            {

                Regex r = new Regex(Searchtbx);
                List<Order> rez = new List<Order>(); 
                var users = from dict in _db.Orders
                            select dict;//linq  
                foreach (var item in users)
                {
                    if (r.IsMatch(Convert.ToString(item.FuelId)))
                    {
                        rez.Add(item);
                    }
                }
                Orders = new ObservableCollection<Order>(rez);
            }
            else if (combobox.SelectedIndex == 4)
            {


                Regex r = new Regex(Searchtbx);
                List<Order> rez = new List<Order>(); 
                var users = from dict in _db.Orders
                            select dict;//linq  
                foreach (var item in users)
                {
                    if (r.IsMatch(item.Status))
                    {
                        rez.Add(item);
                    }
                }
                Orders = new ObservableCollection<Order>(rez);
            }
            else if (combobox.SelectedIndex == 5)
            {

                Regex r = new Regex(Searchtbx);
                List<Order> rez = new List<Order>();
    
                var users = from dict in _db.Orders
                            select dict;//linq  
                foreach (var item in users)
                {
                    if (r.IsMatch(Convert.ToString(item.Amount)))
                    {
                        rez.Add(item);
                    }
                }
                Orders = new ObservableCollection<Order>(rez);
            }
            else if (combobox.SelectedIndex == 6)
            {

                Regex r = new Regex(Searchtbx);
                List<Order> rez = new List<Order>(); 
                var users = from dict in _db.Orders
                            select dict;//linq  
                foreach (var item in users)
                {
                    if (r.IsMatch(Convert.ToString(item.FullCost)))
                    {
                        rez.Add(item);
                    }
                }
                Orders = new ObservableCollection<Order>(rez);
            } 
            else if (combobox.SelectedItem == null)
            {
                Regex r = new Regex(Searchtbx);
                List<Order> rez = new List<Order>(); 
                var users = from dict in _db.Orders
                            select dict;//linq  
                foreach (var item in users)
                {
                    if (r.IsMatch(item.Name) || r.IsMatch(Convert.ToString(item.OrderId)) || r.IsMatch(Convert.ToString(item.UserId)) || r.IsMatch(Convert.ToString(item.FuelId)) || r.IsMatch(item.Status) || r.IsMatch(Convert.ToString(item.Amount)) || r.IsMatch(Convert.ToString(item.FullCost)))
                    {
                        rez.Add(item);
                    }
                }
                Orders = new ObservableCollection<Order>(rez);
            } 
        }
    }
}




//var fuel =_db.Fuels.Find(1);
//_db.Fuels.Remove(fuel);
//_db.SaveChanges();

     

//private string namee;
//public string Namee
//{
//    get { return namee; }
//    set
//    {
//        namee = value;
//        OnPropertyChanged(nameof(Namee));
//    }
//}

//var datagrid = o as DataGrid;

//var p1 = (Order)datagrid.SelectedItem;
//if (p1 == null)
//{
//    MessageBox.Show("Нужно выбрать элемент который хотим изменить!");
//}
//else
//{
//    p1.Status = Namee;
//    await _db.SaveChangesAsync();

//}