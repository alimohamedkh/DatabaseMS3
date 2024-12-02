<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Service_Plans.aspx.cs" Inherits="DatabaseMS3.Service_Plans" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <label for="MobileNo_Input">Enter your Mobile Number:</label>
            <asp:TextBox ID="UserInput" runat="server" CssClass="form-control" />
            <asp:Button ID="Show_Plan_Button" runat="server" Text="Show" OnClick="ShowButton_Click"/>

            <asp:GridView ID="Service_Plan_View" runat="server" AutoGenerateColumns="False">
                <Columns>
                    <asp:BoundField DataField="planID" HeaderText="Plan ID" />
                    <asp:BoundField DataField="SMS_offered" HeaderText="SMS Offered" />
                    <asp:BoundField DataField="minutes_offered" HeaderText="Minutes Offered"/>
                    <asp:BoundField DataField="data_offered" HeaderText="Data Offered"/>
                    <asp:BoundField DataField="minutes_offered" HeaderText="Minutes Offered"/>
                    <asp:BoundField DataField="name" HeaderText="Name"/>
                    <asp:BoundField DataField="price" HeaderText="Price"/>
                    <asp:BoundField DataField="description" HeaderText="Description"/>
                </Columns>
            </asp:GridView>
        </div>
    </form>
</body>
</html>
