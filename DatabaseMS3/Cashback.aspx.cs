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
    public partial class Cashback : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Get_Cashback_Button_Click(object sender, EventArgs e)
        {
            string mobileNo = Global.MobileNumber;
            int payment_id;
            int benefit_id;

            if (string.IsNullOrEmpty(mobileNo) || mobileNo.Length != 11 || !mobileNo.All(char.IsDigit))
            {
                Response.Write("<script>alert('Please enter a valid 11-digit mobile number.');</script>");
                return;
            }

            if (!int.TryParse(TextBox2.Text.Trim(), out payment_id))
            {
                Response.Write("<script>alert('Please enter a valid Payment ID.');</script>");
                return;
            }

            if (!int.TryParse(TextBox3.Text.Trim(), out benefit_id))
            {
                Response.Write("<script>alert('Please enter a valid Benefit ID.');</script>");
                return;
            }

            string connectionString = WebConfigurationManager.ConnectionStrings["Telecom_Team_33"].ToString();
            SqlConnection conn = new SqlConnection(connectionString);

            conn.Open();
            SqlCommand cmd = new SqlCommand("[Payment_wallet_cashback]", conn);
            cmd.CommandType = System.Data.CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@MobileNo", mobileNo);
            cmd.Parameters.AddWithValue("@payment_id", payment_id);
            cmd.Parameters.AddWithValue("@benefit_id", benefit_id);
            

            cmd.ExecuteNonQuery();

            string query = "SELECT cb.walletID,cb.amount FROM Cashback cb WHERE cb.benefitID = @benefit_id";
            SqlCommand cmd2 = new SqlCommand(query, conn);

            cmd2.Parameters.AddWithValue("@MobileNo", mobileNo);
            cmd2.Parameters.AddWithValue("@benefit_id", benefit_id);

            SqlDataAdapter adapter = new SqlDataAdapter(cmd2);
            DataTable dt = new DataTable();
            adapter.Fill(dt);

            if (dt.Rows.Count > 0)
            {
                // Bind the data to a GridView
                Cashback_View.DataSource = dt;
                Cashback_View.DataBind();
            }
            else // will be adjusted using global
            {
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Mobile Number Is Not in the database!');", true);
            }
        }
    }
}