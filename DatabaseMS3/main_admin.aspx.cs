using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DatabaseMS3
{
    public partial class main_admin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ViewCustomerProfiles_Click(object sender, EventArgs e)
        {
            // Code to view customer profiles
        }

        protected void ViewPhysicalStores_Click(object sender, EventArgs e)
        {
            // Code to view physical stores
        }

        protected void ViewResolvedTickets_Click(object sender, EventArgs e)
        {
            // Code to view resolved tickets
        }

        protected void ViewCustomerAccounts_Click(object sender, EventArgs e)
        {
            // Code to view customer accounts
        }

        protected void ListAccountsByPlan_Click(object sender, EventArgs e)
        {
            // Code to list accounts by plan
        }

        protected void ShowAccountUsage_Click(object sender, EventArgs e)
        {
            // Code to show account usage
        }

        protected void RemoveAccountBenefits_Click(object sender, EventArgs e)
        {
            // Code to remove account benefits
        }

        protected void ListSMSOffers_Click(object sender, EventArgs e)
        {
            // Code to list SMS offers
        }

        protected void ViewWallets_Click(object sender, EventArgs e)
        {
            Response.Redirect("View_Wallets.aspx");
        }

        protected void ViewEShops_Click(object sender, EventArgs e)
        {
            Response.Redirect("View_E-shops.aspx");
        }

        protected void ViewPaymentTransactions_Click(object sender, EventArgs e)
        {
            Response.Redirect("View_Payment_Transactions.aspx");
        }

        protected void ViewCashbackTransactions_Click(object sender, EventArgs e)
        {
            Response.Redirect("View_Cashback_Transactions.aspx");
        }

        protected void ShowAcceptedPayments_Click(object sender, EventArgs e)
        {
            Response.Redirect("Show_Accepted_Payments.aspx");
        }

        protected void ShowCashbackByPlan_Click(object sender, EventArgs e)
        {
            Response.Redirect("Show_Cashback_by_Plan.aspx");
        }

        protected void ShowAverageTransactionAmount_Click(object sender, EventArgs e)
        {
            Response.Redirect("Show_Average_Transaction_Amount.aspx");
        }

        protected void CheckMobileWalletLink_Click(object sender, EventArgs e)
        {
            Response.Redirect("Check_Mobile-Wallet_Link.aspx");
        }

        protected void UpdateEarnedPoints_Click(object sender, EventArgs e)
        {
            Response.Redirect("Update_Earned_Points.aspx");
        }
    }
}