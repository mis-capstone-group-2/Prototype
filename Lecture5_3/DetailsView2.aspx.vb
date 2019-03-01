
Partial Class DetailsView2
    Inherits System.Web.UI.Page
    Private Sub DetailsView1_ItemInserted(sender As Object, e As DetailsViewInsertedEventArgs) Handles DetailsView1.ItemInserted
        lblError.Visible = False
        If Not IsNothing(e.Exception) Then
            e.ExceptionHandled = True
            e.KeepInInsertMode = True
            lblError.Visible = True
        Else
            lblError.Visible = False
        End If
    End Sub

    Private Sub DetailsView1_ItemUpdated(sender As Object, e As DetailsViewUpdatedEventArgs) Handles DetailsView1.ItemUpdated
        lblError.Visible = False
        If Not IsNothing(e.Exception) Then
            e.ExceptionHandled = True
            e.KeepInEditMode = True
            lblError.Visible = True
        Else
            lblError.Visible = False
        End If
    End Sub
End Class
