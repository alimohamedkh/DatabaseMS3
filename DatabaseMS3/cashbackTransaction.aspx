<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="cashbackTransaction.aspx.cs" Inherits="DatabaseMS3.cashback" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Cashback Page</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Cashback Query</h1>
            <!-- Input field -->
            <asp:TextBox ID="txtInput" runat="server" Placeholder="Enter your input"></asp:TextBox>

            <!-- Button -->
            <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" />

            <!-- GridView -->
                       <asp:Panel ID="GridViewPanel" runat="server" Visible="false">
    <h3>Data Grid</h3>
    <asp:GridView ID="gvUsageDetails" runat="server" AutoGenerateColumns="true" />
</asp:Panel>
    </form>
</body>
</html>
