<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Show_Average_Transaction_Amount.aspx.cs" Inherits="DatabaseMS3.Show_Average_Transaction_Amount" %>

<!DOCTYPE html>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Average Transaction Amount</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #F9F7F7; /* Light background */
            color: #112D4E; /* Dark text */
            display: flex;
            flex-direction: column;
            align-items: center;
            min-height: 100vh;
            margin: 0;
            padding: 20px;
        }

        #form1 {
            background-color: #DBE2EF; /* Soft blue container background */
            padding: 30px;
            border-radius: 15px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            text-align: center;
            width: 90%;
            max-width: 500px; /* Adjust as needed */
        }

        .result-label {
            font-weight: bold;
            color: #3F72AF; /* Blue color for the result */
            margin-bottom: 20px;
            font-size: 1.1em;
        }

        .form-group {
            margin-bottom: 20px;
            text-align: left;
        }

        asp\:Label {
            display: block;
            margin-bottom: 5px;
            font-weight: 600;
        }

        asp\:TextBox {
            width: calc(100% - 22px);
            padding: 10px;
            border: 1px solid #3F72AF;
            border-radius: 5px;
            font-size: 16px;
        }

        asp\:Button {
            background-color: #3F72AF;
            color: #F9F7F7;
            padding: 12px 20px;
            border: none;
            border-radius: 5px;
            font-size: 16px;
            cursor: pointer;
            transition: background-color 0.3s;
        }

        asp\:Button:hover {
            background-color: #112D4E;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
       
            <asp:Label ID="Label3" runat="server" Text="Average of sent transaction amounts from a wallet within a specific duration: "></asp:Label><asp:Label ID="show_average_transaction_amountL" CssClass="result-label" runat="server" Text="?"></asp:Label>
      

        <div class="form-group">
            <asp:Label ID="Label1" runat="server" AssociatedControlID="show_average_transaction_amount_walletidTB" Text="Enter WalletID"></asp:Label>
            <asp:TextBox ID="show_average_transaction_amount_walletidTB" required="required" type="number" runat="server"></asp:TextBox>
        </div>

        <div class="form-group">
            <asp:Label ID="Label2" runat="server" AssociatedControlID="show_average_transaction_amount_startdateTB" Text="Enter Start Date"></asp:Label>
            <asp:TextBox ID="show_average_transaction_amount_startdateTB" runat="server" required="required" TextMode="Date"></asp:TextBox>
        </div>

        <div class="form-group">
            <asp:Label ID="Label4" runat="server" AssociatedControlID="show_average_transaction_amount_enddateTB" Text="Enter End Date"></asp:Label>
            <asp:TextBox ID="show_average_transaction_amount_enddateTB" runat="server" required="required" TextMode="Date"></asp:TextBox>
        </div>

        <asp:Button ID="show_average_transaction_amountB" runat="server" OnClick="show_average_transaction_amountB_Click" Text="Go" />
    </form>
</body>
</html>
