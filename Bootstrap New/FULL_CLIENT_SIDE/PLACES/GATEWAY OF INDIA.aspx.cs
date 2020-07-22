using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace botstrap.FULL_CLIENT_SIDE.PLACES
{
    public partial class GATEWAY_OF_INDIA : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            String strConn = "Data Source=LAPTOP-4UMQMUG2;Initial Catalog=project;Integrated Security=True";
            SqlConnection objConn = new SqlConnection(strConn);
            //SqlDataReader objRead;
            try
            {
                objConn.Open();
                lbl.Text = "GATEWAY OF INDIA";
                String strQuery = "select first_line,second_line,third_line,fourth_line from places_info where place='" + lbl.Text + "'";
                SqlCommand objCmd = new SqlCommand(strQuery, objConn);
                // objCmd.Parameters.AddWithValue("@place", txt1.Text);
                // objRead = objCmd.ExecuteReader();
                SqlDataReader reader = objCmd.ExecuteReader();
                while (reader.Read())
                {
                    lbl1.Text = reader["first_line"] + "";
                    lbl2.Text = reader["second_line"] + "";
                    lbl3.Text = reader["third_line"] + "";
                    lbl4.Text = reader["fourth_line"] + "";


                }
            }

            catch (Exception ex) { throw ex; }
        }
    }
}