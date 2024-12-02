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
    public partial class Top_Successful_Payments : System.Web.UI.Page
    {
        String mobno = Global.MobileNumber; // Will be changed to Global!!
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                SqlParameter[] parameters = new SqlParameter[]
                {
                    new SqlParameter("@MobileNo", SqlDbType.Char, 11)
                    {
                        Value = mobno
                    }
                };
                string procname = "Top_Successful_Payments";               
                DataTable result = DatabaseHelper.ExecuteStoredProcedure(procname, parameters);         
                GridViewPayments.DataSource = result;
                GridViewPayments.DataBind();
            }
        }

        protected void ButtonBack_Click(object sender, EventArgs e)
        {
            Response.Redirect("Customer_main.aspx");
        }
    }
}