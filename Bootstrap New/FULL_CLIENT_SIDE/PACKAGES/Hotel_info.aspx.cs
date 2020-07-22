using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace botstrap.FULL_CLIENT_SIDE.PACKAGES
{
    public partial class Hotel_info : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // objConn.Open();
            String strConn = "Data Source=LAPTOP-4UMQMUG2;Initial Catalog=project;Integrated Security=True";
            SqlConnection objConn = new SqlConnection(strConn);
            //SqlDataReader objRead;
            try
            {
                objConn.Open();
                lbl.Text = "HOTEL SAHARA STAR";
                String strQuery = "select first_line,second_line,third_line,fourth_line,fifth_line from hotel_info where hotel_name='" + lbl.Text + "'";
                SqlCommand objCmd = new SqlCommand(strQuery, objConn);
                //objCmd.Parameters.AddWithValue("@place", place.Text);
                //objRead = objCmd.ExecuteReader();
                SqlDataReader reader = objCmd.ExecuteReader();
                while (reader.Read())
                {
                    //lbl1.Text = reader["hotel_name"] + "";
                    lbl2.Text = reader["first_line"] + "";
                    lbl3.Text = reader["second_line"] + "";
                    lbl4.Text = reader["third_line"] + "";
                    lbl5.Text = reader["fourth_line"] + "";
                    lbl6.Text = reader["fifth_line"] + "";
                }

            }
            catch { }
            objConn.Close();
        }
    }
}