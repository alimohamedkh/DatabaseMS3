using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DatabaseMS3
{
    public partial class ViewAllBenefits : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string query = "SELECT * FROM allBenefits";
                DataTable result = DatabaseHelper.ExecuteQuery(query);
                GridViewBenefits.DataSource = result;
                GridViewBenefits.DataBind();
            }
        }
        protected void ButtonBack_Click(object sender, EventArgs e)
        {
            Response.Redirect("Customer_main.aspx"); 
        }
    }
}