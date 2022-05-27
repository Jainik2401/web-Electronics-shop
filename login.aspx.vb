Imports System.Data.OleDb
Partial Class login
    Inherits System.Web.UI.Page
    Dim cn As New OleDbConnection
    Dim dr As OleDbDataReader

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        loginError.Visible = False
        cn.ConnectionString = "Provider=Microsoft.ACE.OLEDB.12.0;Data Source=D:\electronic shop\electshop\WebSite1\App_Data\electoshop.accdb;Persist Security Info=True"
    End Sub
    Protected Sub btnlogin_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnlogin.Click
      
        Try
            Dim str As String
            Dim pwd As String
            Dim usr As Integer
            Dim usr1 As String
            str = "select Customerid,Username,pass from Customer where Username='" & txtuname.Text & "'"
            Dim cmd As New OleDbCommand(str, cn)
            cn.Open()
            dr = cmd.ExecuteReader
            If dr.HasRows Then
                dr.Read()
                usr = dr.Item(0)
                usr1 = dr.Item(1).ToString
                pwd = dr.Item(2).ToString
                If (pwd = txtpwd.Text) Then
                    Session("uid") = usr
                    Response.Redirect("home.aspx")
                    cn.Close()
                Else
                    loginError.Visible = True
                End If
            Else
                loginError.Visible = True

            End If
            clear()
        Catch ex As Exception

        End Try

    End Sub
    Public Sub clear()
        txtpwd.Text = ""
        txtuname.Text = ""
    End Sub

    Protected Sub btnsignup_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnsignup.Click
        Response.Redirect("signup.aspx", False)
    End Sub

    Protected Sub btnf_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnf.Click
        Response.Redirect("clientforgetpassword.aspx")
    End Sub
End Class
