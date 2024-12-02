<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Recharge_Balance.aspx.cs" Inherits="DatabaseMS3.Recharge_Balance" %>

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
                <asp:Button ID="Recharge_button" runat="server" Text="Recharge Balance" OnClick="Recharge_balance_Click"/>
            </div>

        </div>
    </form>
</body>
</html>
