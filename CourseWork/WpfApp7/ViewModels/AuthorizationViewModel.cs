using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
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
    class AuthorizationViewModel: ViewModelBase
    {
        private readonly Model1 _db = new Model1();
        public RellayCommand LoginCommand { get; }
        public RellayCommand RegisterCommand { get; }
        private string userName="";
        private string message;

        public AuthorizationViewModel()
        { 
            LoginCommand = new RellayCommand(EnterAction);
            RegisterCommand = new RellayCommand(RegisterAction);

            var outher = from dict in _db.Admins select dict;
            if(outher.Count()==0)
            {
                var admin = new Admin()
                {
                    Name = "admin",
                    Password = "1156371652"
                };
                _db.Admins.Add(admin);
                _db.SaveChanges();//сохраняем
                Message="Админ создан";
            }
            else
            {
                return;
            }
           
        }
    
         public string UserName
        {
            get => userName;
            set
            {
                userName = value;
                OnPropertyChanged("UserName");
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


        private void EnterAction(object obj)
        {  
            var passwordBox = obj as PasswordBox;

            Regex r = new Regex(UserName);
            Regex r2 = new Regex(passwordBox.Password.GetHashCode().ToString());

            var users = from dict in _db.Users
                        select dict;//linq 

            int t = 0; 
            foreach (var item in users)
            {
                if (r.IsMatch(item.Name) && r2.IsMatch(item.Password))
                {
                    t++; 
                    CurrentUser.SetUserId(item.Id);
                }
            }


            var admiiin = from dict in _db.Admins select dict;
            var j = admiiin.FirstOrDefault();
            
            if (UserName==null||passwordBox.Password==null)
            {
                Message="Поля пустые";
            }
            else if (UserName.Equals("") || passwordBox.Password.Equals(""))
            {
                Message="Поля пустые";
            }
            else if (UserName==j.Name && passwordBox.Password.GetHashCode().ToString()==j.Password)
            {
                App.AdminPage = new adminPage();
                App.MainWindowViewModel.CurrentPage = App.AdminPage;
            }
            else
            {
                if (t == 0)
                {
                    Message="неверный логин или пороль";
                }
                else
                { 
                    App.HomePage = new home();
                    App.MainWindowViewModel.CurrentPage = App.HomePage;
                    Message = "";
                }
            }
        }
        private void RegisterAction(object obj)
        { 
            App.RegistrPage = new registration();
            App.MainWindowViewModel.CurrentPage = App.RegistrPage;
        }
    }
}
