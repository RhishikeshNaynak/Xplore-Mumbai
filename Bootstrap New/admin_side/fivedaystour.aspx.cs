using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace botstrap.admin_side
{
    public partial class fivedaystour : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {


        }

        protected void lbInsert_Click(object sender, EventArgs e)
        {
            SqlDataSource1.InsertParameters["tour"].DefaultValue =
             ((TextBox)GridView1.FooterRow.FindControl("txttour")).Text;

            SqlDataSource1.InsertParameters["first"].DefaultValue =
             ((TextBox)GridView1.FooterRow.FindControl("txtfirst")).Text;

            SqlDataSource1.InsertParameters["firsta"].DefaultValue =
             ((TextBox)GridView1.FooterRow.FindControl("txtfirsta")).Text;

            SqlDataSource1.InsertParameters["second"].DefaultValue =
             ((TextBox)GridView1.FooterRow.FindControl("txtsecond")).Text;

            SqlDataSource1.InsertParameters["seconda"].DefaultValue =
             ((TextBox)GridView1.FooterRow.FindControl("txtseconda")).Text;

            SqlDataSource1.InsertParameters["third"].DefaultValue =
             ((TextBox)GridView1.FooterRow.FindControl("txtthird")).Text;

            SqlDataSource1.InsertParameters["thirda"].DefaultValue =
             ((TextBox)GridView1.FooterRow.FindControl("txtthirda")).Text;

            SqlDataSource1.InsertParameters["fourth"].DefaultValue =
             ((TextBox)GridView1.FooterRow.FindControl("txtfourth")).Text;

            SqlDataSource1.InsertParameters["fourtha"].DefaultValue =
             ((TextBox)GridView1.FooterRow.FindControl("txtfourtha")).Text;

            SqlDataSource1.InsertParameters["fifth"].DefaultValue =
             ((TextBox)GridView1.FooterRow.FindControl("txtfifth")).Text;

            SqlDataSource1.InsertParameters["fiftha"].DefaultValue =
           ((TextBox)GridView1.FooterRow.FindControl("txtfiftha")).Text;




            SqlDataSource1.Insert();
        }

    }
}