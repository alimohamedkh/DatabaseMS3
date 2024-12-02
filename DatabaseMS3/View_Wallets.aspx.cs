using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DatabaseMS3
{
    public partial class View_Wallets : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string query = "SELECT * FROM CustomerWallet";
                DataTable result = DatabaseHelper.ExecuteQuery(query);
                wallets_tableGV.DataSource = result;
                wallets_tableGV.DataBind();
            }

        }
    }
}