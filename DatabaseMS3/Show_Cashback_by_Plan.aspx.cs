using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DatabaseMS3
{
    public partial class Show_Cashback_by_Plan : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void show_cashback_by_planB_Click(object sender, EventArgs e)
        {
            String connStr = WebConfigurationManager.ConnectionStrings["Telecom_Team_33"].ToString();
            SqlConnection conn = new SqlConnection(connStr);

            String walletID = show_cashback_by_plan_walletidTB.Text;
            String planID = show_cashback_by_plan_planidTB.Text;

            if (InputValidator.IsValidWalletId(walletID) && InputValidator.IsValidPlanId(planID))
            {

                SqlCommand loginFunc = new SqlCommand();
                loginFunc.Connection = conn;
                loginFunc.CommandType = CommandType.Text;
                loginFunc.CommandText = "SELECT @OUT = dbo.Wallet_Cashback_Amount(@WalletID, @planID)";

                loginFunc.Parameters.AddWithValue("@WalletID", walletID);
                loginFunc.Parameters.AddWithValue("@planID", planID);

                SqlParameter output = new SqlParameter("@OUT", SqlDbType.Decimal);
                output.Direction = ParameterDirection.Output;
                loginFunc.Parameters.Add(output);

                conn.Open();
                loginFunc.ExecuteNonQuery();
                conn.Close();

                show_cashback_by_planL.Text = output.Value.ToString();


            }

            else {


                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Wallet ID and Plan ID must be a non empty integers!');", true);

            }

           

        }
    }
}