using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;
using System.Net;
using System.Data.SqlClient;
using System.Data;
using System.Web.Configuration;

namespace botstrap
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
                string strConn = WebConfigurationManager.ConnectionStrings["projectConnectionString"].ConnectionString;
                SqlConnection objConn = new SqlConnection(strConn);

                //  objRead = objCmd.ExecuteReader();
                // if (objRead.Read())
            try
                {

                MailMessage msg = new MailMessage();
                msg.From = new MailAddress("rhishi4545@gmail.com");
                msg.To.Add(TextBox1.Text);
                msg.Subject = "CANCEL BOOKING DETAILS [CITY GAS AGENCY]";
                msg.Body = ("DATE.:- " + TextBox3.Text + "<br/>" + "ORDER NO.:- " + TextBox2.Text + "<br/>" + "CONSUMER NO.:- "+" " + "<br/>" + " Your Booking Successfully cancelled" + "<br/>" + "THANK YOU");



                msg.IsBodyHtml = true;

                SmtpClient smt = new SmtpClient();
                smt.Host = "smtp.gmail.com";
                System.Net.NetworkCredential ntwd = new NetworkCredential();
                ntwd.UserName = "rhishi4545@gmail.com"; //Your Email ID  
                ntwd.Password = "rhishi_06"; // Your Password  
                smt.UseDefaultCredentials = true;
                smt.Credentials = ntwd;
                smt.Port = 587;
                smt.EnableSsl = true;
                smt.Send(msg);
                lbl2.Text = "REGISTRATION DETAILS SEND SUCCESSFULLY";
                lbl2.ForeColor = System.Drawing.Color.ForestGreen;
                }
            catch
            {
                lbl1.Text = "Try Again";
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {


            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
          
        }
                
   }
}