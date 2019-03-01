Imports System.Data
Imports System.Data.SqlClient
'Imports external classes to be used'


Partial Class Cart
    Inherits System.Web.UI.Page

    Dim ObjDT As System.Data.DataTable
    Dim ObjDR As System.Data.DataRow
    Dim ds As New DataSet
    'A class is created and 3 variables are declared'



    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not IsPostBack Then
            makeCart()
        End If
    End Sub
    'A query statement that checks to see if a page is loaded properly and calls the makeCart() method if it is not'



    Function makeCart()
        ObjDT = New System.Data.DataTable("Cart")
        ObjDT.Columns.Add("Pub_ID", GetType(Int64))

        ObjDT.Columns.Add("Pub_Date", GetType(String))
        ObjDT.Columns.Add("Pub_Price", GetType(Decimal))
        ObjDT.Columns.Add("Pub_Title", GetType(String))
        ObjDT.Columns.Add("Pub_Qty", GetType(Integer))

        Session("Cart") = ObjDT

    End Function
    'A function that adds the required information from the database into a gridview'


    Public Sub DropDownList1_ItemSelected(ByVal sender As Object, ByVal e As System.EventArgs) Handles DropDownList1.SelectedIndexChanged

        Dim intCategory As Integer
        Dim strSQL As String

        Dim strConnection As String = "Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Media.mdf;Integrated Security=True"
        Dim objConnection As New SqlConnection(strConnection)


        intCategory = DropDownList1.SelectedValue
        'A subclass is created with 4 new variables
        'intCategory is assigned the value of the selected dropdown value from the Books gridview
        'strConnection is assigned the value of an external data source
        'objConnection is defined as a new SqlConnection object that holds the value of strConnection



        Select Case intCategory
            Case 0

                GridView1.DataSource = Nothing
                GridView1.DataBind()
                Exit Sub
            Case 1
                strSQL = "SELECT * FROM [Books]"
                lblProd.Visible = True
            Case 2
                strSQL = "SELECT * FROM [Movies]"
                lblProd.Visible = True
        End Select
        'A switch case statement that displays the books gridview, movie gridview, or nothing depending on the value of intCategory


        objConnection.Open()


        Dim objAdapter As New SqlDataAdapter(strSQL, objConnection)
        'A function "Open()" is called through the objConnection variable
        'A new variable objAdapter is declared as an object containing two parameters

        Using objConnection
            Select Case intCategory
                Case 1
                    objAdapter.Fill(ds, "Books")
                Case 2
                    objAdapter.Fill(ds, "Movies")
            End Select
        End Using
        'A case switch statement is used to fill the table for books and movies depending on the value of objConnection

        Session("ds") = ds

        GridView1.DataSource = ds
        GridView1.DataBind()


        objConnection.Close()

    End Sub
    'The subclass is ended after the close method is called from the objConnection variable


    Function AddItemToCart()

        Dim intProductKey, intCurrentKey As Integer
        Dim i As Integer = 0
        Dim blnFound As Boolean = False
        Dim intCategory As Integer
        'A new function is created with 5 new variables
        '3 variables are integers with no value assigned
        '1 integer variable is assigned a value of 0
        '1 variable is declared as type boolean and given a value of false


        ds = Session("ds")

        intProductKey = GridView1.SelectedValue
        ObjDT = Session("Cart")

        For Each ObjDR In ObjDT.Rows
            If ObjDR("Pub_ID") = intProductKey Then
                ObjDR("Pub_Qty") += 1
                blnFound = True
                Exit For
            End If
        Next
        'A for loop that looks to see if intProductKey matches the ID of the selected value within the gridview

        If Not blnFound Then
            ObjDR = ObjDT.NewRow
            ObjDR("Pub_ID") = intProductKey
            ObjDR("Pub_Qty") = 1
            'Conditionals for a scenario where the ID could not be found through the searching algorithm

            intCategory = DropDownList1.SelectedValue
            Select Case intCategory
                Case 1
                    Do While i <= (ds.Tables("Books").Rows.Count - 1)
                        intCurrentKey = ds.Tables("Books").Rows(i).Item("Pub_ID")
                        If intCurrentKey = intProductKey Then
                            ObjDR("Pub_Title") = ds.Tables("Books").Rows(i).Item("Pub_Title")
                            ObjDR("Pub_Price") = ds.Tables("Books").Rows(i).Item("Pub_Price")
                            ObjDR("Pub_Date") = ds.Tables("Books").Rows(i).Item("Pub_Date")
                        End If
                        i += 1
                    Loop
                    'A while loop that inputs the properties for a new book into a new row on the gridview

                Case 2
                    Do While i <= (ds.Tables("Movies").Rows.Count - 1)
                        intCurrentKey = ds.Tables("Movies").Rows(i).Item("Pub_ID")
                        If intCurrentKey = intProductKey Then
                            ObjDR("Pub_Title") = ds.Tables("Movies").Rows(i).Item("Pub_Title")
                            ObjDR("Pub_Price") = ds.Tables("Movies").Rows(i).Item("Pub_Price")
                            ObjDR("Pub_Date") = ds.Tables("Movies").Rows(i).Item("Pub_Date")
                        End If
                        i += 1
                    Loop
                    'A while loop that inputs the properties for a new book into a new row on the gridview

            End Select
            'A case switch statement that condsiders a case for the Movies table and the Books table

            ObjDT.Rows.Add(ObjDR)

        End If

        Session("Cart") = ObjDT

    End Function

    Function ShowItemsInCart()

        ObjDT = Session("Cart")
        GridView2.DataSource = ObjDT
        GridView2.DataBind()

    End Function
    'A function that displays the items currently contained in the cart

    Function ShowCartTotal()
        lblTotal.Visible = True
        lblAmount.Visible = True
        btnCheckOut.Visible = True
        lblAmount.Text = "$" & GetItemTotals()
        lblTotal.Text = "Total:"
    End Function
    'A function that displays a number that represents the total number of items in a cart

    Function CloseCartTotal()
        lblTotal.Visible = False
        lblAmount.Visible = False
        btnCheckOut.Visible = False
        lblTotal.Text = ""
    End Function
    'A function that makes the number shown by ShowCartTotal() invisible on the web page

    Function GetItemTotals()

        Dim intCounter As Integer
        Dim decRunningTotal As Decimal
        ObjDT = Session("Cart")

        For intCounter = 0 To ObjDT.Rows.Count - 1
            ObjDR = ObjDT.Rows(intCounter)
            decRunningTotal += (ObjDR("Pub_Price") * ObjDR("Pub_Qty"))
        Next
        'A for loop that multiples the price and quantity from each table row

        Return decRunningTotal

    End Function
    'A function that multiplies the price of all items in the cart by the quantity of those items and displays
    'the total price of them


    Protected Sub GridView1_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles GridView1.SelectedIndexChanged
        AddItemToCart()
        ShowItemsInCart()
        ShowCartTotal()
    End Sub
    'A subclass that calls 3 different functions


    Protected Sub GridView2_RowDeleting(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewDeleteEventArgs) Handles GridView2.RowDeleting
        ObjDT = Session("Cart")
        Dim i As Integer = 0


        For Each ObjDR In ObjDT.Rows
            If i = e.RowIndex Then
                If ObjDR("Pub_Qty") = 1 Then
                    ObjDT.Rows.Item(e.RowIndex).Delete()
                    Exit For
                Else
                    ObjDR("Pub_Qty") -= 1
                    Exit For
                End If
            End If
            i += 1
        Next
        'A for each loop that traverses through the gridview to find the value that a user has selected
        'contained in the Pub_Qty variable

        Session("Cart") = ObjDT

        If ObjDT.Rows.Count >= 1 Then
            ShowItemsInCart()
            ShowCartTotal()
        Else
            ShowItemsInCart()
            CloseCartTotal()
        End If


    End Sub
    'A subclass that deletes a row from the gridview

    Protected Sub btnCheckOut_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnCheckOut.Click
        Server.Transfer("~/CheckOut.aspx")
    End Sub
    'Submits all gathered information when the user clicks the submit button at the bottom of the page
End Class


