
Partial Class TwoControls
    Inherits System.Web.UI.Page

    Private Sub SqlDataSource2_Deleted(sender As Object, e As SqlDataSourceStatusEventArgs) Handles SqlDataSource2.Deleted
        DropDownList1.DataBind()
    End Sub

    Private Sub SqlDataSource2_Updated(sender As Object, e As SqlDataSourceStatusEventArgs) Handles SqlDataSource2.Updated
        DropDownList1.DataBind()
    End Sub
End Class
