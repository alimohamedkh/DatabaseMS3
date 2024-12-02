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
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void loginB_Click(object sender, EventArgs e)
        {
            String mobile_number = mobile_numberTB.Text;
            String password = passwordTB.Text;


            String connStr = WebConfigurationManager.ConnectionStrings["Telecom_Team_33"].ToString();
            SqlConnection conn = new SqlConnection(connStr);

                

            SqlCommand loginFunc = new SqlCommand();
            loginFunc.Connection = conn;
            loginFunc.CommandType = CommandType.Text;
            loginFunc.CommandText = "SELECT @result = dbo.AccountLoginValidation(@mobileNo, @password)";

            loginFunc.Parameters.AddWithValue("@mobileNo", mobile_number);
            loginFunc.Parameters.AddWithValue("@password", password);

            SqlParameter result = new SqlParameter("@result", SqlDbType.Int);
            result.Direction = ParameterDirection.Output;
            loginFunc.Parameters.Add(result);

            conn.Open();
            loginFunc.ExecuteNonQuery();
            conn.Close();

            if (result.Value.ToString() == "1")
            {
                Global.MobileNumber = mobile_number;
                Response.Redirect("Customer_main.aspx");
            }
            else
            {
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Mobile number or password entered is wrong please re-enter them!');", true);
            }


            

        }
    }
}