Public Class PaginaNaoDesenvolvida
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Private Sub btnImage_Click(sender As Object, e As EventArgs) Handles btnImage.Click

        Response.Redirect("Home.aspx")

    End Sub

End Class