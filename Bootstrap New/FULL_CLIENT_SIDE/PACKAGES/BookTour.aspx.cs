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


namespace botstrap.FULL_CLIENT_SIDE.PACKAGES
{
    public partial class BookTour : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
         if (Session["username"] == null)
           {
                  Response.Redirect("/FULL_CLIENT_SIDE/PACKAGES/Error_page.aspx");
            }
            else {
                txt2.Text = Session["username"].ToString();
                txt3.Text = Session["email_id"].ToString();
            }
             
            if (!IsPostBack)
            {
                Calendar1.Visible = false;
                txt7.Visible = false;
            }
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            Calendar1.Visible = true;
        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            txt5.Text = Calendar1.SelectedDate.ToShortDateString();
            Calendar1.Visible = false;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            System.Threading.Thread.Sleep(4000);
            string strConn = "Data Source=LAPTOP-4UMQMUG2;Initial Catalog=project;Integrated Security=True";

            {
                txt7.Visible = true;
                txt7.Text = Convert.ToString(Convert.ToInt32(txt6.Text) * Convert.ToInt32(DropDownList2.SelectedValue));
                SqlConnection objConn = new SqlConnection(strConn);
                try
                {
                    objConn.Open();
                    String strQuery = "Insert INTO book_tour VALUES(@tour_name,@holder_name,@email,@phone,@no_person,@date,@price,@tprice)";

                   
                    SqlCommand objCmd = new SqlCommand(strQuery, objConn);
                    objCmd.Parameters.AddWithValue("@tour_name", DropDownList1.SelectedValue);
                    objCmd.Parameters.AddWithValue("@holder_name", txt2.Text);
                    objCmd.Parameters.AddWithValue("@email", txt3.Text);
                    objCmd.Parameters.AddWithValue("@phone", txt4.Text);
                    objCmd.Parameters.AddWithValue("@no_person", txt6.Text);
                    objCmd.Parameters.AddWithValue("@date", Calendar1.SelectedDate.ToString("yyyy/MM/dd"));              
                    objCmd.Parameters.AddWithValue("@price", DropDownList2.SelectedValue);
                    objCmd.Parameters.AddWithValue("@tprice", txt7.Text);

                    objCmd.ExecuteNonQuery();


                    MailMessage msg = new MailMessage();
                    msg.From = new MailAddress("xploremumbai1@gmail.com");
                    msg.To.Add(txt3.Text);
                    msg.Subject = "Booking DETAILS[Xplore Mumbai]";
                    msg.Body = ("" + txt2.Text + "  " + "You booked Tour" + "  " + DropDownList1.SelectedValue + " " + " with Email-Id " + "  " + txt3.Text + " " + "with" + "  " + txt6.Text + " " + "of Person with price" + "  " + txt7.Text + " " + "on date" + "  " + Calendar1.SelectedDate.ToString("yyyy/MM/dd") + " " + "Thamk you");

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
                    lbl1.Text = "Booking DETAILS SEND SUCCESSFULLY";
                    lbl1.ForeColor = System.Drawing.Color.ForestGreen;






                    lbl.Text = " " + txt2.Text + " " + "booked tour:- " + DropDownList1.SelectedValue + " " + "with email id " + txt3.Text + "  " + "for" + txt5.Text + " " + "persons with price" + txt7.Text + " " + "THANK YOU";

                    }


                    //"name.:- " + txt1.Text + "" + "ORDER NO.:- " + txt2.Text + "" + "CONSUMER NO.:- " +  txt3.Text + "" + " Your Booking Successfully cancelled" + ""+"THANK YOU";

                catch (Exception ex)
                {
                    throw ex;

                }

                objConn.Close();

            }
           
        }
    }
    
}