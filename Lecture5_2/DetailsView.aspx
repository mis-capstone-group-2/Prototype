<%@ Page Language="VB" AutoEventWireup="false" CodeFile="DetailsView.aspx.vb" Inherits="DetailsView" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="125px" AutoGenerateRows="False" DataKeyNames="Book_ID" DataSourceID="SqlDataSource1" DefaultMode="Insert">
            <Fields>
                <asp:BoundField DataField="Book_ID" HeaderText="Book_ID" InsertVisible="False" ReadOnly="True" SortExpression="Book_ID" />
                <asp:BoundField DataField="Book_Title" HeaderText="Book_Title" SortExpression="Book_Title" />
                <asp:BoundField DataField="Book_Pub_Date" HeaderText="Book_Pub_Date" SortExpression="Book_Pub_Date" />
                <asp:BoundField DataField="Book Price" HeaderText="Book Price" SortExpression="Book Price" />
                <asp:BoundField DataField="Book_Quantity" HeaderText="Book_Quantity" SortExpression="Book_Quantity" />
                <asp:CommandField ShowInsertButton="True" />
            </Fields>
        </asp:DetailsView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Books] WHERE [Book_ID] = @original_Book_ID AND (([Book_Title] = @original_Book_Title) OR ([Book_Title] IS NULL AND @original_Book_Title IS NULL)) AND (([Book_Pub_Date] = @original_Book_Pub_Date) OR ([Book_Pub_Date] IS NULL AND @original_Book_Pub_Date IS NULL)) AND (([Book Price] = @original_Book_Price) OR ([Book Price] IS NULL AND @original_Book_Price IS NULL)) AND (([Book_Quantity] = @original_Book_Quantity) OR ([Book_Quantity] IS NULL AND @original_Book_Quantity IS NULL))" InsertCommand="INSERT INTO [Books] ([Book_Title], [Book_Pub_Date], [Book Price], [Book_Quantity]) VALUES (@Book_Title, @Book_Pub_Date, @Book_Price, @Book_Quantity)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Books]" UpdateCommand="UPDATE [Books] SET [Book_Title] = @Book_Title, [Book_Pub_Date] = @Book_Pub_Date, [Book Price] = @Book_Price, [Book_Quantity] = @Book_Quantity WHERE [Book_ID] = @original_Book_ID AND (([Book_Title] = @original_Book_Title) OR ([Book_Title] IS NULL AND @original_Book_Title IS NULL)) AND (([Book_Pub_Date] = @original_Book_Pub_Date) OR ([Book_Pub_Date] IS NULL AND @original_Book_Pub_Date IS NULL)) AND (([Book Price] = @original_Book_Price) OR ([Book Price] IS NULL AND @original_Book_Price IS NULL)) AND (([Book_Quantity] = @original_Book_Quantity) OR ([Book_Quantity] IS NULL AND @original_Book_Quantity IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_Book_ID" Type="Int32" />
                <asp:Parameter Name="original_Book_Title" Type="String" />
                <asp:Parameter Name="original_Book_Pub_Date" Type="String" />
                <asp:Parameter Name="original_Book_Price" Type="String" />
                <asp:Parameter Name="original_Book_Quantity" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Book_Title" Type="String" />
                <asp:Parameter Name="Book_Pub_Date" Type="String" />
                <asp:Parameter Name="Book_Price" Type="String" />
                <asp:Parameter Name="Book_Quantity" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Book_Title" Type="String" />
                <asp:Parameter Name="Book_Pub_Date" Type="String" />
                <asp:Parameter Name="Book_Price" Type="String" />
                <asp:Parameter Name="Book_Quantity" Type="Int32" />
                <asp:Parameter Name="original_Book_ID" Type="Int32" />
                <asp:Parameter Name="original_Book_Title" Type="String" />
                <asp:Parameter Name="original_Book_Pub_Date" Type="String" />
                <asp:Parameter Name="original_Book_Price" Type="String" />
                <asp:Parameter Name="original_Book_Quantity" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </div>
    </form>
</body>
</html>
