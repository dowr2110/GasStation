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
    class AdminViewModelChangePassword:ViewModelBase
    {
        private readonly Model1 _db = new Model1();
        private string pastPassword;
        private string password;

        public AdminViewModelChangePassword()
        {
            
            ChangeParolCommand = new RellayCommand(ChangeParol);
            ToOrdersCommand = new RellayCommand(ToOrders);

        }
        public RellayCommand ChangeParolCommand { get; }
 
        public RellayCommand ToOrdersCommand { get; }

         
        private void ToOrders(object obj)
        {
            App.AdminPage = new adminPage();
            App.MainWindowViewModel.CurrentPage = App.AdminPage;
        }
        private void ChangeParol(object obj)
        {
            //var outter = from dict in _db.Users where dict.Name == UserName && dict.Password == Password select dict;//linq
            var outter2 = from dict in _db.Admins select dict;//linq
            var e = outter2.FirstOrDefault();
            var confirmpasswordBox = obj as PasswordBox;

            //var admiiin = from dict in _db.Users select dict;
            //int u = 0;
            //foreach (var item in admiiin)
            //{
            //    if (Password == item.Password)
            //    {
            //        u++;
            //    }
            //} 
            //Regex r = new Regex(@"^[a-zA-Z]{3,}[a-zA-Z0-9(\S)]{1,20}");
            //Regex r2 = new Regex(" ");
            //Regex r3 = new Regex(@"[a-zA-Z0-9]{4,20}");
            if (PastPassword == null || Password == null || confirmpasswordBox.Password == null)
            {
                MessageBox.Show("Нужно заполнить все поля ");
            }
            else if (PastPassword.Equals("") || Password.Equals("") || confirmpasswordBox.Password.Equals(""))
            {
                MessageBox.Show("Нужно заполнить все поля ");
            }
            else if (PastPassword.GetHashCode().ToString() != e.Password)
            {
                MessageBox.Show("Не верный старый пароль");
            }
            else if (!confirmpasswordBox.Password.Equals(Password))
            {
                MessageBox.Show("не верный потвержденный пороль");
            }
            else if (Password == PastPassword)
            {
                MessageBox.Show("Старый пароль совпадает с новым");
            }
            //else if (u>0)
            //{
            //    MessageBox.Show("Совпадает паролем с одним из ползователей");
            //}
            //else if (r2.IsMatch(Password))
            //{
            //    MessageBox.Show("пороль не должен содержать пробелы");
            //}

            //else if (!r3.IsMatch(Password))
            //{
            //    MessageBox.Show("пороль должен содержать от 4 до 20 символов\n(только буквы и цыфры) ");
            //}
            else
            { 
                var d = from dict in _db.Admins select dict;
                var j = d.FirstOrDefault();
                j.Password = confirmpasswordBox.Password.GetHashCode().ToString();
                _db.SaveChanges();//сохраняем
                MessageBox.Show("Пароль админа сменен!!!");
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
    }

}
