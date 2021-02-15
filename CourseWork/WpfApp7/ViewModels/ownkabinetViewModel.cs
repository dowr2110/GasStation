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
    class ownkabinetViewModel : ViewModelBase
    {
        private readonly Model1 _db = new Model1();
        private string pastPassword;
        private string password;
        private string message;
        private string message2;

        public ownkabinetViewModel()
        {
            ToAuthorizationCommand = new RellayCommand(ToAuthorization);
            ChangeParolCommand = new RellayCommand(ChangeParol);
            ToOrdersCommand = new RellayCommand(ToOrders);

        }
        public RellayCommand ChangeParolCommand { get; }
        public RellayCommand ToAuthorizationCommand { get; }
        public RellayCommand ToOrdersCommand { get; }


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
        private void ChangeParol(object obj)
        {
            Message2 = "";
            var currentUserId = CurrentUser.GetUserId();
            var outter = from dict in _db.Users where dict.Id == currentUserId select dict;//linq
            var e = outter.FirstOrDefault();
            
            var confirmpasswordBox = obj as PasswordBox;

            //var admiiin = from dict in _db.Admins select dict;
            //var j = admiiin.FirstOrDefault();

            Regex r = new Regex(@"^[a-zA-Z]{3,}[a-zA-Z0-9(\S)]{1,20}");
            Regex r2 = new Regex(" ");
            Regex r3 = new Regex(@"[a-zA-Z0-9]{4,20}");
            if (PastPassword == null || Password == null || confirmpasswordBox.Password == null)
            {
                Message="Нужно заполнить все поля ";
            }
            else if (PastPassword.Equals("") || Password.Equals("") || confirmpasswordBox.Password.Equals(""))
            {
                Message="Нужно заполнить все поля ";
            }
            else if(PastPassword.GetHashCode().ToString()!=e.Password)
            {
                Message="не верный старый пароль";
            }
            else if (!confirmpasswordBox.Password.Equals(Password))
            {
                Message="не верный потвержденный пороль";
            } 
            else if (r2.IsMatch(Password))
            {
                Message="пороль не должен содержать пробелы";
            } 
            else if (!r3.IsMatch(Password))
            {
                Message="пороль должен содержать от 4 до 20 символов\n(только буквы и цыфры) ";
            }
            else if (Password==PastPassword)
            { 
                Message ="Старый пароль совпадает с новым";
            }
            //else if (Password == j.Password)
            //{
            //    MessageBox.Show("этот пароль уже занят");
            //}
            else
            { 
               // var currentUserId = CurrentUser.GetUserId(); 
                var d = from dict in _db.Users where dict.Id == currentUserId select dict;
                var t = d.FirstOrDefault();
                t.Password = confirmpasswordBox.Password.GetHashCode().ToString();
                _db.SaveChanges();//сохраняем 
                Message = "";
                Message2="Пароль сменен!!!"; 
            }
        }

        public string PastPassword
        {
            get { return pastPassword; }
            set
            {
                pastPassword = value;
                OnPropertyChanged(nameof(PastPassword));
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

