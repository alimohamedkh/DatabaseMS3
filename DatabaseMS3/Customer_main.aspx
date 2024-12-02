<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Customer_main.aspx.cs" Inherits="DatabaseMS3.Customer_main" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Customer Options</title>
    <style>
        
        body, html {
            margin: 0;
            padding: 0;
            height: 100%;
            font-family: Arial, sans-serif;
            background-color: #F9F7F7; 
        }
        .center-content {
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            height: 100vh; 
        }
        .label {
            font-size: 35px;
            font-weight: bold;
            color: #112D4E; 
            margin-bottom: 30px; 
        }
        .button-container {
            display: flex;
            flex-direction: column; 
            align-items: center; 
            gap: 15px; 
        }
        .btn {
            width: 300px; 
            height: 50px; 
            font-size: 16px;
            font-weight: bold;
            cursor: pointer;
            border: none;
            border-radius: 5px; 
            background-color: #3F72AF; 
            color: #F9F7F7; 
            transition: all 0.3s; 
            box-shadow: 0px 4px 6px rgba(0, 0, 0, 0.2); 
        }
        .btn:hover {
            background-color: #112D4E; 
            transform: translateY(-3px); 
            box-shadow: 0px 6px 8px rgba(0, 0, 0, 0.3); 
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="center-content">
            <asp:Label ID="lblCustomerOptions" runat="server" Text="CUSTOMER OPTIONS" CssClass="label"></asp:Label>
            <div class="button-container">
                <asp:Button ID="btnAllBenefits" runat="server" Text="View All Benefits" CssClass="btn" OnClick="BtnAllBenefits_Click" />
                <asp:Button ID="btnTicketAccountCustomer" runat="server" Text="Get Ticket Account Customer" CssClass="btn" OnClick="BtnTicketAccountCustomer_Click" />
                <asp:Button ID="btnAccountHighestVoucher" runat="server" Text="Get Account Highest Voucher" CssClass="btn" OnClick="BtnAccountHighestVoucher_Click" />
                <asp:Button ID="btnRemainingPlanAmount" runat="server" Text="Get Remaining Plan Amount" CssClass="btn" OnClick="BtnRemainingPlanAmount_Click" />
                <asp:Button ID="btnExtraPlanAmount" runat="server" Text="Get Extra Plan Amount" CssClass="btn" OnClick="BtnExtraPlanAmount_Click" />
                <asp:Button ID="btnTopSuccessfulPayments" runat="server" Text="View Top Successful Payments" CssClass="btn" OnClick="BtnTopSuccessfulPayments_Click" />
                
                <asp:Button ID="Button1" runat="server" Text="View Details for all shops" OnClick ="View_Shop" cssclass="btn" />

                <asp:Button ID="Button2" runat="server" Text="Show My Plans in last 5 Months" OnClick ="View_Service" cssclass="btn" />

                <asp:Button ID="Button3" runat="server" Text="Renew My Subscription" OnClick ="RenewSubscription" cssclass="btn" />

                <asp:Button ID="Button4" runat="server" Text="Get Cashback" OnClick ="Get_Cashback" cssclass="btn" />

                <asp:Button ID="Button5" runat="server" Text="Recharge Balance" OnClick ="Recharge_Balance_Click" cssclass="btn" />

                <asp:Button ID="Button6" runat="server" Text="Redeem Voucher" OnClick ="Redeem_Voucher_Click" cssclass="btn" />
                            </div>
        </div>
    </form>
</body>
</html>