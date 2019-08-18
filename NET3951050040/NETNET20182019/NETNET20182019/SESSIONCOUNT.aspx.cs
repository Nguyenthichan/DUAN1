using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace NETNET20182019
{
    public partial class SESSIONCOUNT : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Response.Write("Your visitor number is " + Application["sessioncount"]);
        }
    }
}