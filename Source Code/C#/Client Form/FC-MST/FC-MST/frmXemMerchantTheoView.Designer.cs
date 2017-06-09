namespace FC_MST
{
    partial class frmXemMerchantTheoView
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
            this.groupBox1 = new System.Windows.Forms.GroupBox();
            this.cboDataView = new System.Windows.Forms.ComboBox();
            this.cboViews = new System.Windows.Forms.ComboBox();
            this.label1 = new System.Windows.Forms.Label();
            this.groupBox2 = new System.Windows.Forms.GroupBox();
            this.gvKetQua = new System.Windows.Forms.DataGridView();
            this.IDMerchant = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Name = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Address = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Phone = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Email = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Status = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.groupBox1.SuspendLayout();
            this.groupBox2.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.gvKetQua)).BeginInit();
            this.SuspendLayout();
            // 
            // groupBox1
            // 
            this.groupBox1.Controls.Add(this.cboDataView);
            this.groupBox1.Controls.Add(this.cboViews);
            this.groupBox1.Controls.Add(this.label1);
            this.groupBox1.Dock = System.Windows.Forms.DockStyle.Top;
            this.groupBox1.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.groupBox1.Location = new System.Drawing.Point(0, 0);
            this.groupBox1.Name = "groupBox1";
            this.groupBox1.Size = new System.Drawing.Size(941, 87);
            this.groupBox1.TabIndex = 0;
            this.groupBox1.TabStop = false;
            this.groupBox1.Text = "Thông tin";
            // 
            // cboDataView
            // 
            this.cboDataView.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.cboDataView.FormattingEnabled = true;
            this.cboDataView.Location = new System.Drawing.Point(358, 35);
            this.cboDataView.Name = "cboDataView";
            this.cboDataView.Size = new System.Drawing.Size(225, 28);
            this.cboDataView.TabIndex = 2;
            this.cboDataView.SelectedValueChanged += new System.EventHandler(this.cboDataView_SelectedValueChanged);
            // 
            // cboViews
            // 
            this.cboViews.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.cboViews.FormattingEnabled = true;
            this.cboViews.Location = new System.Drawing.Point(118, 35);
            this.cboViews.Name = "cboViews";
            this.cboViews.Size = new System.Drawing.Size(225, 28);
            this.cboViews.TabIndex = 1;
            this.cboViews.SelectedIndexChanged += new System.EventHandler(this.cboViews_SelectedIndexChanged);
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(31, 38);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(81, 20);
            this.label1.TabIndex = 0;
            this.label1.Text = "Chọn view";
            // 
            // groupBox2
            // 
            this.groupBox2.Controls.Add(this.gvKetQua);
            this.groupBox2.Dock = System.Windows.Forms.DockStyle.Fill;
            this.groupBox2.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.groupBox2.Location = new System.Drawing.Point(0, 87);
            this.groupBox2.Name = "groupBox2";
            this.groupBox2.Size = new System.Drawing.Size(941, 396);
            this.groupBox2.TabIndex = 1;
            this.groupBox2.TabStop = false;
            this.groupBox2.Text = "Kết quả ";
            // 
            // gvKetQua
            // 
            this.gvKetQua.AllowUserToAddRows = false;
            this.gvKetQua.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.gvKetQua.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.IDMerchant,
            this.Name,
            this.Address,
            this.Phone,
            this.Email,
            this.Status});
            this.gvKetQua.Dock = System.Windows.Forms.DockStyle.Fill;
            this.gvKetQua.Location = new System.Drawing.Point(3, 22);
            this.gvKetQua.Name = "gvKetQua";
            this.gvKetQua.Size = new System.Drawing.Size(935, 371);
            this.gvKetQua.TabIndex = 0;
            this.gvKetQua.DoubleClick += new System.EventHandler(this.gvKetQua_DoubleClick);
            // 
            // IDMerchant
            // 
            this.IDMerchant.DataPropertyName = "MerchantId";
            this.IDMerchant.HeaderText = "ID Merchant";
            this.IDMerchant.Name = "IDMerchant";
            this.IDMerchant.Width = 120;
            // 
            // Name
            // 
            this.Name.DataPropertyName = "MerchantName";
            this.Name.HeaderText = "Tên Merchant";
            this.Name.Name = "Name";
            this.Name.Width = 200;
            // 
            // Address
            // 
            this.Address.DataPropertyName = "Address1";
            this.Address.HeaderText = "Địa chỉ";
            this.Address.Name = "Address";
            this.Address.Width = 200;
            // 
            // Phone
            // 
            this.Phone.DataPropertyName = "Phone";
            this.Phone.HeaderText = "Điện thoại";
            this.Phone.Name = "Phone";
            this.Phone.Width = 150;
            // 
            // Email
            // 
            this.Email.DataPropertyName = "Email";
            this.Email.HeaderText = "Email";
            this.Email.Name = "Email";
            this.Email.Width = 150;
            // 
            // Status
            // 
            this.Status.DataPropertyName = "Status";
            this.Status.HeaderText = "Trạng thái";
            this.Status.Name = "Status";
            this.Status.Width = 150;
            // 
            // frmXemMerchantTheoView
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(941, 483);
            this.Controls.Add(this.groupBox2);
            this.Controls.Add(this.groupBox1);
            this.Text = "Xem thông tin Merchant theo các view";
            this.Load += new System.EventHandler(this.frmXemMerchantTheoView_Load);
            this.groupBox1.ResumeLayout(false);
            this.groupBox1.PerformLayout();
            this.groupBox2.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.gvKetQua)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.GroupBox groupBox1;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.ComboBox cboViews;
        private System.Windows.Forms.ComboBox cboDataView;
        private System.Windows.Forms.GroupBox groupBox2;
        private System.Windows.Forms.DataGridView gvKetQua;
        private System.Windows.Forms.DataGridViewTextBoxColumn IDMerchant;
        private System.Windows.Forms.DataGridViewTextBoxColumn Name;
        private System.Windows.Forms.DataGridViewTextBoxColumn Address;
        private System.Windows.Forms.DataGridViewTextBoxColumn Phone;
        private System.Windows.Forms.DataGridViewTextBoxColumn Email;
        private System.Windows.Forms.DataGridViewTextBoxColumn Status;
    }
}