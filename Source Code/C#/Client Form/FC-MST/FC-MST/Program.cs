using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace FC_MST
{
    static class Program
    {
        /// <summary>
        /// The main entry point for the application.
        /// </summary>
        [STAThread]
        static void Main()
        {
            Application.EnableVisualStyles();
            Application.SetCompatibleTextRenderingDefault(false);
            // Only used to test login func and be used in product phrase

            //LoginForm frm = new LoginForm();
            //if (frm.ShowDialog() == DialogResult.OK)
            //{
            //    Application.Run(new MainForm());
            //}

            Application.Run(new MainForm());
        }
    }
}
