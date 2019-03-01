
Partial Class ContentPage
    Inherits System.Web.UI.Page

    Protected Sub btnLeft_Click(sender As Object, e As EventArgs) Handles btnLeft.Click
        btnLeft.Visible = False
        lblLeft.Visible = False
        btnRight.Visible = True
        lblRight.Visible = True
    End Sub


    Protected Sub btnRight_Click(sender As Object, e As EventArgs) Handles btnRight.Click
        btnLeft.Visible = True
        lblLeft.Visible = True
        btnRight.Visible = False
        lblRight.Visible = False
    End Sub
End Class
