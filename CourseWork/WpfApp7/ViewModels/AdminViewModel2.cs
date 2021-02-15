 
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
    class AdminViewModel2 : ViewModelBase
    {
        private readonly Model1 _db = new Model1();
        private string nametbx;
        private string costtbx; 
        private string lefttbx; 
        private string searchtbx;
        private ObservableCollection<Fuel> fuels;
        public AdminViewModel2()
        {
            Updatecommand = new RellayCommand(Update);
            ToOrderscommand = new RellayCommand(Toorders);
            Addfuelcommand = new RellayCommand(Addfuel);
            ToAuthorizationCommand = new RellayCommand(Toauthorization);
            ToUsersCommand = new RellayCommand(Tousers);
            Deletefuelcommand = new RellayCommand(Delete);
            Searchfuelcommand = new RellayCommand(Search);
            RefreshCommand = new RellayCommand(Refresh);
            Zapolnitfuelcommand = new RellayCommand(Zapolnit);
            ToStatistikaCommand = new RellayCommand(ToStatistika);
            ChangePasswordCommand = new RellayCommand(ToChangePassword);

            var outter = from dict in _db.Fuels select dict;//linq   
            Fuels = new ObservableCollection<Fuel>(outter);
        }

        public RellayCommand Zapolnitfuelcommand { get; }
        public RellayCommand Updatecommand { get; }
        public RellayCommand ToOrderscommand { get; }
        public RellayCommand ToAuthorizationCommand { get; }
        public RellayCommand ToUsersCommand { get; }
        public RellayCommand Addfuelcommand { get; }
        public RellayCommand Deletefuelcommand { get; }
        public RellayCommand Searchfuelcommand { get; }
        public RellayCommand RefreshCommand { get; }
        public RellayCommand ToStatistikaCommand { get; }
        public RellayCommand ChangePasswordCommand { get; }

        private async void Update(object o)
        {
            Regex r3 = new Regex(@"^[0-9]+[,]{0,1}[0-9]*$");
            int g = 0;
            double f=0;
            foreach (var item in Fuels)
            {
                if (item.Name == null || item.Name.Equals("") || item.Cost == 0 || item.Cost.Equals("") || item.Left == 0 || item.Left.Equals(""))
                {
                    MessageBox.Show("Проверьте ввод информации ");
                    App.AdminPage2 = new adminPage2();
                    App.MainWindowViewModel.CurrentPage = App.AdminPage2;
                    return;
                }
                else if (!r3.IsMatch(Convert.ToString(item.Cost)))
                {
                    MessageBox.Show($"Неправильный ввод {item.Cost}");
                    App.AdminPage2 = new adminPage2();
                    App.MainWindowViewModel.CurrentPage = App.AdminPage2;
                    return;
                }
                else if (!r3.IsMatch(Convert.ToString(item.Left)))
                {
                    MessageBox.Show($"Неправильный ввод {item.Cost} ");
                    App.AdminPage2 = new adminPage2();
                    App.MainWindowViewModel.CurrentPage = App.AdminPage2;
                    return;
                }
                else if(!item.Cost.Equals(typeof(double)))
                {
                    MessageBox.Show("Неправильный ввод цены");
                    App.AdminPage2 = new adminPage2();
                    App.MainWindowViewModel.CurrentPage = App.AdminPage2;
                    return;
                }
                else if (!item.Left.Equals(typeof(double)))
                {
                    MessageBox.Show("Неправильный ввод остатка");
                    App.AdminPage2 = new adminPage2();
                    App.MainWindowViewModel.CurrentPage = App.AdminPage2;
                    return;
                }
                else
                {
                    g++;
                }               
            }
            if(g>0)
            {
                await _db.SaveChangesAsync();
                MessageBox.Show("Изменении сохранено");
                App.AdminPage2 = new adminPage2();
                App.MainWindowViewModel.CurrentPage = App.AdminPage2;
            }
            else
            {
               
            }
        }
        private void ToChangePassword(object o)
        {
            App.AdminPageChangePassword = new adminPageChangePassword();
            App.MainWindowViewModel.CurrentPage = App.AdminPageChangePassword;
        }
        private async void Delete(object o)
        {
            var datagrid = o as DataGrid;
            var p1 = (Fuel)datagrid.SelectedItem;//полнчаем выбранное поле с datagrid(явно указываем тип)
            if (p1 != null)
            { 
                MessageBoxResult result = MessageBox.Show("Вы уверены что хотите удалить выбранное топливо?", "Предупреждение!", MessageBoxButton.YesNo);
                switch(result)
                {
                    case MessageBoxResult.Yes:
                        _db.Fuels.Remove(p1);
                        await _db.SaveChangesAsync(); 
                        break;
                    case MessageBoxResult.No:
                        break;
                } 
            } 
            else
            {
                MessageBox.Show("Выберите какое торливо удалять");
            }
            var outter = from dict in _db.Fuels select dict;//linq 
            Fuels = new ObservableCollection<Fuel>(outter);
        }
        private async void Zapolnit(object o)
        {
            var d = from dict in _db.Fuels where dict.Left==0 select dict;
            if (d.Count() == 0)
            {
                MessageBox.Show("Пока нет пустых топлив");
            }
            else
            {
                foreach (var item in d)
                {
                    item.Left = 50000;
                }
                await _db.SaveChangesAsync();
                MessageBox.Show("Заполнено");
                var outter = from dict in _db.Fuels select dict;//linq   
                Fuels = new ObservableCollection<Fuel>(outter);
            }
        }
        private async void Addfuel(object o)
        {
            var outter = from dict in _db.Fuels where dict.Name == Nametbx select dict;//linq 
            Regex r3 = new Regex(@"^[0-9]+[,]{0,1}[0-9]*$");
            double f;
            double d;

            if (Nametbx == null ||Nametbx.Equals("")||Costtbx==null||Costtbx.Equals("")||Lefttbx==null||Lefttbx.Equals(""))
            {
               MessageBox.Show("Проверьте ввод информации перед добавлением топливо\n(должны быть заполнены все поля)");
            }
            else if(!r3.IsMatch(Costtbx))
            {
                MessageBox.Show("Проверьте ввод цены\n(если не целочисленное то укажите так: X,XXX)");
                return;
            }
            else if (!r3.IsMatch(Lefttbx))
            {
                MessageBox.Show("Проверьте ввод остатка\n(если не целочисленное то укажите так: X,XXX)");
                return;
            } 
            else
            {
                if (outter.Count() == 0)
                {
                    double.TryParse(Costtbx, out f);
                    double.TryParse(Lefttbx, out d);
                    var add = new Fuel
                    {
                        Name = Nametbx,
                        Cost = f,
                        Left = d
                    };
                    _db.Fuels.Add(add);//добавляем 
                    await _db.SaveChangesAsync();//сохраняем
                    MessageBox.Show("топливо добавлено");
                    var outterr = from dict in _db.Fuels select dict;//linq   
                    Fuels = new ObservableCollection<Fuel>(outterr);
                }
                else
                {
                    MessageBox.Show("топливо с таким именем уже сушествует!");
                }
            }
        }
        private void Toorders(object o)
        {
            App.AdminPage = new adminPage();
            App.MainWindowViewModel.CurrentPage = App.AdminPage;
        }
        private void Tousers(object o)
        {
            App.AdminPage3 = new adminPage3();
            App.MainWindowViewModel.CurrentPage = App.AdminPage3;
        }
        private void Toauthorization(object o)
        {
            App.LoginPage = new login();
            App.MainWindowViewModel.CurrentPage = App.LoginPage;
        }
        private void Refresh(object o)
        {
            App.AdminPage2 = new adminPage2();
            App.MainWindowViewModel.CurrentPage = App.AdminPage2;
        }
        private void ToStatistika(object o)
        {
            App.AdminPageStatistika = new adminPageStatistika();
            App.MainWindowViewModel.CurrentPage = App.AdminPageStatistika;
        }
        public ObservableCollection<Fuel> Fuels
        {
            get => fuels;
            set
            {
                fuels = value;
                OnPropertyChanged(nameof(Fuels));
            }
        }
        public string Nametbx
        {
            get { return nametbx; }
            set
            {
                nametbx = value;
                OnPropertyChanged(nameof(Nametbx));
            }
        }
        public string Costtbx
        { 
            get
            { 
                return costtbx;
            }
            set
            { 
                costtbx = value; 
                OnPropertyChanged(nameof(Costtbx)); 
                
            } 
        }
        public string Lefttbx
        {
            get
            {
             
                return lefttbx;
            }
            set
            {
                lefttbx = value;
                OnPropertyChanged(nameof(Lefttbx));
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
        private void Search(object o)
        {

            var combobox = o as ComboBox;
            if (Searchtbx == null)
            {
                MessageBox.Show("заполните поле для поиска");
                var outter = from dict in _db.Fuels select dict;//linq   
                Fuels = new ObservableCollection<Fuel>(outter);
            }
            else if (Searchtbx.Equals(""))
            {
                MessageBox.Show("заполните поле для поиска");
                var outter = from dict in _db.Fuels select dict;//linq   
                Fuels = new ObservableCollection<Fuel>(outter);
            }

            else if (combobox.SelectedIndex == 0)
            {
                Regex r = new Regex(Searchtbx);
                List<Fuel> rez = new List<Fuel>();
                var users = from dict in _db.Fuels
                            select dict;//linq  
                foreach (var item in users)
                {
                    if ( r.IsMatch(Convert.ToString(item.FuelId)) )
                    {
                        rez.Add(item);
                    }
                }
                Fuels = new ObservableCollection<Fuel>(rez); 
            }
            else if (combobox.SelectedIndex == 1)
            {
                Regex r = new Regex(Searchtbx);
                List<Fuel> rez = new List<Fuel>();
                var users = from dict in _db.Fuels
                            select dict;//linq  
                foreach (var item in users)
                {
                    if (r.IsMatch(item.Name))
                    {
                        rez.Add(item);
                    }
                }
                Fuels = new ObservableCollection<Fuel>(rez);
            }
            else if (combobox.SelectedIndex == 2)/////////////////////////
            {
                  Regex r = new Regex(Searchtbx);
                List<Fuel> rez = new List<Fuel>();
                var users = from dict in _db.Fuels
                            select dict;//linq  
                foreach (var item in users)
                {
                    if ( r.IsMatch(Convert.ToString(item.Cost)) )
                    {
                        rez.Add(item);
                    }
                }
                Fuels = new ObservableCollection<Fuel>(rez); 
            }
            else if (combobox.SelectedIndex == 3)
            {
                Regex r = new Regex(Searchtbx);
                List<Fuel> rez = new List<Fuel>();
                var users = from dict in _db.Fuels
                            select dict;//linq  
                foreach (var item in users)
                {
                    if (r.IsMatch(Convert.ToString(item.Left)))
                    {
                        rez.Add(item);
                    }
                }
                Fuels = new ObservableCollection<Fuel>(rez);
            }
            else if (combobox.SelectedItem == null)
            {
                Regex r = new Regex(Searchtbx);
                List<Fuel> rez = new List<Fuel>();
                var users = from dict in _db.Fuels
                            select dict;//linq  
                foreach (var item in users)
                {
                    if (r.IsMatch(item.Name)||r.IsMatch(Convert.ToString(item.FuelId)) || r.IsMatch(Convert.ToString(item.Cost)) || r.IsMatch(Convert.ToString(item.Left)))
                    {
                        rez.Add(item);
                    }
                }
                Fuels = new ObservableCollection<Fuel>(rez);
            }
          


        }
    }
}
