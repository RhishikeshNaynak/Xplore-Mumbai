using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace botstrap.transparent
{
    public partial class security : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void submit_Click(object sender, EventArgs e)
        {
            System.Threading.Thread.Sleep(4000);
            string strConn = "Data Source=LAPTOP-4UMQMUG2;Initial Catalog=project;Integrated Security=True";
            SqlConnection objConn = new SqlConnection(strConn);
            SqlDataReader objRead;
            try
            {
                objConn.Open();
                string strQuery = "select * from registration where question=@question and answer=@answer";
                SqlCommand objCmd = new SqlCommand(strQuery, objConn);
                objCmd.Parameters.AddWithValue("@question", question.SelectedValue);
                objCmd.Parameters.AddWithValue("@answer", answer.Text);
                objRead = objCmd.ExecuteReader();
                if (objRead.Read())
                {
                    Response.Redirect("/FULL_CLIENT_SIDE/homepage/aspnet.aspx");
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
    }
}