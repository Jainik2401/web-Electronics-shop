Imports System.Data.OleDb
Partial Class order
    Inherits System.Web.UI.Page
    Dim cn As New OleDbConnection("Provider=Microsoft.ACE.OLEDB.12.0;Data Source=D:\electronic shop\electshop\WebSite1\App_Data\electoshop.accdb")
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Session("id") Is Nothing Then
            Response.Redirect("adminlogin.aspx")
        End If
    End Sub
End Class
