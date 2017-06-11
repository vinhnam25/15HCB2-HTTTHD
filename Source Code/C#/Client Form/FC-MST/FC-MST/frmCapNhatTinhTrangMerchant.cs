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
            f_LoadStatusWhenIndexChanged();
        }

        private async void f_LoadMerchantList()
        {
            try
            {
                var result = await MerchantLogic.FetchAllMerchant();

                cbbMerchantList.DataSource = result;
                cbbMerchantList.DisplayMember = "MerchantName";
                cbbMerchantList.ValueMember = "MerchantID";
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
                    ckbActive.Checked = true;
                }
                else
                {
                    ckbActive.Checked = false;
                }
            }
            catch (Exception ex)
            {
                return;
            }                            
        }

        private void ckbActive_CheckedChanged(object sender, EventArgs e)
        {
            f_UpdateStatusMerchant();
        }

        private async void f_UpdateStatusMerchant()
        {
            if (ckbActive.Checked == true)
            {
                await MerchantLogic.ActivateMerchant(cbbMerchantList.SelectedValue.ToString());
            }
            else
            {
                await MerchantLogic.InactivateMerchant(cbbMerchantList.SelectedValue.ToString());
            }
        }
    }
}
