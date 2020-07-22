using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace botstrap.admin_side
{
    public partial class Beach_add_update : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void lbInsert_Click(object sender, EventArgs e)
        {
            SqlDataSource1.InsertParameters["place"].DefaultValue =
             ((TextBox)GridView1.FooterRow.FindControl("txtplace")).Text;

            SqlDataSource1.InsertParameters["first_line"].DefaultValue =
             ((TextBox)GridView1.FooterRow.FindControl("txtfirst")).Text;

            SqlDataSource1.InsertParameters["second_line"].DefaultValue =
             ((TextBox)GridView1.FooterRow.FindControl("txtsecond")).Text;

            SqlDataSource1.InsertParameters["third_line"].DefaultValue =
             ((TextBox)GridView1.FooterRow.FindControl("txtthird")).Text;

            SqlDataSource1.InsertParameters["fourth_line"].DefaultValue =
             ((TextBox)GridView1.FooterRow.FindControl("txtfourth")).Text;

            SqlDataSource1.Insert();
        }
    }
}