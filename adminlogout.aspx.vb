Imports System.Data.OleDb
Public Class adminlogout
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If (Session("id") Is Nothing) Then
            Response.Redirect("adminlogin.aspx")
        End If
        Session.RemoveAll()
        Response.Redirect("adminlogin.aspx")
    End Sub

End Class
