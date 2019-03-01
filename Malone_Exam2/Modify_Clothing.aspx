<%@ Page Title="" Language="VB" MasterPageFile="~/MasterP.master" AutoEventWireup="false" CodeFile="Modify_Clothing.aspx.vb" Inherits="Modify_Clothing" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="Prod_Desc" DataValueField="Prod_Desc"></asp:DropDownList>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Prod_Desc] FROM [Clothing]"></asp:SqlDataSource>
    <br /><br />
    <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="125px" AllowPaging="True" AutoGenerateRows="False" DataKeyNames="Prod_ID" DataSourceID="SqlDataSource1">
        <Fields>
            <asp:BoundField DataField="Prod_ID" HeaderText="Prod_ID" InsertVisible="False" ReadOnly="True" SortExpression="Prod_ID" />
            <asp:BoundField DataField="Prod_Desc" HeaderText="Prod_Desc" SortExpression="Prod_Desc" />
            <asp:BoundField DataField="Prod_Price" HeaderText="Prod_Price" SortExpression="Prod_Price" />
            <asp:BoundField DataField="Prod_Qty" HeaderText="Prod_Qty" SortExpression="Prod_Qty" />
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
        </Fields>
    </asp:DetailsView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Clothing] WHERE [Prod_ID] = @original_Prod_ID AND (([Prod_Desc] = @original_Prod_Desc) OR ([Prod_Desc] IS NULL AND @original_Prod_Desc IS NULL)) AND (([Prod_Price] = @original_Prod_Price) OR ([Prod_Price] IS NULL AND @original_Prod_Price IS NULL)) AND (([Prod_Qty] = @original_Prod_Qty) OR ([Prod_Qty] IS NULL AND @original_Prod_Qty IS NULL))" InsertCommand="INSERT INTO [Clothing] ([Prod_Desc], [Prod_Price], [Prod_Qty]) VALUES (@Prod_Desc, @Prod_Price, @Prod_Qty)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [Prod_ID], [Prod_Desc], [Prod_Price], [Prod_Qty] FROM [Clothing]" UpdateCommand="UPDATE [Clothing] SET [Prod_Desc] = @Prod_Desc, [Prod_Price] = @Prod_Price, [Prod_Qty] = @Prod_Qty WHERE [Prod_ID] = @original_Prod_ID AND (([Prod_Desc] = @original_Prod_Desc) OR ([Prod_Desc] IS NULL AND @original_Prod_Desc IS NULL)) AND (([Prod_Price] = @original_Prod_Price) OR ([Prod_Price] IS NULL AND @original_Prod_Price IS NULL)) AND (([Prod_Qty] = @original_Prod_Qty) OR ([Prod_Qty] IS NULL AND @original_Prod_Qty IS NULL))">
        <DeleteParameters>
            <asp:Parameter Name="original_Prod_ID" Type="Int32" />
            <asp:Parameter Name="original_Prod_Desc" Type="String" />
            <asp:Parameter Name="original_Prod_Price" Type="String" />
            <asp:Parameter Name="original_Prod_Qty" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Prod_Desc" Type="String" />
            <asp:Parameter Name="Prod_Price" Type="String" />
            <asp:Parameter Name="Prod_Qty" Type="Int32" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Prod_Desc" Type="String" />
            <asp:Parameter Name="Prod_Price" Type="String" />
            <asp:Parameter Name="Prod_Qty" Type="Int32" />
            <asp:Parameter Name="original_Prod_ID" Type="Int32" />
            <asp:Parameter Name="original_Prod_Desc" Type="String" />
            <asp:Parameter Name="original_Prod_Price" Type="String" />
            <asp:Parameter Name="original_Prod_Qty" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="ContentPlaceHolder4" Runat="Server">
</asp:Content>

