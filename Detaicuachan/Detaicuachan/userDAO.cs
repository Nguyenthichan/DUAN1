using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace Detaicuachan
{
    public class userDAO
    {
        string conn = ConfigurationManager.ConnectionStrings["QUANLYSINHVIEN"].ConnectionString;
        public bool CheckUser(string user, string pass)
        {
            KetNoiCSDL ketNoi = new KetNoiCSDL();
            string sql = @"select count(*) from TAIKHOAN where Taikhoan = @user and MatKhau = @pass and Level = 1";
            ketNoi.MoKetNoi();
            SqlCommand cmd = new SqlCommand(sql, ketNoi.LayKetNoi);
            cmd.Parameters.AddWithValue("@user", user);
            cmd.Parameters.AddWithValue("@pass", pass);
            int result = (int)cmd.ExecuteScalar();
            return (result >= 1);
        }
        public bool CheckLogin(string user, string pass)
        {
            KetNoiCSDL ketNoi = new KetNoiCSDL();
            string sql = @"select count(*) from TAIKHOAN where Taikhoan= @user and MatKhau = @pass";
            ketNoi.MoKetNoi();
            SqlCommand cmd = new SqlCommand(sql, ketNoi.LayKetNoi);
            cmd.Parameters.AddWithValue("@user", user);
            cmd.Parameters.AddWithValue("@pass", pass);
            int result = (int)cmd.ExecuteScalar();
            return (result >= 1);
        }
        /*public bool Themsinhvien(SinhVien sv)
        {
            string sql = @"insert into SINHVIEN(Masv,Tensv,Gioitinh,Diachi,Ngaysinh,Lop,Khoa) values(@masv,@tensv,@gioitinh,@diachi,@ngaysinh,@lop,@khoa)";
            using(SqlConnection connect=new SqlConnection(conn))
            {
                SqlCommand cmd = new SqlCommand(sql, connect);
                cmd.Parameters.AddWithValue("@masv", sv.Masv);
                cmd.Parameters.AddWithValue("@tensv", sv.Tensv);
                cmd.Parameters.AddWithValue("@gioitinh", sv.Gioitinh);
                cmd.Parameters.AddWithValue("@diachi", sv.Diachi);
                cmd.Parameters.AddWithValue("@ngaysinh", sv.Ngaysinh);
                cmd.Parameters.AddWithValue("@lop", sv.Lop);
                cmd.Parameters.AddWithValue("@khoa", sv.Khoa);
                connect.Open();
                int result = cmd.ExecuteNonQuery();
            }
        }
        public DataTable getallUser()
        {
            DataTable data = new DataTable();
            SqlConnection connect = new SqlConnection(conn);
            SqlCommand cmd = new SqlCommand("select*from SINHVIEN", connect);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(data);
            return data;
        }
        public SinhVien GetUserBySINHVIEN(string sv)
        {
            using (SqlConnection coonn = new SqlConnection(conn))
            {
                string sql = @"SELECT*FROM SINHVIEN WHERE sv=@ma";
                SqlCommand cmd = new SqlCommand(sql, coonn);
                cmd.Parameters.AddWithValue("@ma", sv);
                coonn.Open();
                SqlDataReader reader = cmd.ExecuteReader();
                if(reader.Read())
                {
                    SinhVien sinhvien = new SinhVien
                    {
                        Masv=(string)reader["masv"],
                        Tensv = (string)reader["tensv"],
                        Gioitinh = (Boolean)reader["gioitinh"],
                        Diachi = (string)reader["diachi"],
                        Ngaysinh = (string)reader["ngaysinh"],
                        Lop = (string)reader["lop"],
                        Khoa = (string)reader["khoa"],

                    };
                    return sinhvien;
                }
            }
        }*/

        
    }
}