using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Diagnostics;
using System.Drawing;
using System.Linq;
using System.Net.Http;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using CPClient.Business;
using CPClient.Core;
using CPClient.Core.Models;

namespace FC_MST
{
    public partial class LoginForm : Form
    {
        
        public LoginForm()
        {
            InitializeComponent();
        }

        private void OnLoginFailed(string message)
        {
            MessageBox.Show("Đăng nhập thất bại: " + message);
            EnableFields();
        }

        private void btnLogin_Click(object sender, EventArgs e)
        {
            txtUserName.Text = "demo01";
            txtPassword.Text = "123456";
            var response = AuthenticationLogic.Login(txtUserName.Text, txtPassword.Text, OnLoginSuccess, OnLoginFailed);
            DisableFields();
        }

        private void DisableFields()
        {
            btnLogin.Enabled = false;
            txtPassword.Enabled = false;
            txtUserName.Enabled = false;
        }

        private void EnableFields()
        {
            btnLogin.Enabled = true;
            txtPassword.Enabled = true;
            txtUserName.Enabled = true;
        }

        private void OnLoginSuccess(string s)
        {
            // MessageBox.Show("Đăng nhập thành công với tài khoản: " + sessionstate.UserName);
            this.DialogResult = DialogResult.OK;
            this.Close();
        }

        private void LoginForm_KeyDown(object sender, KeyEventArgs e)
        {
            if (e.KeyCode == Keys.Enter)
            {
                var success = AuthenticationLogic.Login(txtUserName.Text, txtPassword.Text);
                DisableFields();
            }
        }
    }
}
