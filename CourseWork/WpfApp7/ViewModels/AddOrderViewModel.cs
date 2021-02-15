using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;
using System.Text.RegularExpressions;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Media;
using WpfApp7.Commands;
using WpfApp7.pages;
namespace WpfApp7.ViewModels
{
    class AddOrderViewModel : ViewModelBase
    {
        private readonly Model1 _db = new Model1();
        public Fuel selectedFuel;
        private string userName;
        private string amount;
        private string text;
        private string message;
        private ObservableCollection<Fuel> fuels;

        public AddOrderViewModel()
        {
        
            LogOutCommand = new RellayCommand(ToAuthorization);
            AddOrderCommand = new RellayCommand(AddOrder);
            ToOrdersCommand = new RellayCommand(ToOrders);

            var outter = from dict in _db.Fuels select dict;//linq  
            Fuels = new ObservableCollection<Fuel>(outter); 
        }

        public RellayCommand AddOrderCommand { get; }
        public RellayCommand LogOutCommand { get; }
        public RellayCommand ToOrdersCommand { get; }

        public ObservableCollection<Fuel> Fuels
        {
            get => fuels;
            set
            {
                fuels = value;
                OnPropertyChanged(nameof(Fuels));
            }
        }
        public string UserName
        {
            get => userName;
            set
            {
                userName = value;
                OnPropertyChanged(nameof(UserName));
            }
        }
        public string Amount
        {
            get => amount;
            set
            {
                amount = value;
                OnPropertyChanged(nameof(Amount));
            }
        }
        public string Text
        {
            get => text;
            set
            {
                text = value;
                OnPropertyChanged(nameof(Text));
            }
        }
        public Fuel SelectedFuel
        {
            get => selectedFuel;
            set
            {
                selectedFuel = value;
                OnPropertyChanged("SelectedFuel");
            }
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

        private async void AddOrder(object o)
        {
            var label = o as Label;
            label.Foreground = new SolidColorBrush(Colors.Red);
            Regex r3 = new Regex(@"^[0-9]+[,]{0,1}[0-9]*$");
            Regex r2 = new Regex(@"^[a-zA-Zа-яА-Я]*$");
            Regex r4 = new Regex(" ");
            double f;
            double.TryParse(Amount, out f);
            if (selectedFuel == null)
            {
                Message = null;
                Message="Выберите топливо"; 
            }
            else if (UserName == null || UserName.Equals(""))
            {
                Message = null;
                Message = "Укажите Фамилию Заказчика";
            }
            else if (Amount==null||Amount.Equals(""))
            {
                Message = null;
                Message ="заполните количество";
            }
            else if (r4.IsMatch(UserName))
            {
                Message = null;
                Message="Фамилия не должна\nсодержать пробелы";
            }
            else if (r4.IsMatch(Amount))
            {
                Message = null;
                Message="Количество не должен\nсодержать пробелы";
            }
            else if (f <= 0)
            {
                Message = null;
                Message="Проверьте ввод количество литров\n(если не целочисленное то\nукажите так: X,XXX)";
            }
          
            else  if ( f > selectedFuel.Left)
            {
                Message = null;
                Message="Укажите Верное количество\n(смотрите на оставщиеся\nколичество литров выбронного\nтопливо)";            
            }
            else if (!r3.IsMatch(Amount))
            {
                Message = null;
                Message="Проверьте ввод количество литров\n(если не целочисленное\nто укажите так: X,XXX)";
            
            }
            else if (!r2.IsMatch(UserName))
            { 
                Message = null;
                Message="Проверьте ввод Фамилии\n(должны быть только буквы)"; 
            }
           
            else
            {
                if (Text == null ||Text.Equals(""))
                {
                    var add = new Order
                    {
                        UserId = CurrentUser.GetUserId(),
                        FullCost = f * selectedFuel.Cost,
                        Name = UserName,
                        Amount = f,
                        Text = "без комментариев",
                        // Status = "Не принят",
                        Status2 = false,
                        Opovesh = 0,
                        When = DateTime.Now,
                        FuelId = selectedFuel.FuelId,
                    };
                    _db.Orders.Add(add);//добавляем 
                    var d = from dict in _db.Fuels select dict;
                    var user = d.FirstOrDefault(x => x.FuelId == selectedFuel.FuelId);
                    var e = (Fuel)user;
                    e.Left =e.Left-f; 
                    await _db.SaveChangesAsync();
                }
                else
                {
                    var add = new Order
                    {
                        UserId = CurrentUser.GetUserId(),
                        FullCost = f * selectedFuel.Cost,
                        Name = UserName,
                        Amount = f,
                        Text = Text,
                       // Status = "Не принят",
                        Status2 = false,
                        When = DateTime.Now,
                        FuelId = selectedFuel.FuelId,
                    };
                    _db.Orders.Add(add);//добавляем 
                    var d = from dict in _db.Fuels select dict;
                    var user = d.FirstOrDefault(x => x.FuelId == selectedFuel.FuelId);
                    var e = (Fuel)user;
                    e.Left = e.Left - f;
                    await _db.SaveChangesAsync();
                }
               
                Color r = Colors.Green;
                label.Foreground = new SolidColorBrush(Colors.Green);
                Message ="заказ добавлен";
                var outter = from dict in _db.Fuels select dict;//linq  
                Fuels = new ObservableCollection<Fuel>(outter); 
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
