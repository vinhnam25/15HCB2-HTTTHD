using CPClient.Business;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace FC_MST
{
    public partial class frmViewDetailMerchant : Form
    {
        public frmViewDetailMerchant()
        {
            InitializeComponent();
        }

        public async void f_LoadDataDetails(string id)
        {
            int merchanId = Convert.ToInt32(id);

            var response = await MerchantLogic.FetchDetail(new { Id = merchanId });

            if(response != null)
            {
                txtName.Text = response.MerchantName;
                txtDiaChi1.Text = response.Address1;
                txtEmail.Text = response.Email;
                txtPhone.Text = response.Phone;
                txtFax.Text = response.Fax;
                txtTrangThai.Text = response.Status.Trim() == "A" ? "Đang hoạt động" : "Ngừng hoạt động";
                txtNgayDuyet.Value = response.ApprovalDate;
                dtpNgayTG.Value = response.LastActiveDate;
                txtDC2.Text = response.Address2;
                txtDC3.Text = response.Address3;
                txtLoai.Text = response.MerchantType.TypeName;
                txtQH.Text = response.District.DistrictName;
                txtTT.Text = response.Province.ProvinceName;
                txtZip.Text = response.Zip;
                txtAgentID.Text = response.Agent.AgentId;
                txtAgentQL.Text = response.Agent.AgentName;
            }

        }

        private void btnThoat_Click(object sender, EventArgs e)
        {
            this.Close();
        }
    }
}
