<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="View_Wallets.aspx.cs" Inherits="DatabaseMS3.View_Wallets" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Wallet Details</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #F9F7F7; /* Light background */
            color: #112D4E; /* Dark text */
            margin: 20px;
            padding: 20px;
        }

        #form1 {
            background-color: #DBE2EF; /* Soft blue container background */
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        h2 {
            color: #3F72AF; /* Blue heading */
            text-align: center;
            margin-bottom: 20px;
        }

        .wallets-gridview {
            width: 100%;
            border-collapse: collapse;
            font-size: 14px;
        }

            .wallets-gridview th {
                background-color: #3F72AF; /* Blue header background */
                color: #F9F7F7; /* Light text on header */
                text-align: left;
                padding: 10px 15px;
                border: 1px solid #112D4E; /* Darker blue border */
            }

            .wallets-gridview td {
                padding: 10px 15px;
                border: 1px solid #DBE2EF; /* Lighter blue border */
            }

            .wallets-gridview tr:nth-child(even) {
                background-color: #F2F2F2; /* Slightly darker row background for better readability */
            }

            .wallets-gridview tr:hover {
                background-color: #E6EAF2; /* Light blue row hover effect */
            }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <h2>Details of all wallets along with their customer names:</h2>
        <div>
            <asp:GridView ID="wallets_tableGV" runat="server" CssClass="wallets-gridview" AutoGenerateColumns="True"></asp:GridView>
        </div>
    </form>
</body>
</html>
