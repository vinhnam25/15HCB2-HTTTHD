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
using CPClient.Core;
using CPClient.Core.Models;

namespace FC_MST
{
    public partial class DistrictComboBox : UserControl
    {
        public DistrictComboBox()
        {
            InitializeComponent();
            GetAllDistricts();
        }

        private async void GetAllDistricts()
        {
            var districts = await LocationLogic.FetchAllDistrictsAsync();
            foreach (var district in districts)
            {
                cbxDistricts.Items.Add(district);
            }

            if (districts.Count > 0)
            {
                cbxDistricts.SelectedIndex = 0;
            }
        }

        public ComboBox ComboBox => cbxDistricts;

        public DistrictModels.DistrictListItemModel GetSelectedItem()
        {
            return ComboBox.SelectedItem as DistrictModels.DistrictListItemModel;
        }
    }
}
