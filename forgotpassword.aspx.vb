Imports System.Data.OleDb
Imports System.Data
Public Class forgotpassword
    Inherits System.Web.UI.Page
    Dim cn As New OleDbConnection
    Dim dr As OleDbDataReader
    Dim cmd As New OleDbCommand
    Dim number As String
    Dim sql As String

    Protected Sub btnverify_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnverify.Click

        Try
            cn.Open()
            cmd = New OleDbCommand("select Mobilenumber from Adminsite where Username='" & txtUser.Text & "'", cn)
            dr = cmd.ExecuteReader()
            If dr.Read Then
                number = dr("Mobilenumber").ToString()
                If (txtmnumber.Text = number) Then
                    cn.Close()
                    panelpwd.Visible = True

                    loginError.Text = ""
                Else
                    loginError.Text = "Invalid Username or number."
                End If
            Else
                loginError.Text = "Invalid Username or number."
            End If

        Catch ex As Exception
            MsgBox(ex.ToString)
        End Try
    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        cn.ConnectionString = "Provider=Microsoft.ACE.OLEDB.12.0;Data Source=D:\electronic shop\electshop\WebSite1\App_Data\electoshop.accdb ;Persist Security Info=True"
        panelpwd.Visible = False
    End Sub

    Protected Sub btnupwd_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnupwd.Click

        sql = "update Adminsite set pass='" & txtnpwd.Text & "' where Username='" & txtUser.Text & "'"
        Try
            cn.Open()
            cmd = New OleDbCommand(Sql, cn)
            cmd.ExecuteNonQuery()
            MsgBox("Password Updated.")
            cn.Close()
            Response.Redirect("adminlogin.aspx", False)
        Catch ex As Exception
            MsgBox(ex.Message)
        End Try

    End Sub
End Class
