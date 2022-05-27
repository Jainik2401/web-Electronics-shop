Imports System.Data.OleDb
Public Class adminlogin
    Inherits System.Web.UI.Page
    Dim cn As New OleDbConnection
    Dim cmd As New OleDbCommand
    Dim dr As OleDbDataReader
    Dim admin, pass As String
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        loginError.Text = ""

    End Sub

    Protected Sub btnlogin_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnlogin.Click
        cn.ConnectionString = "Provider=Microsoft.ACE.OLEDB.12.0;Data Source=D:\electronic shop\electshop\WebSite1\App_Data\electoshop.accdb"
        cn.Open()
        Try
            cmd = New OleDbCommand("select Username,pass from Adminsite where Username='" & txtuname.Text & "'", cn)
            dr = cmd.ExecuteReader()
            If dr.Read Then
                admin = dr("Username").ToString()
                pass = dr("pass").ToString()
                If (txtpwd.Text = pass) Then
                    cn.Close()
                    Response.Redirect("product.aspx", False)
                    Session("id") = admin
                Else
                    loginError.Text = "Invalid Username or Password"
                End If
            Else
                loginError.Text = "Invalid Usernamme or password"
            End If
        Catch ex As Exception
            MsgBox(ex.Message)
        End Try

    End Sub
End Class
