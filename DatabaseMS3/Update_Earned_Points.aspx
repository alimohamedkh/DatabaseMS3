<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Update_Earned_Points.aspx.cs" Inherits="DatabaseMS3.Update_Earned_Points" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Update Earned Points</title>
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
            max-width: 600px; /* Adjust as needed */
        }

        .result-label {
            font-weight: bold;
            color: #3F72AF; /* Blue color for the result */
            margin-bottom: 10px;
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
        <div class="form-group">
            <asp:Label ID="Label1" runat="server" AssociatedControlID="update_earned_pointsTB" Text="Enter the user's mobile number :"></asp:Label>
            <asp:TextBox ID="update_earned_pointsTB" required="required" runat="server" type="number"></asp:TextBox>
        </div>
        <div class ="form-group">
             <asp:Label ID="Label2" runat="server"  Text="Updated total number of earned points : "></asp:Label><asp:Label ID="updated_pointsL" CssClass ="result-label" runat="server" Text="?"></asp:Label>
        </div>
       
        <div>
            <asp:GridView ID="update_earned_points_tableGV" runat="server" AutoGenerateColumns="true">
            </asp:GridView>
        </div>

        <br />
        <asp:Button ID="update_earned_pointsB" runat="server" OnClick="update_earned_pointsB_Click" Text="Go" />
    </form>
</body>
</html>
