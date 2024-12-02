<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GetAccount_Highest_Voucher.aspx.cs" Inherits="DatabaseMS3.GetAccount_Highest_Voucher" %>


<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Get Account Highest Voucher</title>
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
            <asp:Label ID="LabelAccountHighestVoucher" runat="server" Text="Account Highest Voucher:" Font-Size="Large"></asp:Label>
            <br /><br />
            <asp:TextBox ID="TextBoxAccountHighestVoucher" runat="server" ReadOnly="true" Width="300px"></asp:TextBox>
            <br /><br />
            <asp:Button ID="btnBack" runat="server" Text="Back to Main" OnClick="btnBack_Click" CssClass="custom-button"/>
        </div>
    </form>
</body>
</html>
