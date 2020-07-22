using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.Net.Mail;
using System.Data;
using System.Data.SqlClient;

namespace botstrap.transparent
{
    public partial class _for : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            GeneratePassword();  
        }

        public string GeneratePassword()
        {
            string PasswordLength = "8";
            string NewPassword = "";

            string allowedChars = "";
            allowedChars = "1,2,3,4,5,6,7,8,9,0";
            allowedChars += "A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,V,W,X,Y,Z,";
            allowedChars += "a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p,q,r,s,t,u,v,w,x,y,z,";


            char[] sep = {  
            ','  
        };
            string[] arr = allowedChars.Split(sep);


            string IDString = "";
            string temp = "";

            Random rand = new Random();

            for (int i = 0; i < Convert.ToInt32(PasswordLength); i++)
            {
                temp = arr[rand.Next(0, arr.Length)];
                IDString += temp;
                NewPassword = IDString;

            }
            return NewPassword;
        }  

        protected void submit_Click(object sender, EventArgs e)
        {
           
            string strNewPassword = GeneratePassword().ToString();
            String Conn1 = "Data Source=LAPTOP-4UMQMUG2;Initial Catalog=project;Integrated Security=True";
            SqlConnection Conn = new SqlConnection(Conn1);
            String Query = "Update registration set  passward = @pass where email =  @email";
            SqlCommand Cmd = new SqlCommand(Query, Conn);

            Cmd.Parameters.AddWithValue("@pass", strNewPassword);
            Cmd.Parameters.AddWithValue("@email", password.Text);
            Conn.Open();
            Cmd.ExecuteNonQuery();
            Conn.Close();


            // to send the random password in email  



            MailMessage msg = new MailMessage();
            msg.From = new MailAddress("xploremumbai1@gmail.com");
            msg.To.Add(password.Text);
            msg.Subject = "Random Password for your Account";
            msg.Body = "Your Random password is:" + strNewPassword;
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
            lbl1.Text = "Email Sent Successfully";
            lbl1.ForeColor = System.Drawing.Color.ForestGreen;
        }
    }
}