<%@ Page Language="VB" AutoEventWireup="false" CodeFile="GridView.aspx.vb" Inherits="GridView" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Book_ID" DataSourceID="SqlDataSource1" PageSize="2">
            <Columns>
                <asp:BoundField DataField="Book_ID" HeaderText="Book_ID" InsertVisible="False" ReadOnly="True" SortExpression="Book_ID" />
                <asp:BoundField DataField="Book_Title" HeaderText="Book_Title" SortExpression="Book_Title" />
                <asp:BoundField DataField="Book_Pub_Date" HeaderText="Book_Pub_Date" SortExpression="Book_Pub_Date" />
                <asp:BoundField DataField="Book Price" HeaderText="Book Price" SortExpression="Book Price" />
                <asp:BoundField DataField="Book_Quantity" HeaderText="Book_Quantity" SortExpression="Book_Quantity" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Books]"></asp:SqlDataSource>
    </div>
    </form>
</body>
</html>
