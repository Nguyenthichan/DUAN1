using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace QUANLYSINHVIEN
{
    public partial class Đangki : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["login"] != null)
            {
                Response.Redirect("/");
            }
        }

        protected void btndangky_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                string HoTen = txtHoTen.Text;
                string UserName = txtTenDangNhap.Text;
                string MatKhau = txtMatKhau.Text;
                string Email = txtEmail.Text;
                NguoiDung nguoiDung = new NguoiDung
                {
                    Tennguoidung = HoTen,
                    Matkhau = MatKhau,
                    Email = Email,
                    Username = UserName
                };
                userDAO DAO = new userDAO();
                if (DAO.ThemNguoiDung(nguoiDung))
                {
                    lblThongBao.Text = "Đăng ký thành công.";
                }
                else
                    lblThongBao.Text = "Tên người dùng đã có trong hệ thống, bạn vui lòng chọn tên khác.";
            }
        }
    }
}