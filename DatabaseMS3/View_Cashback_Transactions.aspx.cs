using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DatabaseMS3
{
    public partial class View_Cashback_Transactions : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string query = "SELECT * FROM Num_of_cashback";
                DataTable result = DatabaseHelper.ExecuteQuery(query);
                cashback_tableGV.DataSource = result;
                cashback_tableGV.DataBind();
            }

        }
    }
}