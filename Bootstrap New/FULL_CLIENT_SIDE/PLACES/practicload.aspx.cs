using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace botstrap.FULL_CLIENT_SIDE.PLACES
{
    public partial class practicload : System.Web.UI.Page
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
                place.Text = "BANDRA FORT";
                String strQuery = "select place,first,second,third,fourth from places_info where place='" + place.Text + "'";
                SqlCommand objCmd = new SqlCommand(strQuery, objConn);
                //objCmd.Parameters.AddWithValue("@place", place.Text);
                //objRead = objCmd.ExecuteReader();
                SqlDataReader reader = objCmd.ExecuteReader();
                while (reader.Read())
                {
                    lbl1.Text = reader["place"] + "";
                    lbl2.Text = reader["first"] + "";
                    lbl3.Text = reader["second"] + "";
                    lbl4.Text = reader["third"] + "";
                    lbl5.Text = reader["fourth"] + "";
                    

                }
                
            }
            catch  {  }
            objConn.Close();
        }
    }
}