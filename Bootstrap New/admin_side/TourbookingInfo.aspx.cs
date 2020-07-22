using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace botstrap.admin_side
{
    public partial class TourbookingInfo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
         protected void lbInsert_Click(object sender, EventArgs e)
         {
            SqlDataSource1.InsertParameters["tour_name"].DefaultValue =
             ((TextBox)GridView1.FooterRow.FindControl("txtname")).Text;

            SqlDataSource1.InsertParameters["holder_name"].DefaultValue =
             ((TextBox)GridView1.FooterRow.FindControl("txthname")).Text;

            SqlDataSource1.InsertParameters["email"].DefaultValue =
             ((TextBox)GridView1.FooterRow.FindControl("txtemail")).Text;

            SqlDataSource1.InsertParameters["phone"].DefaultValue =
             ((TextBox)GridView1.FooterRow.FindControl("txtphone")).Text;

            SqlDataSource1.InsertParameters["date"].DefaultValue =
             ((TextBox)GridView1.FooterRow.FindControl("txtdate")).Text;

            SqlDataSource1.InsertParameters["no_person"].DefaultValue =
             ((TextBox)GridView1.FooterRow.FindControl("txtnumber")).Text;

            SqlDataSource1.InsertParameters["price"].DefaultValue =
             ((TextBox)GridView1.FooterRow.FindControl("txtdate")).Text;

       
            SqlDataSource1.Insert();
        }
    }
}
        