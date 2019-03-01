<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="Books.aspx.vb" Inherits="Books" %>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">

    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
    <Columns>
        <asp:BoundField DataField="Book_Title" HeaderText="Book_Title" SortExpression="Book_Title" />
        <asp:BoundField DataField="Book_Pub_Date" HeaderText="Book_Pub_Date" SortExpression="Book_Pub_Date" />
        <asp:BoundField DataField="Book_Price" HeaderText="Book_Price" SortExpression="Book_Price" />
        <asp:BoundField DataField="Book_Qty" HeaderText="Book_Qty" SortExpression="Book_Qty" />
    </Columns>
</asp:GridView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Book_Title], [Book_Pub_Date], [Book_Price], [Book_Qty] FROM [Books]"></asp:SqlDataSource>

</asp:Content>


