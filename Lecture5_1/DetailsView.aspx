<%@ Page Language="VB" AutoEventWireup="false" CodeFile="DetailsView.aspx.vb" Inherits="DetailsView" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="125px" AllowPaging="True" AutoGenerateRows="False" DataKeyNames="Book_ID" DataSourceID="SqlDataSource1">
            <Fields>
                <asp:BoundField DataField="Book_ID" HeaderText="Book_ID" InsertVisible="False" ReadOnly="True" SortExpression="Book_ID" />
                <asp:BoundField DataField="Book_Title" HeaderText="Book_Title" SortExpression="Book_Title" />
                <asp:BoundField DataField="Book_Pub_Date" HeaderText="Book_Pub_Date" SortExpression="Book_Pub_Date" />
                <asp:BoundField DataField="Book Price" HeaderText="Book Price" SortExpression="Book Price" />
                <asp:BoundField DataField="Book_Quantity" HeaderText="Book_Quantity" SortExpression="Book_Quantity" />
            </Fields>
        </asp:DetailsView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Books]"></asp:SqlDataSource>
    </div>
    </form>
</body>
</html>
