<%@ Page Language="VB" AutoEventWireup="false" CodeFile="DetailsView2.aspx.vb" Inherits="DetailsView2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:DetailsView ID="DetailsView1" runat="server" AllowPaging="True" AutoGenerateRows="False" DataKeyNames="Pub_ID" DataSourceID="SqlDataSource1" Height="50px" Width="125px">
            <Fields>
                <asp:TemplateField HeaderText="Pub_ID" SortExpression="Pub_ID">
                    <EditItemTemplate>
                        <asp:Label 
                            ID="Label1" 
                            runat="server" 
                            Text='<%# Bind("Pub_ID") %>'>
                        </asp:Label>
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        <asp:TextBox 
                            ID="TextBox1" 
                            runat="server" 
                            Text='<%# Bind("Pub_ID") %>'>
                        </asp:TextBox>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("Pub_ID") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Pub_Title" SortExpression="Pub_Title">
                    <EditItemTemplate>
                        <asp:TextBox 
                            ID="TextBox1" 
                            runat="server" 
                            Text='<%# Bind("Pub_Title") %>'>
                        </asp:TextBox>
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        <asp:TextBox 
                            ID="TextBox2" 
                            runat="server" 
                            Text='<%# Bind("Pub_Title") %>'>
                        </asp:TextBox>
                        <asp:RequiredFieldValidator 
                            ID="RequiredFieldValidator1" 
                            runat="server" 
                            ControlToValidate ="TextBox2"
                            ErrorMessage="RequiredFieldValidator"
                            Display ="Dynamic"
                            EnableClientScript ="false"
                            Font-Bold="true"
                            ForeColor="red"
                            Text = "This field is required">
                        </asp:RequiredFieldValidator>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <asp:Label 
                            ID="Label2" 
                            runat="server" 
                            Text='<%# Bind("Pub_Title") %>'>
                        </asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Pub_Date" SortExpression="Pub_Date">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("Pub_Date") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("Pub_Date") %>'></asp:TextBox>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label3" runat="server" Text='<%# Bind("Pub_Date") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Pub_Price" SortExpression="Pub_Price">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("Pub_Price") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("Pub_Price") %>'></asp:TextBox>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label4" runat="server" Text='<%# Bind("Pub_Price") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Pub_Quantity" SortExpression="Pub_Quantity">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("Pub_Quantity") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("Pub_Quantity") %>'></asp:TextBox>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label5" runat="server" Text='<%# Bind("Pub_Quantity") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
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
    <br /><br />
        <asp:Label ID="lblError" runat="server" Text="The Product ID you chose is already being used. Please try another value." Font-Size="Large" ForeColor="Red"></asp:Label>
    </div>
    </form>
</body>
</html>
