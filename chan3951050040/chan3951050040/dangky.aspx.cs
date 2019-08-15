using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace chan3951050040
{
    public partial class dangky : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Readcomment();
        }
        private void Readcomment(){
            string sfile=Server.MapPath(@"\") + "data.txt";
            using (StreamReader reader=new StreamReader(sfile))
            {
                string noidung=reader.ReadToEnd();
                string [] dilimiter={"#END"};
                string [] Arrs=noidung.Split(dilimiter,StringSplitOptions.RemoveEmptyEntries);
                foreach
                    (string s in Arrs){
                    string stemp;
                }
                    
            }
        

      