<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="main_admin.aspx.cs" Inherits="DatabaseMS3.main_admin" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Admin Dashboard</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #F9F7F7; /* Light background */
            color: #112D4E; /* Dark text */
            margin: 0;
            padding: 0;
        }

        .dashboard {
            display: flex;
            height: 100vh; /* Make dashboard take full viewport height */
        }

        .sidebar {
            width: 280px;
            background-color: #DBE2EF; /* Soft blue sidebar background */
            padding: 20px;
            box-shadow: 2px 0 5px rgba(0,0,0,0.1);
            overflow-y :auto;
        }

        .sidebar h2 {
            color: #3F72AF; /* Blue heading color */
            margin-bottom: 20px;
            text-align:center;
        }

        .menu-item {
            margin-bottom: 10px;
        }

        .dashboard-button {
            background-color: #3F72AF; /* Blue button background */
            color: #F9F7F7; /* Light button text */
            border: none;
            padding: 10px 15px;
            width: 100%;
            text-align: left;
            border-radius: 5px;
            cursor: pointer;
            font-size: 16px;
            transition: background-color 0.3s;
        }

        .dashboard-button:hover {
            background-color: #112D4E; /* Darker blue on hover */
        }

        .content {
            flex: 1;
            padding: 30px;
            overflow-y: auto; /* Allow scrolling if content overflows */
        }

         .content h1{
            color:#3F72AF;
            margin-bottom:15px;
         }
        .content p {
            color: #112D4E;
            margin-bottom: 20px;
        }

         /* Styles for ASP.NET controls, if needed */
        .content table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }

        .content th, .content td {
            border: 1px solid #DBE2EF;
            padding: 10px;
            text-align: left;
        }

        .content th {
            background-color: #3F72AF;
            color: #F9F7F7;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="dashboard">
            <div class="sidebar">
                <h2>Admin Dashboard</h2>
                <div class="menu-item"><asp:Button runat="server" Text="View Customer Profiles" OnClick="ViewCustomerProfiles_Click" CssClass="dashboard-button" /></div>
                <div class="menu-item"><asp:Button runat="server" Text="View Physical Stores" OnClick="ViewPhysicalStores_Click" CssClass="dashboard-button" /></div>
                <div class="menu-item"><asp:Button runat="server" Text="View Resolved Tickets" OnClick="ViewResolvedTickets_Click" CssClass="dashboard-button" /></div>
                <div class="menu-item"><asp:Button runat="server" Text="View Customer Accounts" OnClick="ViewCustomerAccounts_Click" CssClass="dashboard-button" /></div>
                <div class="menu-item"><asp:Button runat="server" Text="List Accounts by Plan" OnClick="ListAccountsByPlan_Click" CssClass="dashboard-button" /></div>
                <div class="menu-item"><asp:Button runat="server" Text="Show Account Usage" OnClick="ShowAccountUsage_Click" CssClass="dashboard-button" /></div>
                <div class="menu-item"><asp:Button runat="server" Text="Remove Account Benefits" OnClick="RemoveAccountBenefits_Click" CssClass="dashboard-button" /></div>
                <div class="menu-item"><asp:Button runat="server" Text="List SMS Offers" OnClick="ListSMSOffers_Click" CssClass="dashboard-button" /></div>
                <div class="menu-item"><asp:Button runat="server" Text="View Wallets" OnClick="ViewWallets_Click" CssClass="dashboard-button" /></div>
                <div class="menu-item"><asp:Button runat="server" Text="View E-shops" OnClick="ViewEShops_Click" CssClass="dashboard-button" /></div>
                <div class="menu-item"><asp:Button runat="server" Text="View Payment Transactions" OnClick="ViewPaymentTransactions_Click" CssClass="dashboard-button" /></div>
                <div class="menu-item"><asp:Button runat="server" Text="View Cashback Transactions" OnClick="ViewCashbackTransactions_Click" CssClass="dashboard-button" /></div>
                <div class="menu-item"><asp:Button runat="server" Text="Show Accepted Payments" OnClick="ShowAcceptedPayments_Click" CssClass="dashboard-button" /></div>
                <div class="menu-item"><asp:Button runat="server" Text="Show Cashback by Plan" OnClick="ShowCashbackByPlan_Click" CssClass="dashboard-button" /></div>
                <div class="menu-item"><asp:Button runat="server" Text="Show Average Transaction Amount" OnClick="ShowAverageTransactionAmount_Click" CssClass="dashboard-button" /></div>
                <div class="menu-item"><asp:Button runat="server" Text="Check Mobile-Wallet Link" OnClick="CheckMobileWalletLink_Click" CssClass="dashboard-button" /></div>
                <div class="menu-item"><asp:Button runat="server" Text="Update Earned Points" OnClick="UpdateEarnedPoints_Click" CssClass="dashboard-button" /></div>
            </div>
                
            <div class="content">
                <h1>Welcome to Admin Dashboard</h1>
                <p>Select an option from the sidebar to manage different aspects of the system.</p>
                <asp:PlaceHolder ID="ContentPlaceHolder" runat="server">
                </asp:PlaceHolder>
            </div>
        </div>
    </form>
</body>
</html>