using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DatabaseMS3
{
    public partial class Service_Plans : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected DataTable Subscribed_In_Past_Months(String mobileNo)
        {
            string connectionString = System.Configuration.ConfigurationManager.ConnectionStrings["Telecom_Team_33"].ConnectionString;
            SqlConnection conn = new SqlConnection(connectionString);
            string query = "SELECT * FROM dbo.Subscribed_plans_5_Months(@MobileNo)";

            DataTable dt = new DataTable(); 

            SqlCommand cmd = new SqlCommand(query, conn);

            cmd.Parameters.AddWithValue("@MobileNo", mobileNo); 

            SqlDataAdapter adapt = new SqlDataAdapter(cmd);
            adapt.Fill(dt);

            return dt; 
        }

        protected void ShowButton_Click(object sender, EventArgs e)
        {
            string mobileNo = Global.MobileNumber;

            // Ensure the mobile number is valid 
            if (!string.IsNullOrEmpty(mobileNo) && mobileNo.Length == 11 && mobileNo.All(char.IsDigit))
            {
                DataTable dt = Subscribed_In_Past_Months(mobileNo); // Call backend SQL function

                // Bind the DataTable to the GridView
                if (dt.Rows.Count > 0)
                {
                    Service_Plan_View.DataSource = dt;
                    Service_Plan_View.DataBind();
                } 
                else
                {
                    Response.Write("<script>alert('No Plans Subscribed to using the Mobile Number Given');</script>");
                }
            }
            else
            {
                // Display an error message if mobile number is invalid
                Response.Write("<script>alert('Please enter a valid mobile number (11 digits).The input should only contain numbers.');</script>");
            }
        }




    }

}