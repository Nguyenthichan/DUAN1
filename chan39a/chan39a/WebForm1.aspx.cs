using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace chan39a
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Comment();
        }
        protected void btngnd_Click(object sender, EventArgs e)
        {
            string file = Server.MapPath(@"\") + "data.txt";
            using (StreamWriter writer = new StreamWriter(file, true))
            {
                writer.WriteLine(txttieude.Text);
                writer.WriteLine(txthoten.Text);
                writer.WriteLine(txtemail.Text);
                writer.WriteLine(txtnoidung.Text);
                writer.WriteLine("#END");
                writer.Close();
            }
        }
        private void Comment(){
            string file=Server.MapPath(@"\") + "data.txt";
            using(StreamReader reader=new StreamReader(file))
            {
                string noidung=reader.ReadToEnd();
                string [] delimiter={"#END"};
                string[] arr=noidung.Split(delimiter,StringSplitOptions.RemoveEmptyEntries);
                foreach(string s in arr){
                    string Xuongdong;
                    Xuongdong=Regex.Replace(s,@"\r\n",@"<br/>");
                    string entry=string.Format("<tr><td colspan=\"2\"{0}></td></tr>",Xuongdong);
                    EntryComment.InnerHtml += entry;



                }

            }
        }
    }
}