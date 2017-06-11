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
            this.label2 = new System.Windows.Forms.Label();
            this.lbStatus = new System.Windows.Forms.Label();
            this.btnChange = new System.Windows.Forms.Button();
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
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(12, 75);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(58, 13);
            this.label2.TabIndex = 2;
            this.label2.Text = "Tình trạng:";
            this.label2.UseWaitCursor = true;
            // 
            // lbStatus
            // 
            this.lbStatus.AllowDrop = true;
            this.lbStatus.AutoSize = true;
            this.lbStatus.Location = new System.Drawing.Point(77, 75);
            this.lbStatus.Name = "lbStatus";
            this.lbStatus.Size = new System.Drawing.Size(35, 13);
            this.lbStatus.TabIndex = 3;
            this.lbStatus.Text = "label3";
            // 
            // btnChange
            // 
            this.btnChange.Location = new System.Drawing.Point(56, 118);
            this.btnChange.Name = "btnChange";
            this.btnChange.Size = new System.Drawing.Size(160, 23);
            this.btnChange.TabIndex = 4;
            this.btnChange.Text = "Thay đổi trạng thái hoạt động";
            this.btnChange.UseVisualStyleBackColor = true;
            this.btnChange.Click += new System.EventHandler(this.btnChange_Click);
            // 
            // frmCapNhatTinhTrangMerchant
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(284, 261);
            this.Controls.Add(this.btnChange);
            this.Controls.Add(this.lbStatus);
            this.Controls.Add(this.label2);
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
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label lbStatus;
        private System.Windows.Forms.Button btnChange;
    }
}