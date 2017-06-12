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

namespace FC_MST
{
    public partial class frmXemMerchantTheoView : Form
    {
        public frmXemMerchantTheoView()
        {
            InitializeComponent();
        }

        private void frmXemMerchantTheoView_Load(object sender, EventArgs e)
        {
            //load combobx view
            DataTable data_com = new DataTable();

            data_com.Columns.Add("ID");
            data_com.Columns.Add("Name");

            data_com.Rows.Add("1", "Loại merchant");
            data_com.Rows.Add("2", "Vùng miền");

            cboViews.DataSource = data_com;
            cboViews.DisplayMember = "Name";
            cboViews.ValueMember = "ID";

            LoadAllTypeMC();

            gvKetQua.AutoGenerateColumns = false;

            gvKetQua.AutoSizeColumnsMode = DataGridViewAutoSizeColumnsMode.Fill;
            gvKetQua.AutoSizeRowsMode = DataGridViewAutoSizeRowsMode.None;
        }

        private void cboViews_SelectedIndexChanged(object sender, EventArgs e)
        {
            LoadAllTypeMC();
        }

        private async void LoadAllTypeMC()
        {
            try
            {
                string index = cboViews.SelectedValue.ToString();
                var provinces = await MerchantLogic.FetchAllTypeByID(index);

                cboDataView.DataSource = provinces;
                cboDataView.DisplayMember = "name";
                cboDataView.ValueMember = "id";

                if (provinces.Count > 0)
                {
                    cboDataView.SelectedIndex = 0;
                }
            }
            catch(Exception ex)
            {
                return;
            }
        }

        private async void LoadDataByView()
        {
            try
            {
                int _action = Convert.ToInt32(cboViews.SelectedValue.ToString());
                int _value = Convert.ToInt32(cboDataView.SelectedValue.ToString());

                var obj = new
                {
                    action = _action,
                    value = _value
                };

                var response = await MerchantLogic.FetchDataByView(obj);

                if (response != null && response.Rows.Count > 0)
                {
                    gvKetQua.DataSource = response;
                }
                else
                {
                    MessageBox.Show("Không tìm thấy thông tin !", "Thông báo");
                    gvKetQua.DataSource = null;
                }

            }
            catch (Exception ex)
            {
                return;
            }
        }

        private void cboDataView_SelectedValueChanged(object sender, EventArgs e)
        {
            LoadDataByView();
        }

        private void gvKetQua_DoubleClick(object sender, EventArgs e)
        {
            int index = gvKetQua.CurrentCell.RowIndex;
            DataGridViewRow row = gvKetQua.Rows[index];
            string id = row.Cells[0].Value.ToString();

            frmViewDetailMerchant frm = new frmViewDetailMerchant();

            frm.f_LoadDataDetails(id);

            frm.ShowDialog();
        }
    }
}
