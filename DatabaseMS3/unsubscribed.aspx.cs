using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DatabaseMS3
{
    public partial class unsubscribed : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void SubmitButton_Click(object sender, EventArgs e)
        {
            // Get the mobile number from the input
            string mobileNumber = MobileNumberTextBox.Text;

            // Validate the mobile number (basic validation for 10 digits)
            if (string.IsNullOrEmpty(mobileNumber) || mobileNumber.Length != 11 || !long.TryParse(mobileNumber, out _))
            {
                ErrorMessage.Text = "Please enter a valid 11-digit mobile number.";
                return;
            }
            if (!IsPostBack)
            {
                SqlParameter[] parameters = new SqlParameter[]
                {
         new SqlParameter("@mobileno", SqlDbType.Char,11)
         {
             Value = mobileNumber } };
                // Clear the error message
                string funcname = "Unsubscribed_Plans";
                DataTable Result = DatabaseHelper.ExecuteStoredProcedure(funcname, parameters);
                GridView1.DataSource = Result;
                GridView1.DataBind();
                GridViewPanel.Visible = true;
            }
        }
    }
}