using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;
using System.Reflection.Emit;

namespace DatabaseMS3
{
    public partial class Update_Earned_Points : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void update_earned_pointsB_Click(object sender, EventArgs e)
        {
            string procedureName = "Account_Payment_Points";

            if (InputValidator.IsValidMobileNumber(update_earned_pointsTB.Text))
            {

                string connString = WebConfigurationManager.ConnectionStrings["Telecom_Team_33"].ToString();
                SqlConnection conn = new SqlConnection(connString);

                String MobileNo = update_earned_pointsTB.Text;

                SqlCommand Total_Points_Account = new SqlCommand("Total_Points_Account", conn);
                Total_Points_Account.CommandType = CommandType.StoredProcedure;
                Total_Points_Account.Parameters.Add(new SqlParameter("MobileNo", MobileNo));
                
                SqlParameter updated_points = Total_Points_Account.Parameters.Add(new SqlParameter("@Total_points", SqlDbType.Int));

                updated_points.Direction = ParameterDirection.Output;

                conn.Open();
                Total_Points_Account.ExecuteNonQuery();
                conn.Close();

                updated_pointsL.Text = updated_points.Value.ToString();

            }
            else
            {

                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Mobile number entered must be 11 number characters long!');", true);

            }
        }
    }
}