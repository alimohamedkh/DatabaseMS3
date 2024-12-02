using System;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;

namespace DatabaseMS3
{
    public partial class GetTicket_Account_Customer : System.Web.UI.Page
    {
        string loggedInMobileNo = Global.MobileNumber; 


        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LabelMessage.Text = ""; 
            }
        }

        protected void btnBack_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Customer_main.aspx");
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            string nationalIDText = TextBoxNationalID.Text;
            int nationalID;
            bool flag = false;

            if (int.TryParse(nationalIDText, out nationalID))
            {
                string connectionString = WebConfigurationManager.ConnectionStrings["Telecom_Team_33"].ToString();
                string query = "SELECT COUNT(*) FROM Customer_Account WHERE mobileNo = @MobileNo AND NationalID = @NationalID";
                    using (SqlConnection conn = new SqlConnection(connectionString))
                    {
                        conn.Open();
                        using (SqlCommand cmd = new SqlCommand(query, conn))
                        {
                            cmd.Parameters.AddWithValue("@MobileNo", loggedInMobileNo);
                            cmd.Parameters.AddWithValue("@NationalID", nationalID);

                            int count = (int)cmd.ExecuteScalar();
                            if (count > 0)
                            {
                                flag = true;
                            }
                        }
                    }
                
                if (flag)
                {
                    LabelMessage.Text = "";
                    LoadTechnicalSupportTicketCount(nationalID);
                }
                else
                {
                    LabelMessage.Text = "National ID and Mobile Number do not match.";
                    LabelMessage.ForeColor = System.Drawing.Color.Red;
                }
            }
            else
            {
                Console.WriteLine("Invalid National ID. Please enter a valid integer.");
                LabelMessage.Text = "National ID must be an integer.";
                LabelMessage.ForeColor = System.Drawing.Color.Red;
            }
        }

        private void LoadTechnicalSupportTicketCount(int nationalID)
        {
            SqlParameter[] parameters = new SqlParameter[]
                {
                    new SqlParameter("@NationalID",SqlDbType.Int)
                    {
                        Value =nationalID
                    }
              
                };
            string procname = "Ticket_Account_Customer";
            DataTable result = DatabaseHelper.ExecuteStoredProcedure(procname, parameters);
            GridViewTicket.DataSource = result;
            GridViewTicket.DataBind();
        }
    }
}
