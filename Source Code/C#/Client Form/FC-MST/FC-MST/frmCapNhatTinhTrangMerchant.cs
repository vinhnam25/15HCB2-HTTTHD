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

namespace FC_MST
{
    public partial class frmCapNhatTinhTrangMerchant : Form
    {
        public frmCapNhatTinhTrangMerchant()
        {
            InitializeComponent();
        }

        private void frmCapNhatTinhTrangMerchant_Load(object sender, EventArgs e)
        {
            cbbMerchantList.DisplayMember = "MerchantName";
            cbbMerchantList.ValueMember = "MerchantID";

            f_LoadMerchantList();
        }

        private async void f_LoadMerchantList()
        {
            try
            {
                var result = await MerchantLogic.FetchAllMerchant();

                cbbMerchantList.DataSource = result;
            }
            catch (Exception ex)
            {
                return;
            }
        }
    }
}
