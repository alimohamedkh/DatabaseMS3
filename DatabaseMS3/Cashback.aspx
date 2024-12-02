<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Cashback.aspx.cs" Inherits="DatabaseMS3.Cashback" %>

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
                <label for="Transaction">Enter ID of Payment Transaction:</label>
                <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control"/>
            </div>

            <div>
                <label for="Benefit">Enter the Benefit ID</label>
                <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control"/>
            </div>

            <div>
                <asp:Button ID="Show_Cashback_Button" runat="server" Text="Get Cashback" OnClick="Get_Cashback_Button_Click"/>
            </div>

            <asp:GridView ID="Cashback_View" runat="server" AutoGenerateColumns="False">
                <Columns>
                    <asp:BoundField DataField="walletID" HeaderText="Your Wallet ID" />
                    <asp:BoundField DataField="amount" HeaderText="Cashback Amount" />
                </Columns>
            </asp:GridView>
        </div>
    </form>
</body>
</html>
