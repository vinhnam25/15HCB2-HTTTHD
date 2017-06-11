namespace FC_MST
{
    partial class frmCapNhatTinhTrangMerchant
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
            this.cbbMerchantList = new System.Windows.Forms.ComboBox();
            this.label1 = new System.Windows.Forms.Label();
            this.ckbActive = new System.Windows.Forms.CheckBox();
            this.SuspendLayout();
            // 
            // cbbMerchantList
            // 
            this.cbbMerchantList.FormattingEnabled = true;
            this.cbbMerchantList.Location = new System.Drawing.Point(110, 26);
            this.cbbMerchantList.Name = "cbbMerchantList";
            this.cbbMerchantList.Size = new System.Drawing.Size(162, 21);
            this.cbbMerchantList.TabIndex = 0;
            this.cbbMerchantList.SelectedIndexChanged += new System.EventHandler(this.cbbMerchantList_SelectedIndexChanged);
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(12, 29);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(74, 13);
            this.label1.TabIndex = 1;
            this.label1.Text = "Tên Merchant";
            // 
            // ckbActive
            // 
            this.ckbActive.AutoSize = true;
            this.ckbActive.Location = new System.Drawing.Point(15, 62);
            this.ckbActive.Name = "ckbActive";
            this.ckbActive.Size = new System.Drawing.Size(104, 17);
            this.ckbActive.TabIndex = 2;
            this.ckbActive.Text = "Đang hoạt động";
            this.ckbActive.UseVisualStyleBackColor = true;
            this.ckbActive.CheckedChanged += new System.EventHandler(this.ckbActive_CheckedChanged);
            // 
            // frmCapNhatTinhTrangMerchant
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(284, 261);
            this.Controls.Add(this.ckbActive);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.cbbMerchantList);
            this.Name = "frmCapNhatTinhTrangMerchant";
            this.Text = "Cập nhật tình trạng merchant";
            this.Load += new System.EventHandler(this.frmCapNhatTinhTrangMerchant_Load);
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.ComboBox cbbMerchantList;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.CheckBox ckbActive;
    }
}