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
    public partial class Add_EditPage : Page
    {

        string Flag = "";

        Data.Partner partnerData = new Data.Partner();
        public Add_EditPage(Data.Partner partnerDataGet)
        {
            InitializeComponent();
            LoadComboBoxes();

            if (partnerData != null )
            {
                Flag = "Edit";
                partnerData = partnerDataGet;
                DataContext = partnerData;
            }
            if (partnerData == null )
            {
                Flag = "Add";
            }
        }

        private void BackBtn_Click(object sender, RoutedEventArgs e)
        {
            Classes.Manager.FrameManager.Navigate(new Pages.ViewPage());
        }

        private void AddBtn_Click(object sender, RoutedEventArgs e)
        {
            // get data and put data and save data
            if (Errors() == 0)
            {

            }
        }

        private void LoadComboBoxes()
        {
            PartnerTypeCBox.ItemsSource = Data.DB_Entities.GetContext().PartnerType.ToList();
        }

        private void FillItem()
        {
            string[] FioByParts = FioBox.Text.Split(' ');
            partnerData.Lastname = FioByParts[0];
            partnerData.Name = FioByParts[1];
            partnerData.Surname = FioByParts[2];

            var CompanyTypeId = Data.DB_Entities.GetContext().PartnerCompany.FirstOrDefault(d => d.id == PartnerTypeCBox.SelectedIndex + 1);
            partnerData.Companyid = CompanyTypeId.id;

            partnerData.Rating = Convert.ToInt32(RatingBox.Text);

            string[] AddresByParts = AddresBox.Text.Split(' ');
            partnerData.Index = AddresByParts[0];

            // TODO: Region

            var CityId = Data.DB_Entities.GetContext().Region.FirstOrDefault(d => d.Name == AddresByParts[1]);
            Data.City newCity = new Data.City();
            if (CityId == null)
            {
                newCity.Name = AddresByParts[1];
                Data.DB_Entities.GetContext().City.Add(newCity);
                Data.DB_Entities.GetContext().SaveChanges();

                partnerData.City = newCity.id;
            }
            partnerData.City = CityId.id;

            // TODO: Street

            // TODO: Building

            // TODO: Phone

            // TODO: Email


        }

        private int Errors()
        {
            int errors = 0;
            StringBuilder errorsString = new StringBuilder();

            if (string.IsNullOrEmpty(FioBox.Text))
            {
                errorsString.AppendLine("Поле ФИО: пустое");
            }
            if (string.IsNullOrEmpty(CompanyBox.Text))
            {
                errorsString.AppendLine("Поле Компания: пустое");
            }
            if (PartnerTypeCBox.SelectedValue == null)
            {
                errorsString.AppendLine("Выберите Тип партнера:");
            }
            if (string.IsNullOrEmpty(RatingBox.Text))
            {
                errorsString.AppendLine("Поле Рейтинг: пустое");
            }
            if (string.IsNullOrEmpty(AddresBox.Text))
            {
                errorsString.AppendLine("Поле Адрес: пустое");
            }
            if (string.IsNullOrEmpty(PhoneBox.Text))
            {
                errorsString.AppendLine("Поле Телефон: пустое");
            }
            if (string.IsNullOrEmpty(EmailBox.Text))
            {
                errorsString.AppendLine("Поле Email: пустое");
            }

            if (errors > 0)
            {
                MessageBox.Show($"{errorsString}", "Ошибка!", MessageBoxButton.OK, MessageBoxImage.Error);
            }

            return errors;
        }
    }
}
