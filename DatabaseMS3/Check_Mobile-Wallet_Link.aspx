<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Check_Mobile-Wallet_Link.aspx.cs" Inherits="DatabaseMS3.Check_Mobile_Wallet_Link" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Mobile Wallet Link Check</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #F9F7F7; /* Light background */
            color: #112D4E; /* Dark text */
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }

        #form1 {
            background-color: #DBE2EF; /* Soft blue container background */
            padding: 30px;
            border-radius: 15px;
            box-shadow: 0 4px 8px rgba(0,0,0,0.1);
            text-align: center;
        }

        .form-group {
            margin-bottom: 20px;
        }

        asp\:Label {
            display: block;
            margin-bottom: 5px;
            font-weight: 600;
        }

        asp\:TextBox {
            width: 100%;
            padding: 10px;
            border: 1px solid #3F72AF; /* Blue border for input */
            border-radius: 5px;
            font-size: 16px;
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

        /* Adjustments for ASP.NET Web Forms controls to render nicely */
        asp\:Label[for$="check_mobile_wallet_linkTB"],
        asp\:Label[for$="check_mobile_wallet_linkB"] {
           display:block;
        }

    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="form-group">
            <asp:Label ID="check_mobile_wallet_linkL" runat="server" >This mobile number is linked/not linked to a wallet</asp:Label>
        </div>
        <div class="form-group">
            <asp:Label ID="Label1" runat="server" AssociatedControlID="check_mobile_wallet_linkTB" Text="Enter Mobile Number :"/>
            <asp:TextBox ID="check_mobile_wallet_linkTB" required ="required" type="number" runat="server"></asp:TextBox>
        </div>
        <div class="form-group">
            <asp:Button ID="check_mobile_wallet_linkB" OnClick="check_mobile_wallet_linkB_Click" runat="server" Text="Check" />
        </div>
    </form>
</body>
</html>
