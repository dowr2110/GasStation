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
    class AdminViewModel3 : ViewModelBase
    {
        private readonly Model1 _db = new Model1();
        private ObservableCollection<User> users;
        private string nametbx="";
        private string passwordtbx;
        private string searchtbx;
   
        public AdminViewModel3()
        {
            Updatecommand = new RellayCommand(Update);
            ToOrderscommand = new RellayCommand(Toorders);
            ToAuthorizationCommand = new RellayCommand(Toauthorization);
            ToFuelsCommand = new RellayCommand(Tofuels);
            Deleteusercommand = new RellayCommand(Delete);
            Addusercommand = new RellayCommand(Adduser);
            Searchfuelcommand = new RellayCommand(Search);
            RefreshCommand = new RellayCommand(Refresh);
            ToStatistikaCommand = new RellayCommand(ToStatistika);
            ChangePasswordCommand = new RellayCommand(ToChangePassword);

            var outter = from dict in _db.Users select dict;//linq   
            Users = new ObservableCollection<User>(outter);
        }
        public ObservableCollection<User> Users
        {
            get => users;
            set
            {
                users = value;
                OnPropertyChanged(nameof(Users));
            }
        }

        public RellayCommand Updatecommand { get; }
        public RellayCommand ToOrderscommand { get; }
        public RellayCommand ToAuthorizationCommand { get; }
        public RellayCommand ToFuelsCommand { get; }
        public RellayCommand Deleteusercommand { get; }
        public RellayCommand Addusercommand { get; }
        public RellayCommand Searchfuelcommand { get; }
        public RellayCommand RefreshCommand { get; }
        public RellayCommand ToStatistikaCommand { get; }
        public RellayCommand ChangePasswordCommand { get; }

        private  void Update(object o)
        {
            _db.SaveChanges();
            MessageBox.Show("Изменении сохранено"); 
        }
        private void ToChangePassword(object o)
        {
            App.AdminPageChangePassword = new adminPageChangePassword();
            App.MainWindowViewModel.CurrentPage = App.AdminPageChangePassword;
        }
        private void Toorders(object o)
        {
            App.AdminPage = new adminPage();
            App.MainWindowViewModel.CurrentPage = App.AdminPage;
        }
        private void Toauthorization(object o)
        {
            App.LoginPage = new login();
            App.MainWindowViewModel.CurrentPage = App.LoginPage;
        }
        private void Tofuels(object o)
        {
            App.AdminPage2 = new adminPage2();
            App.MainWindowViewModel.CurrentPage = App.AdminPage2;
        }
        private void Refresh(object o)
        {
            App.AdminPage3 = new adminPage3();
            App.MainWindowViewModel.CurrentPage = App.AdminPage3;
        }
        private void ToStatistika(object o)
        {
            App.AdminPageStatistika = new adminPageStatistika();
            App.MainWindowViewModel.CurrentPage = App.AdminPageStatistika;
        }
        private async void Adduser(object o)
        {
            Regex r11 = new Regex(Nametbx);
         //   Regex r22 = new Regex(Passwordtbx);
            var users = from dict in _db.Users
                        select dict;//linq 

            int t = 0;
            foreach (var item in users)
            {
                if (r11.IsMatch(item.Name))
                {
                    t++;
                }
            } 


            Regex r = new Regex(@"^[a-zA-Z]{3,}[a-zA-Z0-9(\S)]{1,20}");
            Regex r2 = new Regex(" ");
            Regex r3 = new Regex(@"[a-zA-Z0-9]{4,20}");
          //  var outter = from dict in _db.Users where dict.Name == Nametbx select dict;//linq 
            if (Nametbx == null || Passwordtbx == null )
            {
                MessageBox.Show("Нужно заполнить все поля перед добавлением пользователя");
            }
            else if (Nametbx.Equals("") || Passwordtbx.Equals(""))
            {
                MessageBox.Show("Нужно заполнить все поля перед добавлением пользователя");
            } 
            else if (r2.IsMatch(Nametbx))
            {
                MessageBox.Show("Логин не должен содержать пробелы");
            }
            else if (r2.IsMatch(Passwordtbx))
            {
                MessageBox.Show("пороль не должен содержать пробелы");
            }
            else if (!r.IsMatch(Nametbx))
            {
                MessageBox.Show("Логин должен содержать от 4 до 20 символов\n(первые 3 символа должны быть буквами)");
            }
            else if (!r3.IsMatch(Passwordtbx))
            {
                MessageBox.Show("пороль должен содержать от 4 до 20 символов\n(только буквы и цыфры) ");
            }
            else
            {
                if (t == 0)
                {
                    var add = new User
                    {
                        Name = Nametbx,
                        Password = Passwordtbx.GetHashCode().ToString() 
                    };
                    _db.Users.Add(add);//добавляем 
                    await _db.SaveChangesAsync();//сохраняем
                    MessageBox.Show("пользователь добавлен");
                    var outterr = from dict in _db.Users select dict;//linq   
                    Users = new ObservableCollection<User>(outterr);
                }
                else
                {
                    MessageBox.Show("пользователь с таким логином уже сушествует!");
                }
            }
        }
        private  void Delete(object o)
        {
                var datagrid = o as DataGrid;
                var p1 = (User)datagrid.SelectedItem;//полнчаем выбранное поле с datagrid(явно указываем тип)
                if (p1 != null)
                {
                    MessageBoxResult result = MessageBox.Show("Вы уверены что хотите удалить пользователя?", "Предупреждение!", MessageBoxButton.YesNo);
                    switch (result)
                    {
                        case MessageBoxResult.Yes:
                            _db.Users.Remove(p1);
                             _db.SaveChanges();
                            break;
                        case MessageBoxResult.No:
                            break;
                    }
                }
                else
                {
                    MessageBox.Show("Выберите какого пользователя удалять");
                }
                var outter = from dict in _db.Users select dict;//linq 
                Users = new ObservableCollection<User>(outter);
        } 
        private void Search(object o)
        {

            var combobox = o as ComboBox;
            if (Searchtbx == null)
            {
                MessageBox.Show("заполните поле для поиска");
                var outter = from dict in _db.Users select dict;//linq   
                Users = new ObservableCollection<User>(outter);
            }
            else if (Searchtbx.Equals(""))
            {
                MessageBox.Show("заполните поле для поиска");
                var outter = from dict in _db.Users select dict;//linq   
                Users = new ObservableCollection<User>(outter);
            }

            else if (combobox.SelectedIndex == 0)
            {
                Regex r = new Regex(Searchtbx);
                List<User> rez = new List<User>();
                var users = from dict in _db.Users
                            select dict;//linq  
                foreach (var item in users)
                {
                    if ( r.IsMatch(Convert.ToString(item.Id)))
                    {
                        rez.Add(item);
                    }
                }
                Users = new ObservableCollection<User>(rez);
            }
            else if (combobox.SelectedIndex == 1)
            {
                Regex r = new Regex(Searchtbx);
                List<User> rez = new List<User>();
                var users = from dict in _db.Users
                            select dict;//linq  
                foreach (var item in users)
                {
                    if (r.IsMatch(item.Name))
                    {
                        rez.Add(item);
                    }
                }
                Users = new ObservableCollection<User>(rez);
            }
            else if (combobox.SelectedIndex == 2) 
            {
                Regex r = new Regex(Searchtbx);
                List<User> rez = new List<User>();
                var users = from dict in _db.Users
                            select dict;//linq  
                foreach (var item in users)
                {
                    if (r.IsMatch(item.Password))
                    {
                        rez.Add(item);
                    }
                }
                Users = new ObservableCollection<User>(rez);
            } 
            else if (combobox.SelectedItem == null)
            {
                Regex r = new Regex(Searchtbx);
                List<User> rez = new List<User>();
                var users = from dict in _db.Users
                            select dict;//linq  
                foreach (var item in users)
                {
                    if (r.IsMatch(item.Name) || r.IsMatch(Convert.ToString(item.Id)) || r.IsMatch( item.Password))
                    {
                        rez.Add(item);
                    }
                }
                Users = new ObservableCollection<User>(rez);
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
        public string Passwordtbx
        {
            get { return passwordtbx; }
            set
            {
                passwordtbx = value;
                OnPropertyChanged(nameof(Passwordtbx));
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
       
    }
}
