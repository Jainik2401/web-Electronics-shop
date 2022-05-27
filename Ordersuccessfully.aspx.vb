
Partial Class Ordersuccessfully
    Inherits System.Web.UI.Page

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        Session("buyitems") = Nothing
        Response.Redirect("home.aspx")
    End Sub
End Class
