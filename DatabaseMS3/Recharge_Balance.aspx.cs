using DatabaseMS3;
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
    public partial class Recharge_Balance : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
         
        }

        protected void Recharge_balance_Click(object sender, EventArgs e)
        {
            string mobileNo = Global.MobileNumber;
            decimal amount;
            string payment_method = TextBox3.Text.Trim();

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

            if (string.IsNullOrEmpty(payment_method) || (!payment_method.Equals("Cash", StringComparison.OrdinalIgnoreCase) && !payment_method.Equals("Credit", StringComparison.OrdinalIgnoreCase)))
            {
                Response.Write("<script>alert('Please enter a valid Payment Method either Cash Or Credit.');</script>");
                return;
            }

            string connectionString = WebConfigurationManager.ConnectionStrings["Telecom_Team_33"].ToString();
            SqlConnection conn = new SqlConnection(connectionString);

            conn.Open();
            SqlCommand cmd = new SqlCommand("Initiate_balance_payment", conn);
            cmd.CommandType = CommandType.StoredProcedure;

            cmd.Parameters.AddWithValue("@MobileNo", mobileNo);
            cmd.Parameters.AddWithValue("@amount", amount);
            cmd.Parameters.AddWithValue("@payment_method", payment_method);

            cmd.ExecuteNonQuery();

            ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Balance Recharged Successfully!');", true);








        


        }
    }
}