using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;
namespace botstrap
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
          
    
        }

        protected void btn1_Click(object sender, EventArgs e)
        {
           
            System.Threading.Thread.Sleep(4000);
            string strConn = "Data Source=HP;Initial Catalog=addbook;Integrated Security=True";
            SqlConnection objConn = new SqlConnection(strConn);
            try
            {
                objConn.Open();
                String strQuery = "Insert INTO prac3addbook VALUES(@book_name,@book_id,@auther_name,@copies,@edition,@price,@rating)";
                SqlCommand objCmd = new SqlCommand(strQuery, objConn);
                objCmd.Parameters.AddWithValue("@book_name", txt1.Text);
                objCmd.Parameters.AddWithValue("@book_id", txt2.Text);
                objCmd.Parameters.AddWithValue("@auther_name", TextBox1.Text);
                objCmd.Parameters.AddWithValue("@copies", txt4.Text);
                objCmd.Parameters.AddWithValue("@edition", txt5.Text);
                objCmd.Parameters.AddWithValue("@price", txt6.Text);
                objCmd.Parameters.AddWithValue("@rating", txt7.Text);
                objCmd.ExecuteNonQuery();
                lbl1.Text = "VALUE  INSERTED  SUCCESSFULLY";
            }
            catch
            {
                lbl1.Text = "TRY  AGAIN";
            }

            objConn.Close();

        }
    }
}