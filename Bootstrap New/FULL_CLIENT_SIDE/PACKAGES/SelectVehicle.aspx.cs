using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
namespace botstrap.Tour_packages
{
    public partial class SelectVehicle : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
          //  if (Session["username"] == null)
          //  {
            //     Response.Redirect("/FULL_CLIENT_SIDE/PACKAGES/Error_page.aspx");
           // }
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {


            GridViewRow gr = GridView1.SelectedRow;
            TextBox1.Text = gr.Cells[1].Text;
           TextBox2.Text = gr.Cells[2].Text;
            TextBox3.Text = gr.Cells[3].Text;
            TextBox4.Text = gr.Cells[4].Text;
            TextBox5.Text = gr.Cells[5].Text;
            TextBox6.Text = gr.Cells[6].Text;
           
        }
    }
}