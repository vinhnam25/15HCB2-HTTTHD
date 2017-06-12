namespace FC_MST
{
    partial class ActivateAgentForm
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.ucAgentManagement1 = new FC_MST.UCAgentManagement();
            this.SuspendLayout();
            // 
            // ucAgentManagement1
            // 
            this.ucAgentManagement1.Location = new System.Drawing.Point(12, 12);
            this.ucAgentManagement1.Name = "ucAgentManagement1";
            this.ucAgentManagement1.Size = new System.Drawing.Size(804, 348);
            this.ucAgentManagement1.TabIndex = 0;
            this.ucAgentManagement1.Load += new System.EventHandler(this.ucAgentManagement1_Load);
            // 
            // ActivateAgentForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(830, 396);
            this.Controls.Add(this.ucAgentManagement1);
            this.Name = "ActivateAgentForm";
            this.Text = "ActivateAgentForm";
            this.ResumeLayout(false);

        }

        #endregion

        private UCAgentManagement ucAgentManagement1;
    }
}