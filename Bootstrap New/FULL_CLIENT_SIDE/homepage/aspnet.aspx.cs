using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace WebApplication4
{
    public partial class aspnet : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

     

        protected void Button1_Click(object sender, EventArgs e)
        {
            string strConn = "Data Source=LAPTOP-4UMQMUG2;Initial Catalog=project;Integrated Security=True";
            SqlConnection objConn = new SqlConnection(strConn);
            try
            {
                objConn.Open();
                String strQuery = "Insert INTO feedback VALUES(@name,@email,@comments)";
                SqlCommand objCmd = new SqlCommand(strQuery, objConn);
                objCmd.Parameters.AddWithValue("@name", txt1.Text);
                objCmd.Parameters.AddWithValue("@email", txt2.Text);
                objCmd.Parameters.AddWithValue("@comments", txt3.Text);
               
              
                objCmd.ExecuteNonQuery();
                lbl.Text = "Your Comments Send SUCCESSFULLY";
            }
            catch
            {
                lbl.Text = "TRY  AGAIN";
            }

            objConn.Close();
                
        }
    }
}
    

        