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
    public partial class Show_Average_Transaction_Amount : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void show_average_transaction_amountB_Click(object sender, EventArgs e)
        {
            String connStr = WebConfigurationManager.ConnectionStrings["Telecom_Team_33"].ToString();
            SqlConnection conn = new SqlConnection(connStr);

            String walletID = show_average_transaction_amount_walletidTB.Text;
            String startDate = show_average_transaction_amount_startdateTB.Text;
            String endDate = show_average_transaction_amount_enddateTB.Text;

            if (DateTime.Parse(startDate) > DateTime.Parse(endDate)) {
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Start date must be before end date!');", true);
            }
            else
            {
                if (InputValidator.IsValidWalletId(walletID))
                {

                    SqlCommand loginFunc = new SqlCommand();
                    loginFunc.Connection = conn;
                    loginFunc.CommandType = CommandType.Text;
                    loginFunc.CommandText = "SELECT @OUT = dbo.Wallet_Transfer_Amount(@Wallet_id, @start_date , @end_date)";

                    loginFunc.Parameters.AddWithValue("@Wallet_id", walletID);
                    loginFunc.Parameters.AddWithValue("@start_date", startDate);
                    loginFunc.Parameters.AddWithValue("@end_date", endDate);

                    SqlParameter output = new SqlParameter("@OUT", SqlDbType.Decimal);
                    output.Direction = ParameterDirection.Output;
                    loginFunc.Parameters.Add(output);

                    conn.Open();
                    loginFunc.ExecuteNonQuery();
                    conn.Close();

                    show_average_transaction_amountL.Text = output.Value.ToString();
                }
                else {

                    ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Wallet ID must be non empty & integer!');", true);

                }
                

            }

            
        }
    }
}