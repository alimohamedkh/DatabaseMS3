<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="usagecurrentmonth.aspx.cs" Inherits="DatabaseMS3.usagecurrentmonth" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Usage for Current Month</title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="margin: 20px;">
            <h2>Usage Details</h2>
            
            <!-- Mobile Number Input -->
            <label for="txtMobileNumber">Enter Mobile Number:</label>
            <asp:TextBox ID="MobileNumberTextBox" runat="server" placeholder="Enter mobile number"></asp:TextBox>
            
            <br /><br />

            <!-- Submit Button -->
            <asp:Button ID="btnSubmit" runat="server" Text="Search" OnClick="btnSubmit_Click" />
            <br /><br />

            <!-- GridView to Display Results -->
            <asp:Panel ID="GridViewPanel" runat="server" Visible="false">
    <h3>Data Grid</h3>
    <asp:GridView ID="gvUsageDetails" runat="server" AutoGenerateColumns="true" />
</asp:Panel>
    </form>
</body>
</html>
