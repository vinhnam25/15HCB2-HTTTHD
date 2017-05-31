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
            this.DistrictName});
            this.gridAgent.Location = new System.Drawing.Point(3, 3);
            this.gridAgent.Name = "gridAgent";
            this.gridAgent.Size = new System.Drawing.Size(798, 150);
            this.gridAgent.TabIndex = 0;
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
            // UCAgentManagement
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Controls.Add(this.gridAgent);
            this.Name = "UCAgentManagement";
            this.Size = new System.Drawing.Size(804, 506);
            ((System.ComponentModel.ISupportInitialize)(this.gridAgent)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.DataGridView gridAgent;
        private System.Windows.Forms.DataGridViewTextBoxColumn AgentId;
        private System.Windows.Forms.DataGridViewTextBoxColumn AgentName;
        private System.Windows.Forms.DataGridViewTextBoxColumn Phone;
        private System.Windows.Forms.DataGridViewTextBoxColumn ProvinceName;
        private System.Windows.Forms.DataGridViewTextBoxColumn DistrictName;
    }
}
