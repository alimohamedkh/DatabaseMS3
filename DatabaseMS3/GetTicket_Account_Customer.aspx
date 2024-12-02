<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GetTicket_Account_Customer.aspx.cs" Inherits="DatabaseMS3.GetTicket_Account_Customer" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Get Ticket Count</title>
                <style>
    .custom-button {
        width: 250px; 
        height: 50px; 
        font-size: 16px; 
        font-weight: bold; 
        cursor: pointer; 
        border: none; 
        border-radius: 10px; 
        background-color: #3F72AF; 
        color: #F9F7F7; 
        transition: all 0.3s ease; 
        box-shadow: 0px 4px 6px rgba(0, 0, 0, 0.2); 
    }
    .custom-button:hover {
        background-color: #112D4E; 
        transform: translateY(-5px); 
        box-shadow: 0px 6px 8px rgba(0, 0, 0, 0.3);
    }

</style>









</head>
<body>
    <form id="form1" runat="server">
        <div style="margin: 20px;">
            <h1>Get Technical Support Ticket Count</h1>
            <asp:Label ID="LabelNationalID" runat="server" Text="Enter National ID:" Font-Size="Large"></asp:Label>
            <br />
            <asp:TextBox ID="TextBoxNationalID" runat="server" Width="300px" Placeholder="National ID"></asp:TextBox>
            <br /><br />
            <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" CssClass="custom-button" />
            <br /><br />
           <asp:GridView ID="GridViewTicket" runat="server" AutoGenerateColumns="True" 
            CssClass="gridview" HeaderStyle-BackColor="#007BFF" HeaderStyle-ForeColor="White" 
                RowStyle-BackColor="#F2F2F2" AlternatingRowStyle-BackColor="#FFFFFF" BorderWidth="1px">
            </asp:GridView>
            <br /><br />
            <asp:Label ID="LabelMessage" runat="server" ForeColor="Green"></asp:Label>
            <br /><br />
            <asp:Button ID="btnBack" runat="server" Text="Back to Main" OnClick="btnBack_Click" CssClass="custom-button"/>
        </div>
    </form>
</body>
</html>