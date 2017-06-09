using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using CPClient.Business;
using CPClient.Core;

namespace FC_MST
{
    public partial class UCAgentManagement : UserControl
    {
        public UCAgentManagement()
        {
            InitializeComponent();
        }

        protected override void OnLoad(EventArgs e)
        {
            base.OnLoad(e);
            LoadAllAgents();
        }

        private async void LoadAllAgents()
        {
            var agents = await AgentLogic.FetchAllAgent();
            var datatable = agents.ToDataTable();
            gridAgent.AutoGenerateColumns = false;
            gridAgent.DataSource = datatable;
        }
    }
}
