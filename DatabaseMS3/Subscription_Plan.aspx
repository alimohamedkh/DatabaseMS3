<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Subscription_Plan.aspx.cs" Inherits="DatabaseMS3.Subscription_Plan" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div>
                <label for="MobileNo_Input">Enter your Mobile Number:</label>
                <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control"/>
            </div>
            
            <div>
                <label for="Amount_Input">Enter Amount to be paid:</label>
                <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control"/>
            </div>
            
            <div>
                <label for="Payment_Method_Input">Enter your Payment Method:</label>
                <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control"/>
            </div>

            <div>
                <label for="Plan_ID_Input">Enter your Plan ID:</label>
                <asp:TextBox ID="TextBox4" runat="server" CssClass="form-control"/>
            </div>


            <div>
                <asp:Button ID="Show_Plan_Button" runat="server" Text="Pay" OnClick="Pay_Button_Click"/>
            </div>

             <asp:GridView ID="Subscription_View" runat="server" AutoGenerateColumns="False">
                 <Columns>
                     <asp:BoundField DataField="mobileNo" HeaderText="Your Mobile Number" />
                     <asp:BoundField DataField="planID" HeaderText="Plan ID" />
                     <asp:BoundField DataField="subscription_date" HeaderText="Subscription Date"/>
                     <asp:BoundField DataField="status" HeaderText="Status"/>
                 </Columns>
             </asp:GridView>
        </div>
    </form>
</body>
</html>
