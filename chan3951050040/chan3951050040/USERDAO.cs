using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

namespace chan3951050040
{
    public class USERDAO
    {
        string connectionString = ConfigurationManager.ConnectionStrings["TAIKHOAN"].ConnectionString;
    public bool CheckUser(string userName)

    {

        string sql = @"SELECT COUNT (*) From dangky where taikhoan = @tk";

        using (SqlConnection connection = new SqlConnection(connectionString))

        {

            SqlCommand command = new SqlCommand(sql, connection);

            command.Parameters.AddWithValue("@tk", userName);

            connection.Open();

            int count = (int)command.ExecuteScalar();



            return (count >= 1);

        }

    }



    public bool laycosodulieutuform(string query)

    {

        using (SqlConnection connection = new SqlConnection(connectionString))

        {

            SqlCommand command = new SqlCommand(query, connection);

            connection.Open();

            int count = (int)command.ExecuteScalar();

            return (count >= 1);

        }

    }



    public bool Insert( dangky tk)

    {

        using (SqlConnection connection = new SqlConnection(connectionString))

        {

            string sql = "INSERT INTO dangky values('taikhoan', @taikhoan, @matkhau, @nhaplaimatkhau, @email, @hovaten)";

            SqlCommand com = new SqlCommand(sql, connection);

            com.Parameters.AddWithValue("@tk", tk.Taikhoan);

            com.Parameters.AddWithValue("@matkhau", tk.Matkhau);

            com.Parameters.AddWithValue("@nhaplaimatkhau", tk.Nhaplaimatkhau);

            com.Parameters.AddWithValue("@email", tk.Email);

            com.Parameters.AddWithValue("@hovaten", tk.Hovaten);

            connection.Open();

            int result = com.ExecuteNonQuery();

            return (result >= 1);

        }

    }

	public USERDAO()

	{

		//

		// TODO: Add constructor logic here

		//

	}
    }
}