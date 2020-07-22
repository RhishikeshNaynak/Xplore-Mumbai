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
    public partial class Car_booking : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

                if (Session["username"] == null)
                 {
                     Response.Redirect("/FULL_CLIENT_SIDE/PACKAGES/Error_page.aspx");
                 }
                 else {
                     name.Text = Session["username"].ToString();
                     email.Text = Session["email_id"].ToString();
                 }

            if (!IsPostBack)
            {
                Calendar1.Visible = false;

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
            SqlConnection objConn = new SqlConnection(strConn);
            try
            {


                objConn.Open();
                String strQuery3 = "Insert INTO Booking_Car_info VALUES(@name,@email_id,@vehicle_name,@specification,@price,@date)";
                SqlCommand objCmd3 = new SqlCommand(strQuery3, objConn);
                objCmd3.Parameters.AddWithValue("@name", name.Text);
                objCmd3.Parameters.AddWithValue("@email_id", email.Text);
                objCmd3.Parameters.AddWithValue("@vehicle_name", DropDownList1.SelectedValue);
                objCmd3.Parameters.AddWithValue("@specification", DropDownList2.SelectedValue);
                objCmd3.Parameters.AddWithValue("@price", DropDownList3.SelectedValue);
                objCmd3.Parameters.AddWithValue("@date", Calendar1.SelectedDate.ToString("yyyy/MM/dd"));
                objCmd3.ExecuteNonQuery();

                MailMessage msg = new MailMessage();
                msg.From = new MailAddress("xploremumbai1@gmail.com");
                msg.To.Add(email.Text);
                msg.Subject = "Booking DETAILS[Xplore Mumbai]";
                msg.Body = ("" + name.Text + "  " + "You booked car" + "  " + DropDownList1.SelectedValue + " Model " + DropDownList2.SelectedValue + " " + "with price" + "  " + DropDownList3.SelectedValue + " " + "on date" + "  " + Calendar1.SelectedDate.ToString("yyyy/MM/dd") + " " + "Thamk you");



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

                {
                    String strQuery1 = "Insert INTO booked_car (vehicle_name) VALUES(@vehicle_name)";
                    {
                        SqlCommand objCmd1 = new SqlCommand(strQuery1, objConn);
                        objCmd1.Parameters.AddWithValue("@vehicle_name", DropDownList1.SelectedValue);
                        

                        objCmd1.ExecuteNonQuery();

                    }
                }


                lbl.Text = "You booked car name" + "  " + DropDownList1.SelectedValue + "with " + "  "  + DropDownList2.SelectedValue + " " + "for" + "  " + DropDownList3.SelectedValue + " " + "THANK YOU";

            }
            catch (Exception ex)
            {
                throw ex;

            }

            objConn.Close();
        }




    }
}
