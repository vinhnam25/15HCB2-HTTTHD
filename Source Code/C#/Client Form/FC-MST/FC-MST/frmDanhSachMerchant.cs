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
    public partial class frmDanhSachMerchant : Form
    {
        public frmDanhSachMerchant()
        {
            InitializeComponent();
        }

        private void frmDanhSachMerchant_Load(object sender, EventArgs e)
        {
            DataTable data_com = new DataTable();

            data_com.Columns.Add("ID");
            data_com.Columns.Add("Name");

            data_com.Rows.Add("0", "Hiển thị tất cả");
            data_com.Rows.Add("1", "Chưa có quản lý");
            data_com.Rows.Add("2", "Đã có quản lý");

            cboLoai.DataSource = data_com;
            cboLoai.DisplayMember = "Name";
            cboLoai.ValueMember = "ID";


            gvKetQua.AutoSizeColumnsMode = DataGridViewAutoSizeColumnsMode.Fill;
            gvKetQua.AutoSizeRowsMode = DataGridViewAutoSizeRowsMode.None;

            f_LoadGrid();
        }

        private async void f_LoadGrid()
        {
            try
            {
                int type = Convert.ToInt32(cboLoai.SelectedValue.ToString());

                var result = await MerchantLogic.FetchManaged(type);

                foreach(var item in result)
                {
                    item.Status = item.AgentId.HasValue ? "Đã có quản lý" : "Chưa được quản lý"; 
                }

                if(result != null && result.Count > 0)
                {
                    gvKetQua.DataSource = result;
                }
                else
                {
                    gvKetQua.DataSource = null;
                }
            }
            catch(Exception ex)
            {
                return;
            }
        }

        private void cboLoai_DropDownClosed(object sender, EventArgs e)
        {
            f_LoadGrid();
        }

        private void btnAdd_Click(object sender, EventArgs e)
        {
            int index = gvKetQua.CurrentCell.RowIndex;
            DataGridViewRow row = gvKetQua.Rows[index];

            string IdMerchant = row.Cells[0].Value.ToString();

            frmChonAgent frm = new frmChonAgent();
            frm.merchantId = IdMerchant;

            if (row.Cells["AgentId"].Value.ToString() != "")
            {
                frm.agentId = row.Cells["AgentId"].Value.ToString();
            }

            frm.ShowDialog();

            f_LoadGrid();
        }
    }
}
