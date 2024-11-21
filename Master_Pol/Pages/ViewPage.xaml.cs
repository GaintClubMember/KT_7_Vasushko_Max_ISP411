using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace Master_Pol.Pages
{
    /// <summary>
    /// Логика взаимодействия для ViewPage.xaml
    /// </summary>
    public partial class ViewPage : Page
    {
        public ViewPage()
        {
            InitializeComponent();
            try
            {
                LoadListView();
            }
            catch (Exception ex)
            {
                return;
            }
        }

        private void LoadListView()
        {
            try
            {
                ListViewContainer.ItemsSource = Data.DB_Entities.GetContext().Partner.ToList();
            }
            catch (Exception ex)
            {
                return;
            }
        }

        private void HistoryBtn_Click(object sender, RoutedEventArgs e)
        {
            Classes.Manager.FrameManager.Navigate(new Pages.Add_EditPage((sender as Button).DataContext as Data.Partner));
        }

        private void EditBtn_Click(object sender, RoutedEventArgs e)
        {
            Classes.Manager.FrameManager.Navigate(new Pages.Add_EditPage((sender as Button).DataContext as Data.Partner));
        }

        private void AddBtn_Click(object sender, RoutedEventArgs e)
        {
            Classes.Manager.FrameManager.Navigate(new Pages.Add_EditPage(null));
        }
    }
}
