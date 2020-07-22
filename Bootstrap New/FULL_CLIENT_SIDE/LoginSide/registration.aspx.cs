using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Net.Mail;
using System.Net;
using System.Data;
using System.Web.Configuration;

namespace botstrap.transparent
{
    public partial class registrationtranspa : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void submit_Click(object sender, EventArgs e)
        {

            System.Threading.Thread.Sleep(4000);

           if (Page.IsValid)
             {
                 string strConn = "Data Source=LAPTOP-4UMQMUG2;Initial Catalog=project;Integrated Security=True";
                SqlConnection objConn = new SqlConnection(strConn);
                try
                {
                    objConn.Open();
                    String strQuery = "Insert INTO registration VALUES(@username,@passward,@email,@phone,@age,@question,@answer)";
                    SqlCommand objCmd = new SqlCommand(strQuery, objConn);
                    objCmd.Parameters.AddWithValue("@username", Text.Text);
                    objCmd.Parameters.AddWithValue("@passward", password.Text);
                    objCmd.Parameters.AddWithValue("@email", email.Text);
                    objCmd.Parameters.AddWithValue("@phone", phone.Text);
                    objCmd.Parameters.AddWithValue("@age", age.Text);
                    objCmd.Parameters.AddWithValue("@question", question.SelectedValue);
                    objCmd.Parameters.AddWithValue("@answer", answer.Text);
                    objCmd.ExecuteNonQuery();
                    //  lbl1.Text = "REGISTERED SUCCESSFULLY";


                    MailMessage msg = new MailMessage();
                    msg.From = new MailAddress("xploremumbai1@gmail.com");
                    msg.To.Add(email.Text);
                    msg.Subject = "REGISTRATION DETAILS[Xplore Mumbai]";
                    msg.Body = ("" + Text.Text + " " + "you successfully registered with email-id" + " " + email.Text + "and phone no" + " " + phone.Text + " " + "<br/>" + "THANK YOU");



                    msg.IsBodyHtml = true;

                    SmtpClient smt = new SmtpClient();
                    smt.Host = "smtp.gmail.com";
                    System.Net.NetworkCredential ntwd = new NetworkCredential();
                    ntwd.UserName = "xploremumbai1@gmail.com"; //Your Email ID  
                    ntwd.Password = "rhishi_06"; // Your Password  
                    smt.UseDefaultCredentials = true;
                    smt.Credentials = ntwd;
                    smt.Port = 587;
                    smt.EnableSsl = true;
                    smt.Send(msg);
                    lbl1.Text = "REGISTRATION DETAILS SEND SUCCESSFULLY";
                    lbl1.ForeColor = System.Drawing.Color.ForestGreen;
                }
                catch
                {
                    lbl2.Text = "Try Again";
                }
            }

            else
            {
                lbl1.Text = "Validation failed Again";
            }
    
        }
    }
}
