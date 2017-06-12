using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using CPClient.Business;
using CPClient.Core;
using CPClient.Core.SearchCriteria;

namespace FC_MST
{
    public partial class frmTimKiemMerchant : Form
    {
        public frmTimKiemMerchant()
        {
            InitializeComponent();
            checkBox1.Checked = true;
            gridMerchant.AutoGenerateColumns = false;
        }

        private async void btnSearch_Click(object sender, EventArgs e)
        {
            var searchCriteria = new MerchantSearchCriteria()
            {
                Id = txtId.Text,
                Name = txtName.Text,
                Province = txtProvince.Text,
                District = txtDistrict.Text,
                IsActive = checkBox1.Checked
            };

            var merchants = await MerchantLogic.SearchMerchant(searchCriteria);
            var tableSource = merchants.ToDataTable();
            
            gridMerchant.DataSource = tableSource;
        }
    }
}
