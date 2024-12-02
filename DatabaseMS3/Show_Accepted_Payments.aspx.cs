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
    public partial class Show_Accepted_Payments : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void show_accepted_paymentsB_Click(object sender, EventArgs e)
        {
            string procedureName = "Account_Payment_Points";

            if (InputValidator.IsValidMobileNumber(show_accepted_paymentsTB.Text))
            {
                SqlParameter[] parameters = new SqlParameter[]
                {
                new SqlParameter("@MobileNo", SqlDbType.Char , 11) { Value = show_accepted_paymentsTB.Text }
                };

                DataTable result = DatabaseHelper.ExecuteStoredProcedure(procedureName, parameters);

                accepted_payments_tableGV.DataSource = result;
                accepted_payments_tableGV.DataBind();
            }
            else
            {

                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Mobile number entered must be 11 digit characters long!');", true);

            }
        }
    }
}
