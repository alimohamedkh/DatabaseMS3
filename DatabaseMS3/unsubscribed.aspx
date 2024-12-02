<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="unsubscribed.aspx.cs" Inherits="DatabaseMS3.unsubscribed" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Mobile Number Input</title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="text-align: center; margin-top: 50px;">
            <h1>Enter Your Mobile Number</h1>
            <asp:Label ID="MobileNumberLabel" runat="server" Text="Mobile Number:" />
            <br />
            <asp:TextBox ID="MobileNumberTextBox" runat="server" MaxLength="10" Placeholder="Enter 10-digit number"></asp:TextBox>
            <br /><br />
            <asp:Button ID="SubmitButton" runat="server" Text="Submit" OnClick="SubmitButton_Click" />
            <br /><br />
            <asp:Label ID="ErrorMessage" runat="server" ForeColor="Red"></asp:Label>
            <br />

            <asp:Panel ID="GridViewPanel" runat="server" Visible="false">
                <h3>Data Grid</h3>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="true" />
            </asp:Panel>
        </div>
    </form>
</body>
</html>

