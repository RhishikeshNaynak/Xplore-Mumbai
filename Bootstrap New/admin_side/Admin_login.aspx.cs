using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace botstrap.admin_side
{
    public partial class Admin_login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void submit_Click(object sender, EventArgs e)
        {
            String strUser = "sid", strPwd = "sid";
            if (Text.Text == strUser && password.Text == strPwd)
            {
                Response.Redirect("Home.aspx");
            }
            else
            {
                Response.Redirect("Error_page2.aspx");
            }

        }
    }
}