Imports System.Data.OleDb
Partial Class logout
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Session("uid") Is Nothing Then
            Response.Redirect("home.aspx")
        Else
            Session.RemoveAll()
            Response.Redirect("home.aspx")
        End If

    End Sub
End Class
