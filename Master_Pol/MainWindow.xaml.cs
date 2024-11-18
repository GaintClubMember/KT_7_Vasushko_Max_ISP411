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

namespace Master_Pol
{
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();
            try
            {
                InitFrame();
            }
            catch (Exception ex)
            {
                return;
            }
        }

        private void InitFrame()
        {
            try
            {
                Classes.Manager.FrameManager = frameContainer;
                Classes.Manager.FrameManager.Navigate(new Pages.ViewPage());
            }
            catch (Exception ex)
            {
                return;
            }
        }
    }
}
