using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Reflection;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DatabaseMS3
{
    public partial class consumption : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }
        protected void SubmitButton_Click(object sender, EventArgs e)
        {
          string planname = plan_name.Text;
            string start = start_date.Text;
           string end = end_date.Text;

            if (!(string.IsNullOrEmpty(planname)) )
            {
                // Handle validation failure (e.g., show an error message)
                Response.Write("<script>alert('Please enter both mobile number and password.');</script>");
                if (!IsPostBack)
                {
                    SqlParameter[] parameters = new SqlParameter[]
                    {
         new SqlParameter("@plan_name", SqlDbType.Char,50)
         {
             Value = planname
         },new SqlParameter("@start_date", SqlDbType.Date)
         {
             Value = start
         },new SqlParameter("@end_date", SqlDbType.Date)
         {
             Value = end
         }
                    };
                    string funcname = "Consumption";
                    DataTable Result = DatabaseHelper.ExecuteTableValuedFunction(funcname, parameters);
                    GridView1.DataSource = Result;
                    GridView1.DataBind();
                    GridViewPanel.Visible = true;

                }
                    
                
            }
            

        }
    }
    
}