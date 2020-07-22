using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace botstrap.transparent
{
    public partial class reset : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void submit_Click(object sender, EventArgs e)
        {
            System.Threading.Thread.Sleep(4000);
            string strConn = "Data Source=LAPTOP-4UMQMUG2;Initial Catalog=project;Integrated Security=True";
            SqlConnection objConn = new SqlConnection(strConn);
            try
            {
                objConn.Open();
                int intval;
                String strQuery = @"update registration set passward='" + password.Text + "' where passward='" + Text.Text + "' ";
                SqlCommand objCmd = new SqlCommand(strQuery, objConn);


                intval = objCmd.ExecuteNonQuery();
                if (intval > 0)
                {
                    lbl1.Text = "PASSWARD  RESET  SUCCESSFULLY";
                }
                else
                {
                    lbl1.Text = "TRY  AGAIN";
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
    }
}