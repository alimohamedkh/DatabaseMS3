<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="adminXORcustomer.aspx.cs" Inherits="DatabaseMS3.adminXORcustomer" %>

<<!DOCTYPE html>
<html>
<head>
    <title>Telecom Login</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #F9F7F7; /* Lightest color - Background */
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }

        .login-container {
            background-color: #DBE2EF; /* Second Lightest - Container Background */
            padding: 40px;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            text-align: center;
        }

        h1 {
            color: #112D4E; /* Darkest color - Main Heading */
            margin-bottom: 20px;
        }

        p {
            color: #3F72AF; /* Second Darkest - Paragraph Text */
            margin-bottom: 30px;
        }

        .button {
            background-color: #3F72AF; /* Second Darkest - Button Background */
            color: #F9F7F7; /* Lightest - Button Text */
            padding: 15px 30px;
            border: none;
            border-radius: 5px;
            font-size: 16px;
            cursor: pointer;
            transition: background-color 0.3s ease, color 0.3s ease; /* Smooth hover transition for background and text */
            margin: 10px;
        }

        .button:hover {
            background-color: #112D4E; /* Darkest - Hover Button Background */
            color: #DBE2EF; /* Second Lightest - Hover Button Text */
        }
    </style>
</head>
<body>
    <div class="login-container">
        <h1>Welcome to Our Telecom Company</h1>
        <p>Please select your login type:</p>

        <form id="form1" runat="server">
            <asp:Button ID="btnCustomerLogin" runat="server" Text="Customer Login" CssClass="button" OnClick="btnCustomerLogin_Click" />
            <asp:Button ID="btnAdminLogin" runat="server" Text="Admin Login" CssClass="button" OnClick="btnAdminLogin_Click" />
        </form>
    </div>
</body>
</html>
