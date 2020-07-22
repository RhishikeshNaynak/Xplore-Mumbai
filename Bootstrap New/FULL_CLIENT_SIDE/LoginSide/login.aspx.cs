using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace botstrap.transparent
{
    public partial class log : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void submit_Click(object sender, EventArgs e)
        {
           
            Session["username"] = Text.Text;
            Session["email_id"] = email.Text;

            
            if (Page.IsValid)
            {
                string strConn = "Data Source=LAPTOP-4UMQMUG2;Initial Catalog=project;Integrated Security=True";
            SqlConnection objConn = new SqlConnection(strConn);
            SqlDataReader objRead;
            try
            {
                objConn.Open();
                string strQuery = "select * from registration where username=@username and passward=@passward";
                SqlCommand objCmd = new SqlCommand(strQuery, objConn);
                objCmd.Parameters.AddWithValue("@username", Text.Text);
                objCmd.Parameters.AddWithValue("@passward", password.Text);
                objRead = objCmd.ExecuteReader();
                if (objRead.Read())
                {
                   
                    Response.Redirect("/FULL_CLIENT_SIDE/homepage/aspnett.aspx");
                }
                else
                {
                    Response.Redirect("forgot.aspx");
                }
            }
            catch
            {
            }

        }
            else
            {
                lbl1.Text = "TRY Again";
            }

        }
    }
}