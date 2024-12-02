<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Customer.aspx.cs" Inherits="DatabaseMS3.Customer" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form" runat="server">
        <div>
            <asp:Button ID="Button1" runat="server" Text="View Details for all shops" OnClick ="View_Shop" />
        </div>

        <div>
            <asp:Button ID="Button2" runat="server" Text="Show My Plans in last 5 Months" OnClick ="View_Service"/>
        </div>

        <div>
            <asp:Button ID="Button3" runat="server" Text="Renew My Subscription" OnClick ="RenewSubscription"/>
        </div>

        <div>
            <asp:Button ID="Button4" runat="server" Text="Get Cashback" OnClick ="Get_Cashback"/>
        </div>

        <div>
            <asp:Button ID="Button5" runat="server" Text="Recharge Balance" OnClick ="Recharge_Balance_Click"/>
        </div>

        <div>
            <asp:Button ID="Button6" runat="server" Text="Redeem Voucher" OnClick ="Redeem_Voucher_Click"/>
        </div>

    </form>
</body>
</html>
