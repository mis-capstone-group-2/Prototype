<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="ContentPage.aspx.vb" Inherits="ContentPage" %>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Label ID="lblLeft" runat="server" Text="Click the buttonto see the right side" Visible="False"></asp:Label>
<br />
<br />
<asp:Button ID="btnLeft" runat="server" Text="Button" Visible="False" />
<br />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <asp:Label ID="lblRight" runat="server" Text="Click the button to see the left side"></asp:Label>
    <br />
    <br />
    <asp:Button ID="btnRight" runat="server" Text="Button" />
    <br />
</asp:Content>

