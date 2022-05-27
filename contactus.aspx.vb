Imports System.Data.OleDb
Partial Class contactus
    Inherits System.Web.UI.Page
    Dim cn As New OleDbConnection("Provider=Microsoft.ACE.OLEDB.12.0;Data Source=D:\electronic shop\electshop\WebSite1\App_Data\electoshop.accdb;Persist Security Info=True")
    Dim cmd As New OleDbCommand
    Dim sql As String
    Dim dr As OleDbDataReader
    Dim qid As Integer = 1
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub btnsend_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnsend.Click

        If (Session("uid") Is Nothing) Then
            Response.Redirect("login.aspx", False)
        Else
            sql = "select max(Queryid) as qid from query"
            Try
                cn.Open()
                cmd = New OleDbCommand(sql, cn)
                dr = cmd.ExecuteReader
                dr.Read()
                qid = dr(0) + 1
                sql = "insert into query values(" & qid & "," & Session("uid") & ",'" & txtname.Text & "','" & txtemail.Text & "','" & txtphoneno.Text & "','" & txtmsg.Text & "')"
                Try
                    cmd = New OleDbCommand(sql, cn)
                    cmd.ExecuteNonQuery()
                    MsgBox("Response Submitted")
                    Response.Redirect("home.aspx", False)
                Catch ex As Exception
                    MsgBox(ex.Message & sql)
                End Try
                cn.Close()
                txtname.Text = ""
                txtemail.Text = ""
                txtmsg.Text = ""
                txtphoneno.Text = ""
            Catch ex As Exception

                MsgBox(ex.Message)
            End Try
        End If
    End Sub
End Class
