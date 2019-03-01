<%@ Page Title="" Language="VB" Theme="Theme1" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="ContentPage.aspx.vb" Inherits="ContentPage" %>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Label ID="lblLeft" runat="server" Text="This label uses a CssClass" Visible="False" CssClass="labels"></asp:Label>
    <br />
    <br />
    <asp:Button ID="btnLeft" runat="server" Text="This button uses a default skin" Visible="False" ForeColor="Yellow" />
    <br />
    <br />
    <asp:Calendar ID="calLeft" runat="server" SkinID="calGreen" Visible="False"></asp:Calendar>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <asp:Label ID="lblRight" runat="server" Text="This label uses a CssClass" CssClass="labels"></asp:Label>
    <br />
    <br />
    <asp:Button ID="btnRight" runat="server" Text="This button uses a default skin" ForeColor="Blue"/>
    <br />
    <br />
    <asp:Calendar ID="calRight" runat="server" SkinID="calBlue"></asp:Calendar>
</asp:Content>

