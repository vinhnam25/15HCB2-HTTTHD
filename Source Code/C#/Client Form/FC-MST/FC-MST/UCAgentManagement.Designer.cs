namespace FC_MST
{
    partial class UCAgentManagement
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

        #region Component Designer generated code

        /// <summary> 
        /// Required method for Designer support - do not modify 
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.gridAgent = new System.Windows.Forms.DataGridView();
            this.AgentId = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.AgentName = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Phone = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.ProvinceName = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.DistrictName = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.AgentStatus = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.label1 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.label3 = new System.Windows.Forms.Label();
            this.textBox1 = new System.Windows.Forms.TextBox();
            this.maskedTextBox1 = new System.Windows.Forms.MaskedTextBox();
            ((System.ComponentModel.ISupportInitialize)(this.gridAgent)).BeginInit();
            this.SuspendLayout();
            // 
            // gridAgent
            // 
            this.gridAgent.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.gridAgent.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.AgentId,
            this.AgentName,
            this.Phone,
            this.ProvinceName,
            this.DistrictName,
            this.AgentStatus});
            this.gridAgent.Dock = System.Windows.Forms.DockStyle.Top;
            this.gridAgent.Location = new System.Drawing.Point(0, 0);
            this.gridAgent.Name = "gridAgent";
            this.gridAgent.Size = new System.Drawing.Size(804, 150);
            this.gridAgent.TabIndex = 0;
            this.gridAgent.SelectionChanged += new System.EventHandler(this.gridAgent_SelectionChanged);
            // 
            // AgentId
            // 
            this.AgentId.DataPropertyName = "AgentId";
            this.AgentId.HeaderText = "Mã";
            this.AgentId.Name = "AgentId";
            // 
            // AgentName
            // 
            this.AgentName.DataPropertyName = "AgentName";
            this.AgentName.HeaderText = "Tên";
            this.AgentName.Name = "AgentName";
            // 
            // Phone
            // 
            this.Phone.DataPropertyName = "Phone";
            this.Phone.HeaderText = "SĐT";
            this.Phone.Name = "Phone";
            // 
            // ProvinceName
            // 
            this.ProvinceName.DataPropertyName = "Province";
            this.ProvinceName.HeaderText = "Tên Tỉnh";
            this.ProvinceName.Name = "ProvinceName";
            this.ProvinceName.ReadOnly = true;
            // 
            // DistrictName
            // 
            this.DistrictName.DataPropertyName = "District";
            this.DistrictName.HeaderText = "Tên Quận";
            this.DistrictName.Name = "DistrictName";
            // 
            // AgentStatus
            // 
            this.AgentStatus.DataPropertyName = "IsActive";
            this.AgentStatus.HeaderText = "Tình trạng hoạt động";
            this.AgentStatus.Name = "AgentStatus";
            this.AgentStatus.ReadOnly = true;
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(5, 160);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(53, 13);
            this.label1.TabIndex = 1;
            this.label1.Text = "Mã Agent";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(5, 211);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(57, 13);
            this.label2.TabIndex = 2;
            this.label2.Text = "Tên Agent";
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(5, 235);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(40, 13);
            this.label3.TabIndex = 3;
            this.label3.Text = "Địa chỉ";
            // 
            // textBox1
            // 
            this.textBox1.Enabled = false;
            this.textBox1.Location = new System.Drawing.Point(64, 157);
            this.textBox1.Name = "textBox1";
            this.textBox1.Size = new System.Drawing.Size(100, 20);
            this.textBox1.TabIndex = 4;
            // 
            // maskedTextBox1
            // 
            this.maskedTextBox1.Location = new System.Drawing.Point(97, 157);
            this.maskedTextBox1.Name = "maskedTextBox1";
            this.maskedTextBox1.Size = new System.Drawing.Size(8, 20);
            this.maskedTextBox1.TabIndex = 5;
            // 
            // UCAgentManagement
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Controls.Add(this.maskedTextBox1);
            this.Controls.Add(this.textBox1);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.gridAgent);
            this.Name = "UCAgentManagement";
            this.Size = new System.Drawing.Size(804, 506);
            ((System.ComponentModel.ISupportInitialize)(this.gridAgent)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.DataGridView gridAgent;
        private System.Windows.Forms.DataGridViewTextBoxColumn AgentId;
        private System.Windows.Forms.DataGridViewTextBoxColumn AgentName;
        private System.Windows.Forms.DataGridViewTextBoxColumn Phone;
        private System.Windows.Forms.DataGridViewTextBoxColumn ProvinceName;
        private System.Windows.Forms.DataGridViewTextBoxColumn DistrictName;
        private System.Windows.Forms.DataGridViewTextBoxColumn AgentStatus;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.TextBox textBox1;
        private System.Windows.Forms.MaskedTextBox maskedTextBox1;
    }
}
