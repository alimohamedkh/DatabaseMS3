<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Top_Successful_Payments.aspx.cs" Inherits="DatabaseMS3.Top_Successful_Payments" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Top Successful Payments</title>




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
        background-color: #112D4E; /* Change background color on hover */
        transform: translateY(-5px); /* Slightly lift the button */
        box-shadow: 0px 6px 8px rgba(0, 0, 0, 0.3); /* Enhance shadow on hover */
    }

</style>








</head>
<body>
    <form id="form1" runat="server">
        <div style="margin: 20px;">
            <h1>Top Successful Payments</h1>
            <asp:GridView ID="GridViewPayments" runat="server" AutoGenerateColumns="True" 
                CssClass="gridview" HeaderStyle-BackColor="#007BFF" HeaderStyle-ForeColor="White" 
                RowStyle-BackColor="#F2F2F2" AlternatingRowStyle-BackColor="#FFFFFF" BorderWidth="1px">
            </asp:GridView>
            <br />
            <asp:Button ID="ButtonBack" runat="server" Text="Back to main" OnClick="ButtonBack_Click" 
                CssClass="custom-button" />
        </div>
    </form>
</body>
</html>
