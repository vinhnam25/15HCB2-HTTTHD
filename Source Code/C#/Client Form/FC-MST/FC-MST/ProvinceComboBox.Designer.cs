namespace FC_MST
{
    partial class ProvinceComboBox
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
            this.cbxProvinces = new System.Windows.Forms.ComboBox();
            this.SuspendLayout();
            // 
            // cbxProvinces
            // 
            this.cbxProvinces.Dock = System.Windows.Forms.DockStyle.Fill;
            this.cbxProvinces.FormattingEnabled = true;
            this.cbxProvinces.Location = new System.Drawing.Point(0, 0);
            this.cbxProvinces.Name = "cbxProvinces";
            this.cbxProvinces.Size = new System.Drawing.Size(203, 21);
            this.cbxProvinces.TabIndex = 0;
            // 
            // ProvinceComboBox
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.AutoSize = true;
            this.Controls.Add(this.cbxProvinces);
            this.Name = "ProvinceComboBox";
            this.Size = new System.Drawing.Size(203, 21);
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.ComboBox cbxProvinces;
    }
}
