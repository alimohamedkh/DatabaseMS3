<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Show_Accepted_Payments.aspx.cs" Inherits="DatabaseMS3.Show_Accepted_Payments" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Accepted Payments and Points</title>
    <style>
         body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #F9F7F7; /* Light background */
            color: #112D4E; /* Dark text */
            display: flex;
            flex-direction: column; /* Align items vertically */
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
            width: 90%; /* Adjust width as needed */
            max-width: 800px; /* Limit maximum width */
        }

        h2 {
            color: #112D4E;
            margin-bottom: 20px;
        }

        .form-group {
            margin-bottom: 20px;
            text-align: left; /* Align labels to the left */
        }

        asp\:Label {
            display: block;
            margin-bottom: 5px;
            font-weight: 600;
        }

        asp\:TextBox {
            width: calc(100% - 22px); /* Adjust for padding and border */
            padding: 10px;
            border: 1px solid #3F72AF; /* Blue border for input */
            border-radius: 5px;
            font-size: 16px;
        }

        asp\:GridView {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }

            asp\:GridView th {
                background-color: #3F72AF;
                color: #F9F7F7;
                padding: 10px;
                text-align: left;
                border: 1px solid #112D4E;
            }

            asp\:GridView td {
                padding: 10px;
                border: 1px solid #3F72AF;
                 background-color: #F9F7F7;
                 color: #112D4E;
            }

        asp\:Button {
            background-color: #3F72AF; /* Blue button background */
            color: #F9F7F7; /* Light text on button */
            padding: 12px 20px;
            border: none;
            border-radius: 5px;
            font-size: 16px;
            cursor: pointer;
            transition: background-color 0.3s;
        }

        asp\:Button:hover {
            background-color: #112D4E; /* Darker blue on hover */
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <h2>The number of accepted payment transactions initiated by the input account during the last year along with the total amount of earned points:</h2>
        
        <div class="form-group">
            <asp:Label ID="Label1" runat="server" AssociatedControlID="show_accepted_paymentsTB" Text="Enter the user's mobile number :"></asp:Label>
            <asp:TextBox ID="show_accepted_paymentsTB" runat="server"></asp:TextBox>
        </div>

        <div class="form-group">
            <asp:GridView ID="accepted_payments_tableGV" runat="server" AutoGenerateColumns="true">
            </asp:GridView>
        </div>

        <asp:Button ID="show_accepted_paymentsB" runat="server" OnClick ="show_accepted_paymentsB_Click" Text="Go" />
    </form>
</body>
</html>
