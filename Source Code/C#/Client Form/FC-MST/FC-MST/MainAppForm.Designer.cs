namespace FC_MST
{
    partial class MainAppForm
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
            this.mainTabControl = new System.Windows.Forms.TabControl();
            this.tabAgentManagement = new System.Windows.Forms.TabPage();
            this.label1 = new System.Windows.Forms.Label();
            this.districtComboBox1 = new FC_MST.DistrictComboBox();
            this.btnOpenAddAgentModal = new System.Windows.Forms.Button();
            this.tabPage2 = new System.Windows.Forms.TabPage();
            this.mainTabControl.SuspendLayout();
            this.tabAgentManagement.SuspendLayout();
            this.SuspendLayout();
            // 
            // mainTabControl
            // 
            this.mainTabControl.Controls.Add(this.tabAgentManagement);
            this.mainTabControl.Controls.Add(this.tabPage2);
            this.mainTabControl.Location = new System.Drawing.Point(12, 53);
            this.mainTabControl.Name = "mainTabControl";
            this.mainTabControl.SelectedIndex = 0;
            this.mainTabControl.Size = new System.Drawing.Size(944, 497);
            this.mainTabControl.TabIndex = 0;
            // 
            // tabAgentManagement
            // 
            this.tabAgentManagement.Controls.Add(this.label1);
            this.tabAgentManagement.Controls.Add(this.districtComboBox1);
            this.tabAgentManagement.Controls.Add(this.btnOpenAddAgentModal);
            this.tabAgentManagement.Location = new System.Drawing.Point(4, 22);
            this.tabAgentManagement.Name = "tabAgentManagement";
            this.tabAgentManagement.Padding = new System.Windows.Forms.Padding(3);
            this.tabAgentManagement.Size = new System.Drawing.Size(936, 471);
            this.tabAgentManagement.TabIndex = 0;
            this.tabAgentManagement.Text = "Agent";
            this.tabAgentManagement.UseVisualStyleBackColor = true;
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(275, 139);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(35, 13);
            this.label1.TabIndex = 3;
            this.label1.Text = "label1";
            // 
            // districtComboBox1
            // 
            this.districtComboBox1.AutoSize = true;
            this.districtComboBox1.Location = new System.Drawing.Point(266, 6);
            this.districtComboBox1.Name = "districtComboBox1";
            this.districtComboBox1.Size = new System.Drawing.Size(150, 28);
            this.districtComboBox1.TabIndex = 2;
            // 
            // btnOpenAddAgentModal
            // 
            this.btnOpenAddAgentModal.Location = new System.Drawing.Point(6, 6);
            this.btnOpenAddAgentModal.Name = "btnOpenAddAgentModal";
            this.btnOpenAddAgentModal.Size = new System.Drawing.Size(75, 23);
            this.btnOpenAddAgentModal.TabIndex = 0;
            this.btnOpenAddAgentModal.Text = "Thêm Agent";
            this.btnOpenAddAgentModal.UseVisualStyleBackColor = true;
            this.btnOpenAddAgentModal.Click += new System.EventHandler(this.btnOpenAddAgentModal_Click);
            // 
            // tabPage2
            // 
            this.tabPage2.Location = new System.Drawing.Point(4, 22);
            this.tabPage2.Name = "tabPage2";
            this.tabPage2.Padding = new System.Windows.Forms.Padding(3);
            this.tabPage2.Size = new System.Drawing.Size(936, 471);
            this.tabPage2.TabIndex = 1;
            this.tabPage2.Text = "tabPage2";
            this.tabPage2.UseVisualStyleBackColor = true;
            // 
            // MainAppForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(968, 562);
            this.Controls.Add(this.mainTabControl);
            this.Name = "MainAppForm";
            this.Text = "Ứng dụng";
            this.mainTabControl.ResumeLayout(false);
            this.tabAgentManagement.ResumeLayout(false);
            this.tabAgentManagement.PerformLayout();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.TabControl mainTabControl;
        private System.Windows.Forms.TabPage tabAgentManagement;
        private System.Windows.Forms.TabPage tabPage2;
        private System.Windows.Forms.Button btnOpenAddAgentModal;
        private DistrictComboBox districtComboBox1;
        private System.Windows.Forms.Label label1;
    }
}

