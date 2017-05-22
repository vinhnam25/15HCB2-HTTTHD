using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using CPClient.Core;
using CPClient.Core.Models;

namespace FC_MST
{
    public partial class AddNewAgent : Form
    {
        public AddNewAgent()
        {
            InitializeComponent();
        }

        private void btnAdd_Click(object sender, EventArgs e)
        {
            var model = new AgentModels.CreateAgentBindingModel
            {
                AgentName = txtAgentName.Text,
                Address = txtAddress.Text,
                Email = txtEmail.Text,
                Fax = txtFax.Text,
                Phone = txtPhone.Text,
                Zip = txtZip.Text,
                DistrictId = districtComboBox.GetSelectedItem().DistrictId,
                ProvinceId = provinceComboBox.GetSelectedItem().ProvinceId
            };

            WebServiceUtils.Post("/api/agent/create", model, _onSuccess);
        }

        private readonly Action<string> _onSuccess = delegate(string result)
        {
            MessageBox.Show(result);
        };
    }
}
