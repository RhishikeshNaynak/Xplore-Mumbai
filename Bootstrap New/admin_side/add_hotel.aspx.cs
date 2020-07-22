using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace botstrap.admin_side
{
    public partial class add_hotel : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string strConn = "Data Source=PRATHMESH29\\SQLEXPRESS;Initial Catalog=project;Integrated Security=True";
            SqlConnection objConn = new SqlConnection(strConn);
            try
            {
                objConn.Open();
                String strQuery = "Insert INTO hotel_info VALUES(@hotel_name,@first,@second,@third,@fourth,@fifth)";
                SqlCommand objCmd = new SqlCommand(strQuery, objConn);
                objCmd.Parameters.AddWithValue("@hotel_name", txt1.Text);
                objCmd.Parameters.AddWithValue("@first", txt2.Text);
                objCmd.Parameters.AddWithValue("@second", txt3.Text);
                objCmd.Parameters.AddWithValue("@third", txt4.Text);
                objCmd.Parameters.AddWithValue("@fourth", txt5.Text);
                objCmd.Parameters.AddWithValue("@fifth", txt5.Text);


                objCmd.ExecuteNonQuery();
                lbl.Text = "VALUE  INSERTED  SUCCESSFULLY";
            }
            catch
            {
                lbl.Text = "TRY  AGAIN";
            }

            objConn.Close();
                
        }
    }
}