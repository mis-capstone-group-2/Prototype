<%@ Page Language="VB" AutoEventWireup="false" CodeFile="TwoControl.aspx.vb" Inherits="TwoControl" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="Book_Title" DataValueField="Book_ID" AutoPostBack="True"></asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Book_ID], [Book_Title] FROM [Books]"></asp:SqlDataSource>
        <br />
        <br />
        <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="125px" AutoGenerateRows="False" DataKeyNames="Book_ID" DataSourceID="SqlDataSource2">
            <Fields>
                <asp:BoundField DataField="Book_ID" HeaderText="Book_ID" InsertVisible="False" ReadOnly="True" SortExpression="Book_ID" />
                <asp:BoundField DataField="Book_Title" HeaderText="Book_Title" SortExpression="Book_Title" />
                <asp:BoundField DataField="Book_Pub_Date" HeaderText="Book_Pub_Date" SortExpression="Book_Pub_Date" />
                <asp:BoundField DataField="Book Price" HeaderText="Book Price" SortExpression="Book Price" />
                <asp:BoundField DataField="Book_Quantity" HeaderText="Book_Quantity" SortExpression="Book_Quantity" />
            </Fields>
        </asp:DetailsView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Books] WHERE ([Book_ID] = @Book_ID)">
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList1" Name="Book_ID" PropertyName="SelectedValue" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
    </div>
    </form>
</body>
</html>
