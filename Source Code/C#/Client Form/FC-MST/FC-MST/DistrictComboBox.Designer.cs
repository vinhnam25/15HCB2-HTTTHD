namespace FC_MST
{
    partial class DistrictComboBox
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
            this.cbxDistricts = new System.Windows.Forms.ComboBox();
            this.SuspendLayout();
            // 
            // cbxDistricts
            // 
            this.cbxDistricts.Dock = System.Windows.Forms.DockStyle.Bottom;
            this.cbxDistricts.FormattingEnabled = true;
            this.cbxDistricts.Location = new System.Drawing.Point(0, 7);
            this.cbxDistricts.Name = "cbxDistricts";
            this.cbxDistricts.Size = new System.Drawing.Size(150, 21);
            this.cbxDistricts.TabIndex = 0;
            // 
            // DistrictComboBox
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Controls.Add(this.cbxDistricts);
            this.Name = "DistrictComboBox";
            this.Size = new System.Drawing.Size(150, 28);
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.ComboBox cbxDistricts;
    }
}
