<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Lecture2_1.aspx.vb" Inherits="Lecture2_1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:ListBox ID="ListBox1" runat="server" AutoPostBack="True"></asp:ListBox>
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" Text="Load Names" />
        <br />
        <br />
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
    
    </div>
        <br />
        <br />
    </form>
</body>
</html>
