using CPClient.Business;
using CPClient.Core;
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
    public partial class frmChonAgent : Form
    {
        public string merchantId;
        public string agentId;
        public frmChonAgent()
        {
            InitializeComponent();
        }

        private void frmChonAgent_Load(object sender, EventArgs e)
        {
            grd.AutoGenerateColumns = false;
 
            grd.AutoSizeColumnsMode = DataGridViewAutoSizeColumnsMode.Fill;
            grd.AutoSizeRowsMode = DataGridViewAutoSizeRowsMode.None;
        }

        protected override CreateParams CreateParams
        {
            get
            {
                const int CS_DROPSHADOW = 0x30000;
                CreateParams cp = base.CreateParams;
                cp.ClassStyle |= CS_DROPSHADOW;
                return cp;
            }
        }

        private async void btnTim_Click(object sender, EventArgs e)
        {
            try
            {
                var obj = new
                {
                    id = txtIDAgnt.Text == "" ? 0 : Convert.ToInt32(txtIDAgnt.Text),
                    name = txtNameAgent.Text
                };

                var data = await AgentLogic.FetchSearchAgent(obj);

                if(data != null && data.Count > 0)
                {
                    grd.DataSource = data;
                }
                else
                {
                    MessageBox.Show("Không tìm thấy thông tin !", "Thông báo");
                    grd.DataSource = null;
                }
            }
            catch(Exception ex)
            {
                MessageBox.Show("Lỗi tìm kiếm ! Có thể do nhập liệu không phù hợp.", "Thông báo");
                return;
            }
        }

        private void btnDong_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private async void btnChon_Click(object sender, EventArgs e)
        {
            try
            {
                int index = grd.CurrentCell.RowIndex;
                DataGridViewRow row = grd.Rows[index];

                string Agentid = row.Cells[0].Value.ToString();

                if (agentId == "0")
                {
                    await WebServiceUtils.Post("/api/merchant/addmanaged", new { MerchantId = Convert.ToInt32(merchantId), AgentId = Convert.ToInt32(Agentid) });

                    MessageBox.Show("Đã gán quyền quản lý cho Agent " + Agentid, "Thông báo");
                }
                else
                {
                    if(agentId == Agentid)
                    {
                        MessageBox.Show("Đây là Agent đang quản lý merchant này !", "Thông báo");
                        return;
                    }

                    await WebServiceUtils.Post("/api/merchant/addmanaged", new { MerchantId = Convert.ToInt32(merchantId), AgentId = Convert.ToInt32(Agentid) });

                    MessageBox.Show("Đã chuyển quyền quản lý merchant này từ Agent " + agentId + " sang cho Agent " + Agentid, "Thông báo");
                }
            }
            catch(Exception ex)
            {
                MessageBox.Show("Lỗi xử lý !", "Thông báo");
            }
        }

        private readonly Action<string> _onSuccess = delegate(string result)
        {
            MessageBox.Show(result);
        };


    }
}
