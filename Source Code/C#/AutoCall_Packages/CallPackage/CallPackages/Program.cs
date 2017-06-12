using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using System.Windows.Forms;
using CallPackages;
namespace CallPackages
{
    static class Program
    {
        /// <summary>
        /// The main entry point for the application.
        /// </summary>
        static System.Windows.Forms.Timer myTimer = new System.Windows.Forms.Timer();
        //static int alarmCounter = 1;
        static bool exitFlag = false;

        [STAThread]
        static void Main()
        {
            Application.EnableVisualStyles();
            Application.SetCompatibleTextRenderingDefault(false);
            Application.Run(new callpackage());

            //
            
           
        }
        
    }
}
