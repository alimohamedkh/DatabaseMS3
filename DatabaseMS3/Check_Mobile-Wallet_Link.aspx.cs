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
    public partial class Check_Mobile_Wallet_Link : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void check_mobile_wallet_linkB_Click(object sender, EventArgs e)
        {
            String connStr = WebConfigurationManager.ConnectionStrings["Telecom_Team_33"].ToString();
            SqlConnection conn = new SqlConnection(connStr);

            String MobileNo = check_mobile_wallet_linkTB.Text;

            if (InputValidator.IsValidMobileNumber(MobileNo))
            {

                SqlCommand loginFunc = new SqlCommand();
                loginFunc.Connection = conn;
                loginFunc.CommandType = CommandType.Text;
                loginFunc.CommandText = "SELECT @OUT = dbo.Wallet_MobileNo(@MobileNo)";

                loginFunc.Parameters.AddWithValue("@MobileNo", MobileNo);

                SqlParameter output = new SqlParameter("@OUT", SqlDbType.Int);
                output.Direction = ParameterDirection.Output;
                loginFunc.Parameters.Add(output);

                conn.Open();
                loginFunc.ExecuteNonQuery();
                conn.Close();

                if ((int)output.Value == 1)
                {

                    check_mobile_wallet_linkL.Text = "This mobile number is linked to a wallet";


                }
                else
                {

                    check_mobile_wallet_linkL.Text = "This mobile number is not linked to a wallet";
                }

            }
            else {

                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Mobile number entered must be 11 digit characters long!');", true);

            }

            
        }
    }
}