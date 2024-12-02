using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DatabaseMS3
{
    public partial class GetRemaining_plan_amount : System.Web.UI.Page
    {
        String mobno = Global.MobileNumber;
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }
        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            string planName = TextBoxPlanName.Text.Trim();
            if (string.IsNullOrWhiteSpace(planName))
            {
                LabelMessage.Text = "Please enter a valid plan name it can not be null.";
                LabelMessage.ForeColor = System.Drawing.Color.Red;
                TextBoxRemainingAmount.Text = "";
                return;
            }
            else
            {
                LabelMessage.Text = "";
            }
            LoadRemainingAmount(mobno, planName);
        }
        private void LoadRemainingAmount(String mobno, string planName)
        {
            decimal result=DatabaseHelper.GetRemainingOrExtra(mobno, planName,"Remaining_plan_amount");
            TextBoxRemainingAmount.Text = result.ToString();
        }
        protected void btnBack_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Customer_main.aspx");  
        }
    }
}