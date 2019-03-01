<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="Movies.aspx.vb" Inherits="Movies" %>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">

    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="Movie_Title" HeaderText="Movie_Title" SortExpression="Movie_Title" />
            <asp:BoundField DataField="Movie_Pub_Date" HeaderText="Movie_Pub_Date" SortExpression="Movie_Pub_Date" />
            <asp:BoundField DataField="Movie_Price" HeaderText="Movie_Price" SortExpression="Movie_Price" />
            <asp:BoundField DataField="Movie_Qty" HeaderText="Movie_Qty" SortExpression="Movie_Qty" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Movie_Title], [Movie_Pub_Date], [Movie_Price], [Movie_Qty] FROM [Movies]"></asp:SqlDataSource>

</asp:Content>

