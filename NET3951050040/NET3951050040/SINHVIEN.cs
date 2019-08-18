using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace NET3951050040
{
    public class SINHVIEN
    {
        public string masv { get; set; }

        public string tensv { get; set; }

        public bool gioitinh { get; set; }

        public string diachi { get; set; }

        public DateTime ngaysinh { get; set; }

        public string lop { get; set; }

        public string khoa { get; set; }

        public SINHVIEN(string masv, string tensv, bool gioitinh, string diachi, DateTime ngaysinh, string lop, string khoa)
        {

            this.masv = masv;

            this.tensv = tensv;

            this.gioitinh = gioitinh;

            this.diachi = diachi;

            this.ngaysinh = ngaysinh;

            this.lop = lop;

            this.khoa = khoa;

           

        }

    }
}