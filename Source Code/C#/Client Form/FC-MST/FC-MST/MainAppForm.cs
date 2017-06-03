using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Diagnostics;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using CPClient.Core;
using CPClient.Core.Models;

namespace FC_MST
{
    public partial class MainAppForm : Form
    {
        public MainAppForm()
        {
            InitializeComponent();
            LoadTabOnPermission();
        }

        private void InitTabPageViewPermission()
        {
            AllowedTabPage = new Dictionary<Constants.UserRole, string[]>
            {
                {Constants.UserRole.Master, new[] {"tabAgentManagement"}},
                {Constants.UserRole.Merchant, new []{"tabAgentManagement"} }
            };
        }

        private Dictionary<Constants.UserRole, string[]> AllowedTabPage { get; set; }


        public void LoadTabOnPermission()
        {
            InitTabPageViewPermission();

            var allowedPages = AllowedTabPage[AppContext.CurrentSessionState.UserRole];
            foreach (var tabPage in mainTabControl.TabPages.Cast<TabPage>().Where(tabPage => !allowedPages.Contains(tabPage.Name)))
            {
                mainTabControl.TabPages.Remove(tabPage);
            }
        }

        private void btnOpenAddAgentModal_Click(object sender, EventArgs e)
        {
            AddNewAgent frm = new AddNewAgent();
            frm.Show(this);
        }
    }
}
