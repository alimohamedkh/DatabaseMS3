using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DatabaseMS3
{
    public partial class admin_login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void admin_loginB_Click(object sender, EventArgs e)
        {
            if (usernameTB.Text == "admin" && passwordTB.Text == "0000")
            {

                Response.Redirect("main_admin.aspx");

            }
            else {

                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Wrong admin username or password entered!');", true);
            }
        }
    }
}