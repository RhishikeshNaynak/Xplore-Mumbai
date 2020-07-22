using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace botstrap.admin_side
{
    public partial class Addimage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void b1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection();
            string b;
            con.ConnectionString = "Data Source=PRATHMESH29\\SQLEXPRESS;Initial Catalog=project;Integrated Security=True";
            b = "Images1/" + f1.FileName;
            con.Open();
            SqlCommand cmd = new SqlCommand("insert into upload " + "(image_name,image_images)values(@image_name,@image_images)", con);

            cmd.Parameters.AddWithValue("@image_name", t1.Text);
            cmd.Parameters.AddWithValue("@image_images", b);

            cmd.ExecuteNonQuery();
            con.Close();
        }
    }
}