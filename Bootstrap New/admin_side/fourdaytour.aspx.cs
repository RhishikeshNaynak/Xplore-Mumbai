using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace botstrap.admin_side
{
    public partial class fourdaytour : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void lbInsert_Click(object sender, EventArgs e)
        {

            SqlDataSource1.InsertParameters["tour"].DefaultValue =
             ((TextBox)GridView1.FooterRow.FindControl("txttour")).Text;

            SqlDataSource1.InsertParameters["day1"].DefaultValue =
             ((TextBox)GridView1.FooterRow.FindControl("txtday")).Text;

            SqlDataSource1.InsertParameters["day11"].DefaultValue =
             ((TextBox)GridView1.FooterRow.FindControl("txtdaya")).Text;

            SqlDataSource1.InsertParameters["day2"].DefaultValue =
             ((TextBox)GridView1.FooterRow.FindControl("txtdayb")).Text;

            SqlDataSource1.InsertParameters["day22"].DefaultValue =
             ((TextBox)GridView1.FooterRow.FindControl("txtdayc")).Text;

            SqlDataSource1.InsertParameters["day3"].DefaultValue =
             ((TextBox)GridView1.FooterRow.FindControl("txtdayd")).Text;

            SqlDataSource1.InsertParameters["day33"].DefaultValue =
             ((TextBox)GridView1.FooterRow.FindControl("txtdaye")).Text;

            SqlDataSource1.InsertParameters["day4"].DefaultValue =
             ((TextBox)GridView1.FooterRow.FindControl("txtdayf")).Text;

            SqlDataSource1.InsertParameters["day44"].DefaultValue =
             ((TextBox)GridView1.FooterRow.FindControl("txtdayg")).Text;

            

            SqlDataSource1.Insert();
        }

    }
}