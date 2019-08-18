using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace NET3951050040
{
    public partial class DANGNHAP : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btndangnhap_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(@"Data Source=PC-Dora\SQLEXPRESS;Initial Catalog=CuoiKy;Integrated Security=True");
            conn.Open();
            string tk = txtTaiKhoan.ToString();
            string mk = txtMatKhau.ToString();
            string sql = "select * from TaiKhoan where taikhoan='" + tk + "' and  matkhau='" + mk + "'";
            SqlCommand cmd = new SqlCommand(sql, conn);
            SqlDataReader dta = cmd.ExecuteReader();
            if (dta.Read() == true)
            {
                lbthongbao.Text="Đăng nhập thành công";
            }
            else
            {
                lbthongbao.Text="Tài Khoản hoặc Mật Khẩu không đúng";
            }

        }
    }
}