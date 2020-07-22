using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace botstrap.FULL_CLIENT_SIDE.PACKAGES
{
    public partial class _4_daysPackage1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // objConn.Open();
            String strConn = "Data Source=LAPTOP-4UMQMUG2;Initial Catalog=project;Integrated Security=True";
            SqlConnection objConn = new SqlConnection(strConn);
           // SqlDataReader objRead;
            try
            {
                objConn.Open();
                Label9.Text = "4 DAYS";
                String strQuery = "select day1,day11,day2,day22,day3,day33,day4,day44 from fourdaytour where tour='" + Label9.Text + "'";
                SqlCommand objCmd = new SqlCommand(strQuery, objConn);
                //objCmd.Parameters.AddWithValue("@place", place.Text);
                //objRead = objCmd.ExecuteReader();
                SqlDataReader reader = objCmd.ExecuteReader();
                while (reader.Read())
                {
                    Label1.Text = reader["day1"] + "";
                    Label2.Text = reader["day11"] + "";
                    Label3.Text = reader["day2"] + "";
                    Label4.Text = reader["day22"] + "";
                    Label5.Text = reader["day3"] + "";
                    Label6.Text = reader["day33"] + "";
                    Label7.Text = reader["day4"] + "";
                    Label8.Text = reader["day44"] + "";
                   
                   
                }

            }
            catch { }
            objConn.Close();
        }
    }
}