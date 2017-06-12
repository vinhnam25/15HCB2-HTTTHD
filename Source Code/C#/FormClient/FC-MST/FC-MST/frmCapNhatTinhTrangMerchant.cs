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
            f_LoadMerchantList();
        }

        private async void f_LoadMerchantList()
        {
            try
            {
                var result = await MerchantLogic.FetchAllMerchant();

                cbbMerchantList.DataSource = result;
                cbbMerchantList.DisplayMember = "MerchantName";
                cbbMerchantList.ValueMember = "MerchantID";
                cbbMerchantList.SelectedIndex = 0;
                f_LoadStatusWhenIndexChanged();
            }
            catch (Exception ex)
            {
                return;
            }
        }

        private void cbbMerchantList_SelectedIndexChanged(object sender, EventArgs e)
        {
            f_LoadStatusWhenIndexChanged();
        }

        private async void f_LoadStatusWhenIndexChanged()
        {
            try
            {
                var result = await MerchantLogic.FetchStatusOfMerchant(cbbMerchantList.SelectedValue.ToString());
                if (result == true)
                {
                    lbStatus.Text = "Đang hoạt động";
                }
                else
                {
                    lbStatus.Text = "Ngưng hoạt động";
                }
            }
            catch (Exception ex)
            {
                return;
            }                            
        }

        private void btnChange_Click(object sender, EventArgs e)
        {
            if (lbStatus.Text == "Đang hoạt động")
            {

            }
            else
            {

            }
        }

        private async void f_UpdateStatusMerchant(string stt)
        {
        }
    }
}
