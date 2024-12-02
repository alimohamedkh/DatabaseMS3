using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DatabaseMS3
{
    public partial class Customer : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            String connStr = WebConfigurationManager.ConnectionStrings["Telecom_Team_33"].ToString();
            SqlConnection conn = new SqlConnection(connStr);

        }

        protected void View_Shop(object sender, EventArgs e)
        {
            Response.Redirect("Shops.aspx");

        }
        
        protected void View_Service(object sender, EventArgs e)
        {
            Response.Redirect("Service_Plans.aspx");

        }

        protected void RenewSubscription(object sender, EventArgs e)
        {
            Response.Redirect("Subscription_Plan.aspx");
        }

        protected void Get_Cashback(object sender, EventArgs e)
        {
            Response.Redirect("Cashback.aspx");
        }

        protected void Recharge_Balance_Click(object sender, EventArgs e)
        {
            Response.Redirect("Recharge_Balance.aspx");
        }

        protected void Redeem_Voucher_Click(object sender, EventArgs e)
        {
            Response.Redirect("Redeem_Voucher.aspx");
        }
    }   
}