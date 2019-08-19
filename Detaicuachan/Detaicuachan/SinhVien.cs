using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Detaicuachan
{
    public class SinhVien
    {
        private string masv;
        public string Masv
        {
            get { return masv; }
            set { masv= value; }
        }

        private string tensv;
        public string Tensv
        {
            get { return tensv; }
            set { tensv = value; }
        }
        private bool gioitinh;
        public bool Gioitinh
        {
            get { return gioitinh; }
            set { gioitinh= value; }
        }
        private string diachi;
        public string Diachi
        {
            get { return diachi; }
            set { diachi= value; }
        }
        private string ngaysinh;
        public string Ngaysinh
        {
            get { return ngaysinh; }
            set { ngaysinh = value; }
        }
        private string lop;
        public string Lop
        {
            get { return lop; }
            set { lop = value; }
        }
        private string khoa;
        public string Khoa
        {
            get { return khoa; }
            set { khoa = value; }
        }
    }
}