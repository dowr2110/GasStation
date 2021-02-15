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
    class RegistrationViewModel : ViewModelBase
    {
        private readonly Model1 _db = new Model1();
        private string userName="";
        private string password="";
        private string message;
        private string message2;
        
        public RegistrationViewModel()
        {
            ToAuthorizationCommand = new RellayCommand(ToAuthorization);
            RegisterCommand = new RellayCommand(RegisterAction);
           
        }
        public RellayCommand RegisterCommand { get; }
        public RellayCommand ToAuthorizationCommand { get; }
       

        private void ToAuthorization(object obj)
        {
            App.LoginPage = new login();
            App.MainWindowViewModel.CurrentPage = App.LoginPage;
        }
       
        private void RegisterAction(object obj)
        {
            Message2 = "";
            //var outter = from dict in _db.Users where dict.Name == UserName select dict;//linq
           
            Regex r11 = new Regex(UserName);
            Regex r22 = new Regex(Password);
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
            var confirmpasswordBox = obj as PasswordBox;

            var admiiin = from dict in _db.Admins select dict;
            var j = admiiin.FirstOrDefault();
            
            Regex r = new Regex(@"^[a-zA-Zа-яА-Я]{3,}[a-zA-Zа-яА-Я0-9(\S)]{1,20}"); 
            Regex r2 = new Regex(" ");
            Regex r3 = new Regex(@"[a-zA-Zа-яА-Я0-9]{4,20}");
            //if (UserName==null && Password==null && confirmpasswordBox.Password==null)
            //{
            //    Message="Нужно заполнить все поля перед добавлением"; 
            //}
            if (UserName.Equals("") && Password.Equals("") && confirmpasswordBox.Password.Equals(""))
            {
                Message="Нужно заполнить все поля перед добавлением";
            }
            else if (UserName.Equals("") || Password.Equals("") || confirmpasswordBox.Password.Equals(""))
            {
                Message = "Нужно заполнить все поля перед добавлением";
            }
            else if (!confirmpasswordBox.Password.Equals(Password))
            {
                Message="не верный потвержденный пороль";
            }
            else if (UserName == j.Name)
            {
                Message="Такой пользователь уже сушествует!";
            }
            else if (r2.IsMatch(UserName))
            {
                Message="Логин не должен содержать пробелы";
            }
            else if (r2.IsMatch(Password))
            {
                Message="пороль не должен содержать пробелы";
            }
            else if (!r.IsMatch(UserName))
            {
                Message="Логин пользователя должен содержать\nот 4 до 20 символов\n(первые 3 символа должны быть буквами)";
            }
            else if (!r3.IsMatch(Password))
            {
                Message="пороль должен содержать от 4 до 20 символов\n(только буквы и цыфры) ";
            }
            else
            { 
                if (t==0)
                {
                    var add = new User
                    {
                        Name = UserName,
                        Password = confirmpasswordBox.Password.GetHashCode().ToString() 
                    };
                     
                    _db.Users.Add(add);//добавляем 
                     _db.SaveChanges();//сохраняем
                    Message = "";
                    Message2="Пользователь зарегистрирован"; 
                    MessageBoxResult result = MessageBox.Show("Хотите ли сразу войти под этим пользователем?", "Предупреждение!", MessageBoxButton.YesNo);
                    switch (result)
                    {
                        case MessageBoxResult.Yes:
                            {
                                CurrentUser.SetUserId(add.Id);
                                App.HomePage = new home();
                                App.MainWindowViewModel.CurrentPage = App.HomePage;
                                Message2 = "";
                                break;
                            }
                        case MessageBoxResult.No:
                            {
                                Password = null;
                                UserName = null;
                                confirmpasswordBox.Password = null;
                                break;
                            }
                    }
              
                }
                else
                {
                    Message="Такой пользователь уже сушествует!";
                }
            }
        }

        public string UserName
        {
            get { return userName; }
            set
            {
                userName = value;
                OnPropertyChanged(nameof(UserName));
            }
        }
        public string Password
        {
            get { return password; }
            set
            {
                password = value;
                OnPropertyChanged(nameof(Password));
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
        public string Message2
        {
            get => message2;
            set
            {
                message2 = value;
                OnPropertyChanged(nameof(Message2));
            }
        }
    }
}
