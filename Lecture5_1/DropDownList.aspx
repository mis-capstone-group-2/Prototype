<%@ Page Language="VB" AutoEventWireup="false" CodeFile="DropDownList.aspx.vb" Inherits="DropDownList" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="Book_Title" DataValueField="Book_ID"></asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Products.mdf;Integrated Security=True" ProviderName="System.Data.SqlClient" SelectCommand="SELECT [Book_ID], [Book_Title] FROM [Books]"></asp:SqlDataSource>
    </div>
    </form>
</body>
</html>
