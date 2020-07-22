using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace botstrap.admin_side
{
    public partial class VeiwFeeback : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void lbInsert_Click(object sender, EventArgs e)
        {
            SqlDataSource1.InsertParameters["name"].DefaultValue =
             ((TextBox)GridView1.FooterRow.FindControl("txtname")).Text;

            SqlDataSource1.InsertParameters["email"].DefaultValue =
             ((TextBox)GridView1.FooterRow.FindControl("txtemail")).Text;

            SqlDataSource1.InsertParameters["comment"].DefaultValue =
             ((TextBox)GridView1.FooterRow.FindControl("txtcomment")).Text;

         
            SqlDataSource1.Insert();
        }
    }
}