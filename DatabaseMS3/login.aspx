<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="DatabaseMS3.login" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Telecom Login</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #F9F7F7; /* Lightest - Background */
            color: #112D4E; /* Darkest - Default Text Color */
            display: flex;
            flex-direction: column; /* Align items vertically */
            align-items: center; /* Center items horizontally */
            justify-content: center;
            height: 100vh;
            margin: 0;
        }

        h1 {
            color: #112D4E; /* Darkest - Heading */
            margin-bottom: 20px;
        }

        hr {
            border: 1px solid #DBE2EF; /* Second Lightest - Separator */
            width: 80%;
            margin-bottom: 30px;
        }

        form {
            background-color: #DBE2EF; /* Second Lightest - Form Background */
            padding: 40px;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            width: 300px; /* Set a fixed width for the form */
            text-align: left; /* Align form content to the left */
        }

        .form-group {
            margin-bottom: 20px; /* Add space between form groups */
        }

        asp\:Label {
            display: block; /* Make labels appear above input fields */
            margin-bottom: 5px;
            color: #3F72AF; /* Second Darkest - Label Text */
        }

        asp\:TextBox,
        asp\:Button {
            width: calc(100% - 22px); /* Input fields take full width with padding and border */
            padding: 10px;
            border: 1px solid #DBE2EF; /* Second Lightest - Input Border */
            border-radius: 5px;
            font-size: 16px;
        }

        asp\:Button {
            background-color: #3F72AF; /* Second Darkest - Button Background */
            color: #F9F7F7; /* Lightest - Button Text */
            border: none;
            cursor: pointer;
            transition: background-color 0.3s ease, color 0.3s ease; /* Smooth transition for background and text */
            width : 100%;
        }

        asp\:Button:hover {
            background-color: #112D4E; /* Darkest - Hover Button Background */
            color: #DBE2EF; /* Second Lightest - Hover Button Text */
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <h1>Welcome To Telecom_Team_33 Website!</h1>
        <hr>

        <div class="form-group">
            <asp:Label ID="Label1" runat="server" Text="Enter Your Mobile Number"></asp:Label>
            <asp:TextBox ID="mobile_numberTB" minLength="11" MaxLength="11" required="required" runat="server"></asp:TextBox>
        </div>

        <div class="form-group">
            <asp:Label ID="Label2" runat="server" Text="Enter Your Password"></asp:Label>
            <asp:TextBox ID="passwordTB" required="required" runat="server" TextMode="Password"></asp:TextBox>
        </div>

        <asp:Button ID="loginB" runat="server" OnClick="loginB_Click" Text="Login" />
    </form>
</body>
</html>
