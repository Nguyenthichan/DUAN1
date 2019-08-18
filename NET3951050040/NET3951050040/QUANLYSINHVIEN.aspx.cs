using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace NET3951050040
{
    public partial class QUANLYSINHVIEN : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnthem_Click(object sender, EventArgs e)
        {
            if ((txtmasv.Text == "") && (txttensv.Text == "") && (txtdiachi.Text == "") && (txtlop.Text == "") && (txtkhoa.Text == ""))
            {
                lbthongbao.Text="Vui lòng nhập đầy đủ thông tin !";
            }
            else
            {
                if (KiemTra() != 1)
                {
                    SqlConnection conn = new SqlConnection(@"Data Source=PC-Dora\SQLEXPRESS;Initial Catalog=CuoiKy;Integrated Security=True");
                    string sql = "INSERT INTO SinhVien (masv, tensv, gioitinh, diachi, ngaysinh, lop, khoa) VALUES (@masv, @tensv, @gioitinh, @diachi, @ngaysinh,@lop, @khoa)";
                    SqlCommand cmd = new SqlCommand(sql, conn);
                    conn.Open();
                    cmd.Parameters.AddWithValue("@masv", txtmasv.Text.ToString());
                    cmd.Parameters.AddWithValue("@tensv", txttensv.Text.ToString());
                    cmd.Parameters.AddWithValue("@gioitinh", ddlgioitinh.SelectedItem.ToString());
                    cmd.Parameters.AddWithValue("@diachi", txtdiachi.Text.ToString());
                    cmd.Parameters.AddWithValue("@ngaysinh", txtngaysinh.Value);
                    cmd.Parameters.AddWithValue("@lop", txtlop.Text.ToString());
                    cmd.Parameters.AddWithValue("@khoa", txtkhoa.Text.ToString());
                    lbthongbao.Text="Thêm thành công";
                    cmd.ExecuteNonQuery();
                    DSSinhVien();
                    conn.Close();
                }
                else lbthongbao.Text="Đã có sinh viên này!";
            }

        }
    }
}