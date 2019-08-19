using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Detaicuachan
{
    public class TaiKhoan
    {
        private string idnguoidung;
        public string Idnguoidung
        {
            get { return idnguoidung; }
            set { idnguoidung = value; }
        }
        
        private string tennguoidung;
        public string Tennguoidung
        {
            get { return tennguoidung; }
            set { tennguoidung = value; }
        }
        private string taikhoan;
        public string Taikhoan
        {
            get { return taikhoan; }
            set { taikhoan = value; }
        }
        private string matkhau;
        public string Matkhau
        {
            get { return matkhau; }
            set { matkhau = value; }
        }
        private string email;
        public string Email
        {
            get { return email; }
            set { email = value; }
        }
    }
}