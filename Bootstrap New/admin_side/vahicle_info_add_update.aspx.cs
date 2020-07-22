using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace botstrap.admin_side
{
    public partial class vahicle_info_add_update : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void lbInsert_Click(object sender, EventArgs e)
        {
            SqlDataSource1.InsertParameters["vehicle_name"].DefaultValue =
             ((TextBox)GridView1.FooterRow.FindControl("txtname")).Text;

            SqlDataSource1.InsertParameters["vehicle_type"].DefaultValue =
             ((TextBox)GridView1.FooterRow.FindControl("txttype")).Text;

            SqlDataSource1.InsertParameters["specification"].DefaultValue =
             ((TextBox)GridView1.FooterRow.FindControl("txtspeci")).Text;

            SqlDataSource1.InsertParameters["seats"].DefaultValue =
             ((TextBox)GridView1.FooterRow.FindControl("txtseats")).Text;

            SqlDataSource1.InsertParameters["price"].DefaultValue =
             ((TextBox)GridView1.FooterRow.FindControl("txtpice")).Text;

            SqlDataSource1.Insert();
        }
    }
}