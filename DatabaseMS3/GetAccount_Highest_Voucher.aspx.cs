using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DatabaseMS3
{
    public partial class GetAccount_Highest_Voucher : System.Web.UI.Page
    {
        String mobno = Global.MobileNumber;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadAccountHighestVoucher();
               
            }
        }

        protected void btnBack_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Customer_main.aspx"); 
        }
        private void LoadAccountHighestVoucher()
        {
            string connectionString = ConfigurationManager.ConnectionStrings["Telecom_Team_33"].ConnectionString;
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                using (SqlCommand command = new SqlCommand("Account_Highest_Voucher", connection))  
                {
                    command.CommandType = System.Data.CommandType.StoredProcedure;
                    command.Parameters.Add(new SqlParameter("@MobileNo", mobno));
                    connection.Open();
                    object result = command.ExecuteScalar();
                    TextBoxAccountHighestVoucher.Text = result?.ToString() ?? "No data available";
                }
            }
        }

       
    }
}