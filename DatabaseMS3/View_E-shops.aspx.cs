using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DatabaseMS3
{
    public partial class View_E_shops : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string query = "SELECT * FROM E_shopVouchers";
                DataTable result = DatabaseHelper.ExecuteQuery(query);
                e_shops_tableGV.DataSource = result;
                e_shops_tableGV.DataBind();
            }

        }
    }
}