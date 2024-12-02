<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="customerlogin.aspx.cs" Inherits="DatabaseMS3.customerlogin" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Customer Login</title>
    <style>
        .container {
            max-width: 600px;
            margin: 0 auto;
            padding: 20px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }
        .form-group {
            margin-bottom: 10px;
        }
        .form-group label {
            display: block;
            margin-bottom: 5px;
        }
        .form-group input {
            width: 100%;
            padding: 8px;
            font-size: 14px;
            border: 1px solid #ccc;
            border-radius: 4px;
        }
        .gridview-container {
            margin-top: 30px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <h2>Customer Login</h2>

            <!-- Mobile Number TextBox -->
            <div class="form-group">
                <label for="mobileNumber">Mobile Number:</label>
                <asp:TextBox ID="mobileNumber" runat="server" CssClass="form-control" />
            </div>

            <!-- Password TextBox -->
            <div class="form-group">
                <label for="password">Password:</label>
                <asp:TextBox ID="password" runat="server" TextMode="Password" CssClass="form-control" />
            </div>

            <!-- Login Button -->
            <div class="form-group">
                <asp:Button ID="loginButton" runat="server" Text="Login" OnClick="LoginButton_Click" CssClass="form-control" />
                <br /><br />
 <asp:Label ID="LabelMessage" runat="server" ForeColor="Green"></asp:Label>
 <br /><br />
            </div>
        </div>

        <!-- GridView to display some data -->
        <div class="gridview-container">
            <asp:GridView ID="gridView1" runat="server" AutoGenerateColumns="True" CssClass="table" EmptyDataText="No data available" />
        </div>
    </form>
</body>
</html>
