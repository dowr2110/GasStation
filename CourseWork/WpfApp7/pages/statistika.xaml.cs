using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Markup;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;


namespace WpfApp7.pages
{
    /// <summary>
    /// Логика взаимодействия для statistika.xaml
    /// </summary>
    public partial class statistika : Page
    {
        public statistika()
        {
            InitializeComponent();
            calendar1.Language = XmlLanguage.GetLanguage("ru-RU");
        }
        
        private readonly Model1 _db = new Model1();
        private void calendar_SelectedDatesChanged(object sender, SelectionChangedEventArgs e)
        {
            var currentUserId = CurrentUser.GetUserId();
            var outter = from dict in _db.Orders where dict.UserId == currentUserId orderby dict.OrderId descending select dict;//linq
            DateTime? selectedDate = calendar1.SelectedDate;
            if (selectedDate != null)
            {
                string search_arg = selectedDate.Value.Date.ToShortDateString();
                
                List<Order> rez = new List<Order>();
                var c = 0;
                double allcol = 0, allfulcost = 0;
                foreach (var item in outter)
                {
                    if (item.When.ToShortDateString() != search_arg)
                    {
                        continue;
                    }
                    else
                    {
                        rez.Add(item);
                        c++;
                        allcol = allcol + item.Amount;
                        allfulcost = allfulcost + item.FullCost;
                    }
                }
                if (c == 0)
                {
                    lab.Content = "Поиск не дал результатов.";
                    Data.ItemsSource = rez.ToList();
                    Allcol.Text = Convert.ToString(allcol);
                    Allfulcost.Text = Convert.ToString(allfulcost);
                    Data.Visibility = Visibility.Hidden;
                }
                else
                {
                    lab.Content = "";
                    Data.ItemsSource = rez.ToList();
                    Allcol.Text = Convert.ToString(allcol);
                    Allfulcost.Text = Convert.ToString(allfulcost);
                    Data.Visibility = Visibility.Visible;
                }
            } 
          

        }
    }
}
