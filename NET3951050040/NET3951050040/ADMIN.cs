using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace NET3951050040
{
    public class ADMIN
    {
        public string username { get; set; }

        public string matkhau { get; set; }

        public string email { get; set; }

        public string diachi { get; set; }

        public string sdt { get; set; }

        public string hoten { get; set; }

        public ADMIN(string username, string matkhau, string email, string diachii, string sdt, string hoten)
        {

            this.username = username;

            this.matkhau = matkhau;

            this.email = email;

            this.diachi = diachi;

            this.sdt = sdt;

            this.hoten = hoten;

        }
    }
}