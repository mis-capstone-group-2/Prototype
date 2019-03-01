
Partial Class Lecture2_1
    Inherits System.Web.UI.Page

    Dim MyList(3) As String

    Private Sub form1_Load(sender As Object, e As EventArgs) Handles form1.Load
        MyList(0) = "Ford"
        MyList(1) = "Chevrolet"
        MyList(2) = "Ferrari"
        MyList(3) = "Porsche"
    End Sub


    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Dim i As Integer = 0
        For i = 0 To 3
            ListBox1.Items.Add(MyList(i))
        Next
    End Sub

    Protected Sub ListBox1_SelectedIndexChanged(sender As Object, e As EventArgs) Handles ListBox1.SelectedIndexChanged
        Label1.Text = "You selected " + ListBox1.SelectedItem.Value
    End Sub
End Class
