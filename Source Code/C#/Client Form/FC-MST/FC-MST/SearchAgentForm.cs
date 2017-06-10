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
    public partial class SearchAgentForm : Form
    {
        public SearchAgentForm()
        {
            InitializeComponent();
            checkBox1.Checked = true;
            gridAgent.AutoGenerateColumns = false;
        }

        private async void btnSearch_Click(object sender, EventArgs e)
        {
            var searchCriteria = new AgentSearchCriteria()
            {
                Id = txtId.Text,
                Name = txtName.Text,
                Province = txtProvince.Text,
                District = txtDistrict.Text,
                IsActive = checkBox1.Checked
            };

            var agent = await AgentLogic.SearchAgent(searchCriteria);
            var tableSource = agent.ToDataTable();
            
            gridAgent.DataSource = tableSource;
        }
    }
}
