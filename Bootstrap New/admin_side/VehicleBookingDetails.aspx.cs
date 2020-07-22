using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace botstrap.admin_side
{
    public partial class VehicleBookingDetails : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void lbInsert_Click(object sender, EventArgs e)
        {
            SqlDataSource1.InsertParameters["name"].DefaultValue =
             ((TextBox)GridView1.FooterRow.FindControl("txtname")).Text;

            SqlDataSource1.InsertParameters["email_id"].DefaultValue =
             ((TextBox)GridView1.FooterRow.FindControl("txtemail")).Text;

            SqlDataSource1.InsertParameters["vehicle_name"].DefaultValue =
             ((TextBox)GridView1.FooterRow.FindControl("txtvname")).Text;

            SqlDataSource1.InsertParameters["vehicle_no"].DefaultValue =
             ((TextBox)GridView1.FooterRow.FindControl("txtvehicleno")).Text;

            SqlDataSource1.InsertParameters["seat_no"].DefaultValue =
             ((TextBox)GridView1.FooterRow.FindControl("txtseno")).Text;

            SqlDataSource1.InsertParameters["seat_noo"].DefaultValue =
             ((TextBox)GridView1.FooterRow.FindControl("txtseatnoo")).Text;

            SqlDataSource1.InsertParameters["date"].DefaultValue =
             ((TextBox)GridView1.FooterRow.FindControl("txtdate")).Text;

            SqlDataSource1.InsertParameters["no_person"].DefaultValue =
             ((TextBox)GridView1.FooterRow.FindControl("txtperson")).Text;

            SqlDataSource1.InsertParameters["price"].DefaultValue =
             ((TextBox)GridView1.FooterRow.FindControl("txtprice")).Text;

            SqlDataSource1.InsertParameters["tprice"].DefaultValue =
             ((TextBox)GridView1.FooterRow.FindControl("txttprice")).Text;

            SqlDataSource1.Insert();
        }
    }
}