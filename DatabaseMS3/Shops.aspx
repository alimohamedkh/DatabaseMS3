<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Shops.aspx.cs" Inherits="DatabaseMS3.Shops" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="Shop_Grid" runat="server" AutoGenerateColumns="False">
                <Columns>
                    <asp:BoundField DataField="shopID" HeaderText="Shop ID" />
                    <asp:BoundField DataField="name" HeaderText="Shop Name" />
                    <asp:BoundField DataField="category" HeaderText="Category" />
                </Columns>

            </asp:GridView>
        </div>
    </form>
</body>
</html>
