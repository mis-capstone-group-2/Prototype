<%@ Page Language="VB" AutoEventWireup="false" CodeFile="DataList.aspx.vb" Inherits="DataList" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:DataList ID="DataList1" runat="server" DataKeyField="Book_ID" DataSourceID="SqlDataSource1">
            <ItemTemplate>
                Book_ID:
                <asp:Label ID="Book_IDLabel" runat="server" Text='<%# Eval("Book_ID") %>' />
                <br />
                Book_Title:
                <asp:Label ID="Book_TitleLabel" runat="server" Text='<%# Eval("Book_Title") %>' />
                <br />
                Book_Pub_Date:
                <asp:Label ID="Book_Pub_DateLabel" runat="server" Text='<%# Eval("Book_Pub_Date") %>' />
                <br />
                Book Price:
                <asp:Label ID="Book_PriceLabel" runat="server" Text='<%# Eval("[Book Price]") %>' />
                <br />
                Book_Quantity:
                <asp:Label ID="Book_QuantityLabel" runat="server" Text='<%# Eval("Book_Quantity") %>' />
                <br />
<br />
            </ItemTemplate>
        </asp:DataList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Books]"></asp:SqlDataSource>
    </div>
    </form>
</body>
</html>
