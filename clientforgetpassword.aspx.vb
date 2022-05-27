Imports System.Data.OleDb
Partial Class clientforgetpassword
    Inherits System.Web.UI.Page
    Dim cn As New OleDbConnection("Provider=Microsoft.ACE.OLEDB.12.0;Data Source=D:\electronic shop\electshop\WebSite1\App_Data\electoshop.accdb;Persist Security Info=True")
    Dim cmd As New OleDbCommand
    Dim dr As OleDbDataReader
    Dim sql As String
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        pnlSub.Visible = False
        pnlmain.Visible = True
        lblErr.Visible = False
    End Sub

    Protected Sub btnSubmit_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnSubmit.Click
        sql = "Select Customerid,Emailid,Contactno from Customer where Emailid='" & txtmail.Text & "'"
        Try
            cn.Open()
            cmd = New OleDbCommand(sql, cn)
            dr = cmd.ExecuteReader
            If dr.HasRows Then
                dr.Read()
                If dr(2) = txtCon.Text Then
                    pnlmain.Visible = False
                    pnlSub.Visible = True
                Else
                    lblErr.Visible = True
                End If
            Else
                lblErr.Visible = True

            End If
            cn.Close()
        Catch ex As Exception
            MsgBox(ex.Message & sql)
        End Try
    End Sub

    Protected Sub btnCancel_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnCancel.Click
        Response.Redirect("login.aspx", False)
    End Sub

    Protected Sub btnChange_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnChange.Click
        sql = "Update Customer set pass='" & txtPass.Text & "' where Emailid='" & txtmail.Text & "'"
        Try
            cn.Open()
            cmd = New OleDbCommand(sql, cn)
            cmd.ExecuteNonQuery()
            MsgBox("Password Updated.")
            cn.Close()
            Response.Redirect("login.aspx", False)
        Catch ex As Exception
            MsgBox(ex.Message)
        End Try
    End Sub

    Protected Sub btnCancel1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnCancel1.Click
        Response.Redirect("login.aspx", False)
    End Sub
End Class
