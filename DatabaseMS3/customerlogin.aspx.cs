using System;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DatabaseMS3
{
    public partial class customerlogin : Page
    { 
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string query = "SELECT * FROM allServicePlans";
                DataTable result = DatabaseHelper.ExecuteQuery(query);
                gridView1.DataSource = result;
                gridView1.DataBind();
            }
        }

        protected void LoginButton_Click(object sender, EventArgs e)
        {
            string mobile = mobileNumber.Text;
            string pwd = password.Text;

            // Validate if the mobile number and password are entered
            if (!(string.IsNullOrEmpty(mobile) || string.IsNullOrEmpty(pwd)))
            {
                // Handle validation failure (e.g., show an error message)
                Response.Write("<script>alert('Please enter both mobile number and password.');</script>");
                if (!IsPostBack)
                {
                    SqlParameter[] parameters = new SqlParameter[]
                    {
         new SqlParameter("@MobileNo", SqlDbType.Char, 11)
         {
             Value = mobile
         },new SqlParameter("@password", SqlDbType.Char, 50)
         {
             Value = pwd
         }
                    };
                    string funcname = "AccountLoginValidation";
                    decimal result = DatabaseHelper.ExecuteOneValuedFunction(funcname, parameters);
                    if ( result>0 )
                    {
                        Response.Redirect("");
                    }
                    else
                    {
                        LabelMessage.Text = "this account does not exist";
                        LabelMessage.ForeColor = System.Drawing.Color.Red;
                    }
                }
            }
             else
            {
                LabelMessage.Text = "mobile number and password can't be null";
                LabelMessage.ForeColor = System.Drawing.Color.Red;
            }
           
        }
    }
}
