using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace botstrap.admin_side
{
    public partial class Add_vehicle : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

      protected void Button1_Click(object sender, EventArgs e)
        {
            int v_seats = 0;
        //  int V_name ;
        //    string vname;
       
            SqlDataReader objRead1;
            string strConn = "Data Source=PRATHMESH29\\SQLEXPRESS;Initial Catalog=project;Integrated Security=True";
            SqlConnection objConn = new SqlConnection(strConn);
            try
            {
                objConn.Open();
                String strQuery = "Insert INTO vehicle_info (vehicle_name,vehicle_type,specification,seats,price) VALUES(@vehicle_name,@vehicle_type,@specification,@seats,@price)";
                SqlCommand objCmd = new SqlCommand(strQuery, objConn);
                objCmd.Parameters.AddWithValue("@vehicle_name", txt1.Text);
                objCmd.Parameters.AddWithValue("@vehicle_type", txt2.Text);
                objCmd.Parameters.AddWithValue("@specification", txt3.Text);
                objCmd.Parameters.AddWithValue("@seats", txt4.Text);
                objCmd.Parameters.AddWithValue("@price", txt5.Text);


                objCmd.ExecuteNonQuery();

                
                    String strQuery1 = "select vehicle_name, seats from vehicle_info where vehicle_id=(select max(vehicle_id) from vehicle_info) ";
                    SqlCommand objCmd1 = new SqlCommand(strQuery1, objConn);

                    objRead1 = objCmd1.ExecuteReader();
                    if (objRead1.Read())
                    {
                      //  string vname = Convert.ToString(V_name);
                        v_seats = Convert.ToInt32(objRead1.GetValue(1)); // objRead.GetValue(4).ToString();
                        lbl2.Text = v_seats.ToString();

                    }

                    objRead1.Close();
                

                String strQuery3 = "Insert INTO seats (vehicle_name, seat_no) VALUES(@vehicle_name,@seatno)";
                for (int i = 0; i <= v_seats; i++)
                {


                    SqlCommand objCmd3 = new SqlCommand(strQuery3, objConn);

                    objCmd3.Parameters.AddWithValue("@vehicle_name", txt1.Text);
                    objCmd3.Parameters.AddWithValue("@seatno", "D" + i);
                    lbl3.Text = i.ToString()+" ";

                    objCmd3.ExecuteNonQuery();
                }
                
                lbl.Text = "VALUE  INSERTED  SUCCESSFULLY";
            }
            catch (Exception ex)
            {
                throw ex;

            }

            objConn.Close();
        }
    }
}