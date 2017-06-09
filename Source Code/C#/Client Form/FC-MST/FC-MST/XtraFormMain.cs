using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace FC_MST
{
    public partial class XtraFormMain : Form
    {
        private Point _imageLocation = new Point(15, 5);
        private Point _imgHitArea = new Point(13, 2);

        public XtraFormMain()
        {
            InitializeComponent();

            f_InitTab();
        }

        private void f_InitTab()
        {
            //Set the Mode of Drawing as Owner Drawn
            tcManager.DrawMode = System.Windows.Forms.TabDrawMode.OwnerDrawFixed;

            //Add the Handler to draw the Image on Tab Pages
            tcManager.DrawItem += tcManager_DrawItem; 
        }

        private void tcManager_DrawItem(object sender, DrawItemEventArgs e)
        {
            //Close Image to draw
            Image Img = new Bitmap("close.png");

            Rectangle r = e.Bounds;
            r = this.tcManager.GetTabRect(e.Index);
            r.Offset(2, 2);

            Brush TitleBrush = new SolidBrush(Color.Black);
            Font f = this.Font;

            string title = this.tcManager.TabPages[e.Index].Text;

            e.Graphics.DrawString(title, f, TitleBrush, new PointF(r.X, r.Y));
            e.Graphics.DrawImage(Img, new Point(r.X + (this.tcManager.GetTabRect(e.Index).Width - _imageLocation.X), _imageLocation.Y));

        }

        private void tcManager_MouseClick(object sender, MouseEventArgs e)
        {
            TabControl tc = (TabControl)sender;
            Point p = e.Location;
            int _tabWidth = 0;
            _tabWidth = this.tcManager.GetTabRect(tc.SelectedIndex).Width - (_imgHitArea.X);
            Rectangle r = this.tcManager.GetTabRect(tc.SelectedIndex);
            r.Offset(_tabWidth, _imgHitArea.Y);
            r.Width = 16;
            r.Height = 16;
            if (r.Contains(p))
            {
                TabPage TabP = (TabPage)tc.TabPages[tc.SelectedIndex];
                tc.TabPages.Remove(TabP);
            }
        }

        public void NhungForm(Form frm)
        {
            frm.TopLevel = false;
            frm.Visible = true;
            frm.FormBorderStyle = FormBorderStyle.None;
            frm.Dock = DockStyle.Fill;

            string title = frm.Text + "  ";
            TabPage myTabPage = new TabPage(title);
            tcManager.TabPages.Add(myTabPage);

            tcManager.TabPages[tcManager.TabCount - 1].Controls.Add(frm);
            this.tcManager.SelectedTab = tcManager.TabPages[tcManager.TabCount - 1];
        }

        private void xemThôngTinMerchantTheoCácViewToolStripMenuItem_Click(object sender, EventArgs e)
        {
            frmXemMerchantTheoView form = new frmXemMerchantTheoView();
            NhungForm(form);
        }

        private void gánQuyềnQuảnLýMerchantChoAgentToolStripMenuItem_Click(object sender, EventArgs e)
        {
            frmDanhSachMerchant frm = new frmDanhSachMerchant();
            NhungForm(frm);
        }

    }
}
