using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace NETNET20182019
{
    public partial class DANGNHAP : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string taikhoan, matkhau;

            HttpCookie c1 = Request.Cookies["username"];

            HttpCookie c2 = Request.Cookies["password"];

            if (c1 != null)
            {

                taikhoan = c1.Value.ToString();

                matkhau = c2.Value.ToString();

                Session.Add("username", taikhoan);

                if (taikhoan == "admin" && matkhau == "123")
                {

                    Response.Redirect("Xemthongtinmaychu.aspx");

                }

            }
        }

        protected void btndangnhap_Click(object sender, EventArgs e)
        {
            string taikhoan = txtUsername.Value;

            string matkhau = txtPassword.Value;

            Application["username"] = taikhoan;

            Application["password"] = matkhau;

            if (taikhoan == "admin" && matkhau == "123")
            {

                Session.Add("username", taikhoan);

                Session.Add("password", matkhau);

                if (chkLuu.Checked)
                {

                    HttpCookie c1 = new HttpCookie("username", taikhoan);

                    HttpCookie c2 = new HttpCookie("password", matkhau);

                    DateTime d = DateTime.Now;

                    TimeSpan ts = new TimeSpan(0, 1, 0, 0);

                    c1.Expires = d.Add(ts);

                    c2.Expires = d.Add(ts);

                    Response.Cookies.Add(c1);

                    Response.Cookies.Add(c2);

                }

                Response.Redirect("Xemthongtinmaychu.aspx");

            }
        }

    }
}