<%@ Page Title="" Language="VB" MasterPageFile="~/MasterP.master" AutoEventWireup="false" CodeFile="Clothing.aspx.vb" Inherits="Clothing" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Prod_ID" DataSourceID="SqlDataSource1">
    <Columns>
        <asp:BoundField DataField="Prod_ID" HeaderText="Prod_ID" InsertVisible="False" ReadOnly="True" SortExpression="Prod_ID" />
        <asp:BoundField DataField="Prod_Desc" HeaderText="Prod_Desc" SortExpression="Prod_Desc" />
        <asp:BoundField DataField="Prod_Price" HeaderText="Prod_Price" SortExpression="Prod_Price" />
        <asp:BoundField DataField="Prod_Qty" HeaderText="Prod_Qty" SortExpression="Prod_Qty" />
    </Columns>
</asp:GridView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Clothing]"></asp:SqlDataSource>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="ContentPlaceHolder4" Runat="Server">
</asp:Content>

