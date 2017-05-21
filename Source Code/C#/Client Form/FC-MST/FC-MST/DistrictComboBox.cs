using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
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
            var districts = await WebServiceUtils.Get<List<DistrictModels.DistrictListItemModel>>("/api/common/all/districts");
            foreach (var district in districts)
            {
                cbxDistricts.Items.Add(district);
            }
        }

        public ComboBox ComboBox => cbxDistricts;

        public DistrictModels.DistrictListItemModel GetSelectedItem()
        {
            return ComboBox.SelectedItem as DistrictModels.DistrictListItemModel;
        }
    }
}
