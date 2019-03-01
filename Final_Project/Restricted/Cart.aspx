<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="Cart.aspx.vb" Inherits="Restricted_Members" %>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    Choose a Category
    <br /><br />

    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="Book_Title" DataValueField="Book_Title">
        <asp:ListItem Value="0">--Select--</asp:ListItem>
        <asp:ListItem Value="1">Books</asp:ListItem>
        <asp:ListItem Value="2">Movies</asp:ListItem>
    </asp:DropDownList>
    <br />
    <br />



</asp:Content>

