using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace baithuchanh
{
    public partial class Dangkyphong : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void btndangky_Click(object sender, EventArgs e)
        {
            if(Page.IsValid)//kiểm tra dữ liệu thành công
            {
                lbthongbao.Text = string.Format("Bạn {0} đã đăng ký thành công !",txthoten.Text);
            }
        }
      
    }
}