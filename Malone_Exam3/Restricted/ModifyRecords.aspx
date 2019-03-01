﻿<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="ModifyRecords.aspx.vb" Inherits="Restricted_ModifyRecords" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <table style="width 100%">
        <tr>
            <td>
                <h3>Books</h3>
            </td>
            <td>
                <h3>Movies</h3>
            </td>
        </tr>
        <tr>
            <td>

                <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="125px" AllowPaging="True" AutoGenerateRows="False" DataKeyNames="Pub_ID" DataSourceID="SqlDataSource1">
                    <Fields>
                        <asp:BoundField DataField="Pub_ID" HeaderText="Pub_ID" InsertVisible="False" ReadOnly="True" SortExpression="Pub_ID" />
                        <asp:BoundField DataField="Pub_Title" HeaderText="Pub_Title" SortExpression="Pub_Title" />
                        <asp:BoundField DataField="Pub_Date" HeaderText="Pub_Date" SortExpression="Pub_Date" />
                        <asp:BoundField DataField="Pub_Price" HeaderText="Pub_Price" SortExpression="Pub_Price" />
                        <asp:BoundField DataField="Pub_Qty" HeaderText="Pub_Qty" SortExpression="Pub_Qty" />
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
                    </Fields>
                </asp:DetailsView>

                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Books] WHERE [Pub_ID] = @original_Pub_ID AND [Pub_Title] = @original_Pub_Title AND [Pub_Date] = @original_Pub_Date AND [Pub_Price] = @original_Pub_Price AND [Pub_Qty] = @original_Pub_Qty" InsertCommand="INSERT INTO [Books] ([Pub_Title], [Pub_Date], [Pub_Price], [Pub_Qty]) VALUES (@Pub_Title, @Pub_Date, @Pub_Price, @Pub_Qty)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Books]" UpdateCommand="UPDATE [Books] SET [Pub_Title] = @Pub_Title, [Pub_Date] = @Pub_Date, [Pub_Price] = @Pub_Price, [Pub_Qty] = @Pub_Qty WHERE [Pub_ID] = @original_Pub_ID AND [Pub_Title] = @original_Pub_Title AND [Pub_Date] = @original_Pub_Date AND [Pub_Price] = @original_Pub_Price AND [Pub_Qty] = @original_Pub_Qty">
                    <DeleteParameters>
                        <asp:Parameter Name="original_Pub_ID" Type="Int32" />
                        <asp:Parameter Name="original_Pub_Title" Type="String" />
                        <asp:Parameter Name="original_Pub_Date" Type="String" />
                        <asp:Parameter Name="original_Pub_Price" Type="String" />
                        <asp:Parameter Name="original_Pub_Qty" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="Pub_Title" Type="String" />
                        <asp:Parameter Name="Pub_Date" Type="String" />
                        <asp:Parameter Name="Pub_Price" Type="String" />
                        <asp:Parameter Name="Pub_Qty" Type="Int32" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="Pub_Title" Type="String" />
                        <asp:Parameter Name="Pub_Date" Type="String" />
                        <asp:Parameter Name="Pub_Price" Type="String" />
                        <asp:Parameter Name="Pub_Qty" Type="Int32" />
                        <asp:Parameter Name="original_Pub_ID" Type="Int32" />
                        <asp:Parameter Name="original_Pub_Title" Type="String" />
                        <asp:Parameter Name="original_Pub_Date" Type="String" />
                        <asp:Parameter Name="original_Pub_Price" Type="String" />
                        <asp:Parameter Name="original_Pub_Qty" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>

            </td>
            <td>

                <asp:DetailsView ID="DetailsView2" runat="server" AllowPaging="True" AutoGenerateRows="False" DataKeyNames="Pub_ID" DataSourceID="SqlDataSource2" Height="50px" Width="125px">
                    <Fields>
                        <asp:BoundField DataField="Pub_ID" HeaderText="Pub_ID" InsertVisible="False" ReadOnly="True" SortExpression="Pub_ID" />
                        <asp:BoundField DataField="Pub_Title" HeaderText="Pub_Title" SortExpression="Pub_Title" />
                        <asp:BoundField DataField="Pub_Date" HeaderText="Pub_Date" SortExpression="Pub_Date" />
                        <asp:BoundField DataField="Pub_Price" HeaderText="Pub_Price" SortExpression="Pub_Price" />
                        <asp:BoundField DataField="Pub_Qty" HeaderText="Pub_Qty" SortExpression="Pub_Qty" />
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
                    </Fields>
                </asp:DetailsView>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Movies] WHERE [Pub_ID] = @original_Pub_ID AND [Pub_Title] = @original_Pub_Title AND [Pub_Date] = @original_Pub_Date AND [Pub_Price] = @original_Pub_Price AND [Pub_Qty] = @original_Pub_Qty" InsertCommand="INSERT INTO [Movies] ([Pub_Title], [Pub_Date], [Pub_Price], [Pub_Qty]) VALUES (@Pub_Title, @Pub_Date, @Pub_Price, @Pub_Qty)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Movies]" UpdateCommand="UPDATE [Movies] SET [Pub_Title] = @Pub_Title, [Pub_Date] = @Pub_Date, [Pub_Price] = @Pub_Price, [Pub_Qty] = @Pub_Qty WHERE [Pub_ID] = @original_Pub_ID AND [Pub_Title] = @original_Pub_Title AND [Pub_Date] = @original_Pub_Date AND [Pub_Price] = @original_Pub_Price AND [Pub_Qty] = @original_Pub_Qty">
                    <DeleteParameters>
                        <asp:Parameter Name="original_Pub_ID" Type="Int32" />
                        <asp:Parameter Name="original_Pub_Title" Type="String" />
                        <asp:Parameter Name="original_Pub_Date" Type="String" />
                        <asp:Parameter Name="original_Pub_Price" Type="String" />
                        <asp:Parameter Name="original_Pub_Qty" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="Pub_Title" Type="String" />
                        <asp:Parameter Name="Pub_Date" Type="String" />
                        <asp:Parameter Name="Pub_Price" Type="String" />
                        <asp:Parameter Name="Pub_Qty" Type="Int32" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="Pub_Title" Type="String" />
                        <asp:Parameter Name="Pub_Date" Type="String" />
                        <asp:Parameter Name="Pub_Price" Type="String" />
                        <asp:Parameter Name="Pub_Qty" Type="Int32" />
                        <asp:Parameter Name="original_Pub_ID" Type="Int32" />
                        <asp:Parameter Name="original_Pub_Title" Type="String" />
                        <asp:Parameter Name="original_Pub_Date" Type="String" />
                        <asp:Parameter Name="original_Pub_Price" Type="String" />
                        <asp:Parameter Name="original_Pub_Qty" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>

            </td>
        </tr>
    </table>
</asp:Content>
