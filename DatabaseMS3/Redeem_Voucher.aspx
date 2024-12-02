<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Redeem_Voucher.aspx.cs" Inherits="DatabaseMS3.Redeem_Voucher" %>

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
                <label for="Voucher_Input">Enter Voucher to be redeemed:</label>
                <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control"/>
            </div>

            <div>
                <asp:Button ID="Redeem_button" runat="server" Text="Redeem" OnClick="Redeem_Click"/>
            </div>

            <div>
                <asp:Label ID="MessageLabel" runat="server" ForeColor="Red" />
            </div>
            



        </div>
    </form>
</body>
</html>
