using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Mytour.folder_html
{
    public partial class login_admin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
          
        }

        protected void btnDangNhap_Click(object sender, EventArgs e)
        {
            string taikhoan = txtTaiKhoan.Text;
            string matkhau = txtMatKhau.Text;
            string str= @"Data Source=DESKTOP-U2HC9E9\SQLEXPRESS; Initial Catalog=webMytour; User id=sa; Password=123456";
            SqlConnection conn = new SqlConnection(str);
            conn.Open();
            string query = "select Count(*) from Khach_hang where tai_khoan='"+txtTaiKhoan.Text+"'and mat_khau='"+txtMatKhau.Text+"'";
            SqlCommand cmd = new SqlCommand(query, conn);
            int so_luong = int.Parse(cmd.ExecuteScalar().ToString());

            conn.Close();
            if(so_luong == 1)
            {
                Response.Redirect("tour-admin.aspx");
            }
            else
            {
                lbError.Text = "Tài khoản hoặc mật khẩu không đúng!";
            }
        }
    }
   
}