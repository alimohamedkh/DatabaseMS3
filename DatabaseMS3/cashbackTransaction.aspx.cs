using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DatabaseMS3
{
    public partial class cashback : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            // Get the mobile number from the input
            string nationalid = txtInput.Text;

            // Validate the mobile number (basic validation for 10 digits)

            if (!IsPostBack)
            {
                SqlParameter[] parameters = new SqlParameter[]
                {
                    new SqlParameter("@NationalID", SqlDbType.Char, 50)
                    {
                        Value = nationalid
                    }
                };
                // Clear the error message

                string funcname = "Cashback_Wallet_Customer";
                DataTable Result = DatabaseHelper.ExecuteTableValuedFunction(funcname, parameters);
                gvUsageDetails.DataSource = Result;
                gvUsageDetails.DataBind();
                GridViewPanel.Visible = true;
            }
        }
    }
}