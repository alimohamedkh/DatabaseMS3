<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="View_Cashback_Transactions.aspx.cs" Inherits="DatabaseMS3.View_Cashback_Transactions" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Cashback Transactions Report</title>
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

        .cashback-gridview {
            width: 100%;
            border-collapse: collapse;
            font-size: 14px;
        }

            .cashback-gridview th {
                background-color: #3F72AF; /* Blue header background */
                color: #F9F7F7; /* Light text on header */
                text-align: left;
                padding: 10px 15px;
                border: 1px solid #112D4E; /* Darker blue border */
            }

            .cashback-gridview td {
                padding: 10px 15px;
                border: 1px solid #DBE2EF; /* Lighter blue border */
            }

            .cashback-gridview tr:nth-child(even) {
                background-color: #F2F2F2; /* Slightly darker row background for better readability */
            }

            .cashback-gridview tr:hover {
                background-color: #E6EAF2; /* Light blue row hover effect */
            }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <h2>The total number of cashback transactions per each wallet ID:</h2>
        <div>
            <asp:GridView ID="cashback_tableGV" runat="server" CssClass="cashback-gridview" AutoGenerateColumns="true"></asp:GridView>
        </div>
    </form>
</body>
</html>
