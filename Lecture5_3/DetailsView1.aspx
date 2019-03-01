<%@ Page Language="VB" AutoEventWireup="false" CodeFile="DetailsView1.aspx.vb" Inherits="DetailsView1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="125px" AllowPaging="True" AutoGenerateRows="False" DataKeyNames="Pub_ID" DataSourceID="SqlDataSource1">
            <Fields>
                <asp:BoundField DataField="Pub_ID" HeaderText="Pub_ID" SortExpression="Pub_ID" />
                <asp:BoundField DataField="Pub_Title" HeaderText="Pub_Title" SortExpression="Pub_Title" />
                <asp:BoundField DataField="Pub_Date" HeaderText="Pub_Date" SortExpression="Pub_Date" />
                <asp:BoundField DataField="Pub_Price" HeaderText="Pub_Price" SortExpression="Pub_Price" />
                <asp:BoundField DataField="Pub_Quantity" HeaderText="Pub_Quantity" SortExpression="Pub_Quantity" />
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
            </Fields>
        </asp:DetailsView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            DeleteCommand="DELETE FROM [Movies] WHERE [Pub_ID] = @original_Pub_ID AND (([Pub_Title] = @original_Pub_Title) OR ([Pub_Title] IS NULL AND @original_Pub_Title IS NULL)) AND (([Pub_Date] = @original_Pub_Date) OR ([Pub_Date] IS NULL AND @original_Pub_Date IS NULL)) AND (([Pub_Price] = @original_Pub_Price) OR ([Pub_Price] IS NULL AND @original_Pub_Price IS NULL)) AND (([Pub_Quantity] = @original_Pub_Quantity) OR ([Pub_Quantity] IS NULL AND @original_Pub_Quantity IS NULL))" 
            InsertCommand="INSERT INTO [Movies] ([Pub_ID], [Pub_Title], [Pub_Date], [Pub_Price], [Pub_Quantity]) VALUES (@Pub_ID, @Pub_Title, @Pub_Date, @Pub_Price, @Pub_Quantity)" 
            OldValuesParameterFormatString="original_{0}" 
            SelectCommand="SELECT [Pub_ID], [Pub_Title], [Pub_Date], [Pub_Price], [Pub_Quantity] FROM [Movies]" 
            UpdateCommand="UPDATE [Movies] SET [Pub_ID] = @Pub_ID, [Pub_Title] = @Pub_Title, [Pub_Date] = @Pub_Date, [Pub_Price] = @Pub_Price, [Pub_Quantity] = @Pub_Quantity WHERE [Pub_ID] = @original_Pub_ID AND (([Pub_Title] = @original_Pub_Title) OR ([Pub_Title] IS NULL AND @original_Pub_Title IS NULL)) AND (([Pub_Date] = @original_Pub_Date) OR ([Pub_Date] IS NULL AND @original_Pub_Date IS NULL)) AND (([Pub_Price] = @original_Pub_Price) OR ([Pub_Price] IS NULL AND @original_Pub_Price IS NULL)) AND (([Pub_Quantity] = @original_Pub_Quantity) OR ([Pub_Quantity] IS NULL AND @original_Pub_Quantity IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_Pub_ID" Type="Int32" />
                <asp:Parameter Name="original_Pub_Title" Type="String" />
                <asp:Parameter Name="original_Pub_Date" Type="String" />
                <asp:Parameter Name="original_Pub_Price" Type="String" />
                <asp:Parameter Name="original_Pub_Quantity" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Pub_ID" Type="Int32" />
                <asp:Parameter Name="Pub_Title" Type="String" />
                <asp:Parameter Name="Pub_Date" Type="String" />
                <asp:Parameter Name="Pub_Price" Type="String" />
                <asp:Parameter Name="Pub_Quantity" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Pub_ID" Type="Int32" />
                <asp:Parameter Name="Pub_Title" Type="String" />
                <asp:Parameter Name="Pub_Date" Type="String" />
                <asp:Parameter Name="Pub_Price" Type="String" />
                <asp:Parameter Name="Pub_Quantity" Type="String" />
                <asp:Parameter Name="original_Pub_ID" Type="Int32" />
                <asp:Parameter Name="original_Pub_Title" Type="String" />
                <asp:Parameter Name="original_Pub_Date" Type="String" />
                <asp:Parameter Name="original_Pub_Price" Type="String" />
                <asp:Parameter Name="original_Pub_Quantity" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <br />
        <br />
        <asp:Label ID="lblError" runat="server" Text="The Product ID you chose is already being used. Please try another value." Font-Size="Large" ForeColor="Red"></asp:Label>
    </div>
    </form>
</body>
</html>
