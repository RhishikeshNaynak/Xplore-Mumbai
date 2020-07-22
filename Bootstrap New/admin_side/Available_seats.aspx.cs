using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace botstrap.admin_side
{
    public partial class Available_seats : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void lbInsert_Click(object sender, EventArgs e)
        {
            SqlDataSource1.InsertParameters["vehicle_id"].DefaultValue =
             ((TextBox)GridView1.FooterRow.FindControl("txtid")).Text;

            SqlDataSource1.InsertParameters["seat_no"].DefaultValue =
             ((TextBox)GridView1.FooterRow.FindControl("txtseat")).Text;

            SqlDataSource1.Insert();
        }

    }
}