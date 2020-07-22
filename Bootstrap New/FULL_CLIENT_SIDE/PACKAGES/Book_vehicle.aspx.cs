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



namespace botstrap
{
    public partial class Book_vehicle : System.Web.UI.Page
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
                Panel1.Visible = false;
             //   txt6.Visible = false;
               // txt7.Visible = false;
            }

            
              
        }
        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            Calendar1.Visible = true;
        }
        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            //txt5.Text = Calendar1.SelectedDate.ToString();
            txt5.Text = Calendar1.SelectedDate.ToShortDateString();
            Calendar1.Visible = false;
        }



        protected void Button1_Click(object sender, EventArgs e)
        {
           // txt6.Visible = true;
          //  txt7.Visible = true;

           
            System.Threading.Thread.Sleep(4000);
            txt6.Text = Convert.ToString(Convert.ToInt32(txt7.Text) * Convert.ToInt32(DropDownList6.SelectedValue));

            string strConn = "Data Source=LAPTOP-4UMQMUG2;Initial Catalog=project;Integrated Security=True";
            SqlConnection objConn = new SqlConnection(strConn);
            try
            {


                objConn.Open();
                String strQuery3 = "Insert INTO Booking_vehicle_Info VALUES(@name,@email_id,@vehicle_name,@seat_no,@seat_noo,@date,@no_person,@price,@tprice)";
                SqlCommand objCmd3 = new SqlCommand(strQuery3, objConn);
                objCmd3.Parameters.AddWithValue("@name", name.Text);
                objCmd3.Parameters.AddWithValue("@email_id", email.Text);
                objCmd3.Parameters.AddWithValue("@vehicle_name", DropDownList4.SelectedValue);
                //objCmd3.Parameters.AddWithValue("@vehicle_no", DropDownList1.SelectedValue);
                objCmd3.Parameters.AddWithValue("@seat_no", DropDownList2.SelectedValue);
                objCmd3.Parameters.AddWithValue("@seat_noo", DropDownList3.SelectedValue);
                objCmd3.Parameters.AddWithValue("@date", Calendar1.SelectedDate.ToString("yyyy/MM/dd"));
                objCmd3.Parameters.AddWithValue("@no_person", txt7.Text);
                objCmd3.Parameters.AddWithValue("@price", DropDownList6.SelectedValue);
                objCmd3.Parameters.AddWithValue("@tprice", txt6.Text);
                objCmd3.ExecuteNonQuery();

                MailMessage msg = new MailMessage();
                msg.From = new MailAddress("xploremumbai1@gmail.com");
                msg.To.Add(email.Text);
                msg.Subject = "Booking DETAILS[Xplore Mumbai]";
                msg.Body = ("" + name.Text + "  " + "You booked seat no" + "  " + DropDownList2.SelectedValue + " " + DropDownList3.SelectedValue + " " + "of" + "  " + DropDownList4.SelectedValue + " " + "With Price" + "  " + txt6.Text + " " + "with travelling date" + "  " + Calendar1.SelectedDate.ToString("yyyy/MM/dd") + " " + "Thamk you");

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
                    String strQuery = @"delete From seats Where seat_no = '" + DropDownList2.SelectedValue + "' and vehicle_name = '" + DropDownList4.SelectedValue + "' ";
                    SqlCommand objCmd = new SqlCommand(strQuery, objConn);
                    objCmd.ExecuteNonQuery();
                }

                {
                    String strQuery4 = @"delete From seats Where seat_no = '" + DropDownList3.SelectedValue + "' and vehicle_name = '" + DropDownList4.SelectedValue + "' ";
                    SqlCommand objCmd4 = new SqlCommand(strQuery4, objConn);
                    objCmd4.ExecuteNonQuery();
                }


                {
                    String strQuery1 = "Insert INTO booked_seats (vehicle_name,seat_no) VALUES(@vehicle_name,@seat_no)";
                    {
                        SqlCommand objCmd1 = new SqlCommand(strQuery1, objConn);
                        objCmd1.Parameters.AddWithValue("@vehicle_name", DropDownList4.SelectedValue);
                        objCmd1.Parameters.AddWithValue("@seat_no", DropDownList2.SelectedValue);

                        objCmd1.ExecuteNonQuery();

                    }
                }

                {
                    String strQuery5 = "Insert INTO booked_seats (vehicle_name,seat_no) VALUES(@vehicle_name,@seat_no)";
                    {
                        SqlCommand objCmd5 = new SqlCommand(strQuery5, objConn);
                        objCmd5.Parameters.AddWithValue("@vehicle_name", DropDownList4.SelectedValue);
                        objCmd5.Parameters.AddWithValue("@seat_no", DropDownList3.SelectedValue);

                        objCmd5.ExecuteNonQuery();

                    }
                }




                lbl.Text = "You booked seat no" + "  " + DropDownList2.SelectedValue + " " + DropDownList3.SelectedValue + " " + "of" + "  " + DropDownList4.SelectedValue + " " +
                     "With Price" + "  " + txt6.Text + " " + "THANK YOU";

            }
            catch (Exception ex)
            {
                throw ex;

            }

            objConn.Close();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Panel1.Visible = true;
            txt7.Text = Convert.ToString(Convert.ToInt32(TextBox2.Text));
        }




    }
}
