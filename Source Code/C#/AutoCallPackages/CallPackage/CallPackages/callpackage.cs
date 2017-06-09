using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.IO;
using Microsoft.SqlServer.Dts.Runtime;
using System.Reflection;  // Added
namespace CallPackages
{
    public partial class callpackage : Form
    {
        static System.Windows.Forms.Timer myTimer = new System.Windows.Forms.Timer();
        //static int alarmCounter = 1;
        static bool exitFlag = false;
        public callpackage()
        {
            InitializeComponent();
        }

        //public void button1_Click(object sender, EventArgs e)
        //{
        //    // Instantiate SSIS application object
        //    Microsoft.SqlServer.Dts.Runtime.Application myApplication = new Microsoft.SqlServer.Dts.Runtime.Application();

        //    // Load package from file system (use LoadFromSqlServer for SQL Server based packages)
        //    lblStatus.Text = "Loading package from file system.";
        //    Package myPackage = myApplication.LoadPackage(@"C:\Users\ds21818\Desktop\SSIS_Article\Application\SSIS Demo\SSIS Demo\Package.dtsx", null);

        //    // Optional set the value from one of the SSIS package variables
        //    //myPackage.Variables["User::myVar"].Value = "test123";


        //    // Execute package
        //    lblStatus.Text = "Executing package";
        //    DTSExecResult myResult = myPackage.Execute();

        //    // Show the execution result
        //    lblStatus.Text = "Package result: " + myResult.ToString();
        //}

        private void callpackage_Load(object sender, EventArgs e)
        {
            lblStatus.Text = "Running ...";
        }
        private static void TimerEventProcessor(Object myObject,
                                                EventArgs myEventArgs)
        {
            myTimer.Stop();

            //// Displays a message box asking whether to continue running the timer.
            //if (MessageBox.Show("Continue running?", "Count is: ",
            //   MessageBoxButtons.YesNo) == DialogResult.Yes)
            //{
            //    // Restarts the timer and increments the counter.
            //    //alarmCounter += 1;
            //    myTimer.Enabled = true;
            //}
            //else
            //{
            //    // Stops the timer.
            //    exitFlag = true;
            //}
            // Instantiate SSIS application object
            //
            string path_fileimport = Path.Combine(Path.GetDirectoryName(Assembly.GetExecutingAssembly().Location), @"Package\Import");
            string path_fileimport_success = Path.Combine(Path.GetDirectoryName(Assembly.GetExecutingAssembly().Location), @"Package\Import\success");
            string path_fileimport_failure = Path.Combine(Path.GetDirectoryName(Assembly.GetExecutingAssembly().Location), @"Package\Import\failure");
            string path_filepackage = Path.Combine(Path.GetDirectoryName(Assembly.GetExecutingAssembly().Location), @"Package\Package\Package\Package.dtsx");
            //string[] files = File.ReadAllLines(path);
           
            //
            string[] filePahts = System.IO.Directory.GetFiles(path_fileimport, "*.txt");
            //MessageBox.Show(path_fileimport);
            if(filePahts.Length != 0)
            {
               
                Microsoft.SqlServer.Dts.Runtime.Application myApplication = new Microsoft.SqlServer.Dts.Runtime.Application();

                // Load package from file system (use LoadFromSqlServer for SQL Server based packages)
                //lblStatus.Text = "Loading package from file system.";
                Package myPackage = myApplication.LoadPackage(path_filepackage, null);

                // Optional set the value from one of the SSIS package variables
                myPackage.Variables["File_import_path"].Value = filePahts[0];


                // Execute package
                //lblStatus.Text = "Executing package";
                DTSExecResult myResult = myPackage.Execute();

                // Show the execution result
                //lblStatus.Text = "Package result: " + myResult.ToString();
                //MessageBox.Show(myResult.ToString());            
                // Check Success and move file folder
                if (myResult.ToString().Equals("Success"))
                { 
                    //move file -> folder success
                    string fileName = Path.GetFileName(filePahts[0]);
                    //filePahts[0] = filePahts[0] + "123123";
                    File.Move(filePahts[0],path_fileimport_success +@"\"+ fileName); 
                }
                else if (!myResult.ToString().Equals("Success"))
                {
                    string fileName = Path.GetFileName(filePahts[0]);                            
                    //filePahts[0] = filePahts[0] + "123123";
                    File.Move(filePahts[0], path_fileimport_failure + @"\" + fileName);                   
                    
                }
               
               // MessageBox.Show(filePahts.Length.ToString());
            }
            myTimer.Enabled = true;

           

        }

        private void callpackage_Shown(object sender, EventArgs e)
        {

            /* Adds the event and the event handler for the method that will 
               process the timer event to the timer. */
            myTimer.Tick += new EventHandler(TimerEventProcessor);

            // Sets the timer interval to 5 seconds.
            myTimer.Interval = 2000;
            myTimer.Start();

            // Runs the timer, and raises the event.
            while (exitFlag == false)
            {
                // Processes all the events in the queue.
                System.Windows.Forms.Application.DoEvents();
                //MessageBox.Show("aaaaa");
            }
        }
    }
}
