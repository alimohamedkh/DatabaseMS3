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
    public partial class Redeem_Voucher : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Redeem_Click(object sender, EventArgs e)
        {
            string mobileNo = Global.MobileNumber;
            int voucherId;

            // Validate inputs
            if (string.IsNullOrEmpty(mobileNo) || mobileNo.Length != 11 || !mobileNo.All(char.IsDigit))
            {
                Response.Write("<script>alert('Please enter a valid 11-digit mobile number.');</script>");
                return;
            }

            if (!int.TryParse(TextBox2.Text.Trim(), out voucherId))
            {
                Response.Write("<script>alert('Please enter a valid Voucher ID.');</script>");
                return;
            }

            string connectionString = WebConfigurationManager.ConnectionStrings["Telecom_Team_33"].ToString();
            SqlConnection conn = new SqlConnection(connectionString);

           
                conn.Open();

                // Call the stored procedure
                SqlCommand cmd = new SqlCommand("Redeem_voucher_points", conn);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@MobileNo", mobileNo);
                cmd.Parameters.AddWithValue("@voucher_id", voucherId);

            // Check the result of the stored procedure
            // Execute command
            int rowsAffected = cmd.ExecuteNonQuery();

            // Check rows affected to determine success
            if (rowsAffected > 0)
            {
                MessageLabel.ForeColor = System.Drawing.Color.Green;
                MessageLabel.Text = "Voucher Redeemed Successfully!";
            }
            else
            {
                MessageLabel.ForeColor = System.Drawing.Color.Red;
                MessageLabel.Text = "Invalid voucher number entered, voucher expired, or already redeemed.";
            }
        }
    }
}
            

