<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="Checkout.aspx.vb" Inherits="Restricted_Checkout" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
            <asp:BoundField DataField="ID" HeaderText="ID" ReadOnly="True" SortExpression="ID" />
            <asp:BoundField DataField="FName" HeaderText="FName" SortExpression="FName" />
            <asp:BoundField DataField="LName" HeaderText="LName" SortExpression="LName" />
            <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
            <asp:BoundField DataField="Street" HeaderText="Street" SortExpression="Street" />
            <asp:BoundField DataField="State" HeaderText="State" SortExpression="State" />
            <asp:BoundField DataField="Zip" HeaderText="Zip" SortExpression="Zip" />
            <asp:BoundField DataField="Phone" HeaderText="Phone" SortExpression="Phone" />
            <asp:BoundField DataField="CardType" HeaderText="CardType" SortExpression="CardType" />
            <asp:BoundField DataField="CardNumber" HeaderText="CardNumber" SortExpression="CardNumber" />
            <asp:BoundField DataField="Products" HeaderText="Products" SortExpression="Products" />
            <asp:BoundField DataField="Total" HeaderText="Total" SortExpression="Total" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Products.mdf;Integrated Security=True" DeleteCommand="DELETE FROM [ToBe_Shipped] WHERE [ID] = @original_ID AND (([FName] = @original_FName) OR ([FName] IS NULL AND @original_FName IS NULL)) AND (([LName] = @original_LName) OR ([LName] IS NULL AND @original_LName IS NULL)) AND (([City] = @original_City) OR ([City] IS NULL AND @original_City IS NULL)) AND (([Street] = @original_Street) OR ([Street] IS NULL AND @original_Street IS NULL)) AND (([State] = @original_State) OR ([State] IS NULL AND @original_State IS NULL)) AND (([Zip] = @original_Zip) OR ([Zip] IS NULL AND @original_Zip IS NULL)) AND (([Phone] = @original_Phone) OR ([Phone] IS NULL AND @original_Phone IS NULL)) AND (([CardType] = @original_CardType) OR ([CardType] IS NULL AND @original_CardType IS NULL)) AND (([CardNumber] = @original_CardNumber) OR ([CardNumber] IS NULL AND @original_CardNumber IS NULL)) AND (([Products] = @original_Products) OR ([Products] IS NULL AND @original_Products IS NULL)) AND (([Total] = @original_Total) OR ([Total] IS NULL AND @original_Total IS NULL))" InsertCommand="INSERT INTO [ToBe_Shipped] ([ID], [FName], [LName], [City], [Street], [State], [Zip], [Phone], [CardType], [CardNumber], [Products], [Total]) VALUES (@ID, @FName, @LName, @City, @Street, @State, @Zip, @Phone, @CardType, @CardNumber, @Products, @Total)" OldValuesParameterFormatString="original_{0}" ProviderName="System.Data.SqlClient" SelectCommand="SELECT * FROM [ToBe_Shipped]" UpdateCommand="UPDATE [ToBe_Shipped] SET [FName] = @FName, [LName] = @LName, [City] = @City, [Street] = @Street, [State] = @State, [Zip] = @Zip, [Phone] = @Phone, [CardType] = @CardType, [CardNumber] = @CardNumber, [Products] = @Products, [Total] = @Total WHERE [ID] = @original_ID AND (([FName] = @original_FName) OR ([FName] IS NULL AND @original_FName IS NULL)) AND (([LName] = @original_LName) OR ([LName] IS NULL AND @original_LName IS NULL)) AND (([City] = @original_City) OR ([City] IS NULL AND @original_City IS NULL)) AND (([Street] = @original_Street) OR ([Street] IS NULL AND @original_Street IS NULL)) AND (([State] = @original_State) OR ([State] IS NULL AND @original_State IS NULL)) AND (([Zip] = @original_Zip) OR ([Zip] IS NULL AND @original_Zip IS NULL)) AND (([Phone] = @original_Phone) OR ([Phone] IS NULL AND @original_Phone IS NULL)) AND (([CardType] = @original_CardType) OR ([CardType] IS NULL AND @original_CardType IS NULL)) AND (([CardNumber] = @original_CardNumber) OR ([CardNumber] IS NULL AND @original_CardNumber IS NULL)) AND (([Products] = @original_Products) OR ([Products] IS NULL AND @original_Products IS NULL)) AND (([Total] = @original_Total) OR ([Total] IS NULL AND @original_Total IS NULL))">
        <DeleteParameters>
            <asp:Parameter Name="original_ID" Type="Int32" />
            <asp:Parameter Name="original_FName" Type="String" />
            <asp:Parameter Name="original_LName" Type="String" />
            <asp:Parameter Name="original_City" Type="String" />
            <asp:Parameter Name="original_Street" Type="String" />
            <asp:Parameter Name="original_State" Type="String" />
            <asp:Parameter Name="original_Zip" Type="String" />
            <asp:Parameter Name="original_Phone" Type="String" />
            <asp:Parameter Name="original_CardType" Type="String" />
            <asp:Parameter Name="original_CardNumber" Type="String" />
            <asp:Parameter Name="original_Products" Type="String" />
            <asp:Parameter Name="original_Total" Type="Decimal" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="ID" Type="Int32" />
            <asp:Parameter Name="FName" Type="String" />
            <asp:Parameter Name="LName" Type="String" />
            <asp:Parameter Name="City" Type="String" />
            <asp:Parameter Name="Street" Type="String" />
            <asp:Parameter Name="State" Type="String" />
            <asp:Parameter Name="Zip" Type="String" />
            <asp:Parameter Name="Phone" Type="String" />
            <asp:Parameter Name="CardType" Type="String" />
            <asp:Parameter Name="CardNumber" Type="String" />
            <asp:Parameter Name="Products" Type="String" />
            <asp:Parameter Name="Total" Type="Decimal" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="FName" Type="String" />
            <asp:Parameter Name="LName" Type="String" />
            <asp:Parameter Name="City" Type="String" />
            <asp:Parameter Name="Street" Type="String" />
            <asp:Parameter Name="State" Type="String" />
            <asp:Parameter Name="Zip" Type="String" />
            <asp:Parameter Name="Phone" Type="String" />
            <asp:Parameter Name="CardType" Type="String" />
            <asp:Parameter Name="CardNumber" Type="String" />
            <asp:Parameter Name="Products" Type="String" />
            <asp:Parameter Name="Total" Type="Decimal" />
            <asp:Parameter Name="original_ID" Type="Int32" />
            <asp:Parameter Name="original_FName" Type="String" />
            <asp:Parameter Name="original_LName" Type="String" />
            <asp:Parameter Name="original_City" Type="String" />
            <asp:Parameter Name="original_Street" Type="String" />
            <asp:Parameter Name="original_State" Type="String" />
            <asp:Parameter Name="original_Zip" Type="String" />
            <asp:Parameter Name="original_Phone" Type="String" />
            <asp:Parameter Name="original_CardType" Type="String" />
            <asp:Parameter Name="original_CardNumber" Type="String" />
            <asp:Parameter Name="original_Products" Type="String" />
            <asp:Parameter Name="original_Total" Type="Decimal" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>

