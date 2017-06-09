using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using CPClient.Business;
using CPClient.Core.Models;

namespace FC_MST
{
    public partial class ProvinceComboBox : UserControl
    {
        public ProvinceComboBox()
        {
            InitializeComponent();
        }

        protected override void OnLoad(EventArgs e)
        {
            base.OnLoad(e);
            LoadAllProvinces();
        }

        private async void LoadAllProvinces()
        {
            var provinces = await LocationLogic.FetchAllProvincesAsync();
            foreach (var province in provinces)
            {
                cbxProvinces.Items.Add(province);
            }

            if (provinces.Count > 0)
            {
                cbxProvinces.SelectedIndex = 0;
            }
        }

        public ComboBox ComboBox
        {
            get
            {
                return cbxProvinces;
            }
        }

        public ProvinceListItemModel GetSelectedItem()
        {
            return ComboBox.SelectedItem as ProvinceListItemModel;
        }
    }
}
