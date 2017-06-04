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
using CPClient.Core.Models;

namespace FC_MST
{
    public partial class UCAgentManagement : UserControl
    {
        public UCAgentManagement()
        {
            InitializeComponent();
            
        }

        private List<AgentListItemModel> Agents { get; set; } 

        private void ConfigureGrid()
        {
            gridAgent.SelectionMode = DataGridViewSelectionMode.FullRowSelect;
        }

        protected override void OnLoad(EventArgs e)
        {
            base.OnLoad(e);
            ConfigureGrid();
            LoadAllAgents();

        }

        private async void LoadAllAgents()
        {
            Agents = await AgentLogic.FetchAllAgent();
            var datatable = Agents.ToDataTable();
            gridAgent.AutoGenerateColumns = false;
            gridAgent.DataSource = datatable;
        }

        private void gridAgent_SelectionChanged(object sender, EventArgs e)
        {
            var row = gridAgent.CurrentRow;
            if (row != null)
            {
                var agentId = row.Cells[0].Value.ToString();
                var agent = Agents.Where(c => c.AgentId == agentId);
            }
        }
    }
}
