<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="Books.aspx.vb" Inherits="Books" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Pub_ID" DataSourceID="SqlDataSource1">
    <Columns>
        <asp:BoundField DataField="Pub_ID" HeaderText="Pub_ID" InsertVisible="False" ReadOnly="True" SortExpression="Pub_ID" />
        <asp:BoundField DataField="Pub_Title" HeaderText="Pub_Title" SortExpression="Pub_Title" />
        <asp:BoundField DataField="Pub_Date" HeaderText="Pub_Date" SortExpression="Pub_Date" />
        <asp:BoundField DataField="Pub_Price" HeaderText="Pub_Price" SortExpression="Pub_Price" />
        <asp:BoundField DataField="Pub_Qty" HeaderText="Pub_Qty" SortExpression="Pub_Qty" />
    </Columns>
</asp:GridView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Books]"></asp:SqlDataSource>
    
</asp:Content>

