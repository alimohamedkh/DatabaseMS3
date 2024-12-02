using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DatabaseMS3
{
    public partial class Subscription_Plan : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Pay_Button_Click(object sender, EventArgs e)
        {
            string mobileNo = Global.MobileNumber;
            decimal amount; 
            string payment_method = TextBox3.Text.Trim();
            int planID;

            if (string.IsNullOrEmpty(mobileNo) || mobileNo.Length != 11 || !mobileNo.All(char.IsDigit))
            {
                Response.Write("<script>alert('Please enter a valid 11-digit mobile number.');</script>");
                return;
            }

            if (!decimal.TryParse(TextBox2.Text.Trim(), out amount) || amount <= 0)
            {
                Response.Write("<script>alert('Please enter a valid amount.');</script>");
                return;
            }

            if (string.IsNullOrEmpty(payment_method) || (!payment_method.Equals("Cash", StringComparison.OrdinalIgnoreCase) &&!payment_method.Equals("Credit", StringComparison.OrdinalIgnoreCase)))
            {
                Response.Write("<script>alert('Please enter a valid Payment Method either Cash Or Credit.');</script>");
                return;
            }

            if (!int.TryParse(TextBox4.Text.Trim(), out planID))
            {
                Response.Write("<script>alert('Please enter a valid Plan ID.');</script>");
                return;
            }
            try
            {
                string connectionString = WebConfigurationManager.ConnectionStrings["Telecom_Team_33"].ToString();
                SqlConnection conn = new SqlConnection(connectionString);

                conn.Open();

                SqlCommand cmd = new SqlCommand("[Initiate_plan_payment]", conn);
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@MobileNo", mobileNo);
                cmd.Parameters.AddWithValue("@amount", amount);
                cmd.Parameters.AddWithValue("@payment_method", payment_method);
                cmd.Parameters.AddWithValue("@plan_id", planID);


                cmd.ExecuteNonQuery();

                string query = "SELECT * FROM Subscription WHERE mobileNo = @MobileNo AND planID = @PlanID";
                SqlCommand cmd2 = new SqlCommand(query, conn);

                cmd2.Parameters.AddWithValue("@MobileNo", mobileNo);
                cmd2.Parameters.AddWithValue("@PlanID", planID);

                SqlDataAdapter adapter = new SqlDataAdapter(cmd2);
                DataTable dt = new DataTable();
                adapter.Fill(dt);

                if (dt.Rows.Count > 0)
                {
                    // Bind the data to a GridView
                    Subscription_View.DataSource = dt;
                    Subscription_View.DataBind();
                }
                else
                {
                    Response.Write("<script>alert('No subscription record found for the given details.');</script>");
                }
            }
            
            
            catch (Exception ex)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Mobile Number Is Not in the database!');", true);
            }
            
        }
    }
}