

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="consumption.aspx.cs" Inherits="DatabaseMS3.consumption" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Validate and Show Data</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2>Enter Your Details</h2>

            <div class="form-group">
                <asp:Label ID="Label1" runat="server" Text="Plan Name:"></asp:Label>
                <asp:TextBox ID="plan_name" runat="server" CssClass="form-control" />
            </div>

            <asp:Label ID="Label2" runat="server" Text="Start Date:"></asp:Label>
            <asp:TextBox ID="start_date" runat="server"></asp:TextBox>
            <br /><br />

            <asp:Label ID="Label3" runat="server" Text="End Date:"></asp:Label>
            <asp:TextBox ID="end_date" runat="server"></asp:TextBox>
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
