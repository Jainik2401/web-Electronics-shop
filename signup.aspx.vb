Imports System.Data.OleDb
Partial Class signup
    Inherits System.Web.UI.Page
    Dim cn As New OleDbConnection("Provider=Microsoft.ACE.OLEDB.12.0;Data Source=D:\electronic shop\electshop\WebSite1\App_Data\electoshop.accdb")
    Dim dr As OleDbDataReader
    Dim cmd As New OleDbCommand
    Dim cust_idnew As Integer = 1
    Dim Customerid As Integer = 1
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        Try
            cn.Open()
            cmd = New OleDbCommand("select Customerid from Customer ", cn)
            dr = cmd.ExecuteReader()
            While dr.Read
                cust_idnew = dr.Item(0) + 1
                txtcid.Text = cust_idnew
            End While
            cn.Close()
        Catch ex As Exception
            MsgBox(ex.Message)
        End Try
    End Sub
    Protected Sub btnregister_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnregister.Click
        Try
            Dim str As String
            Dim ans As Integer

            str = "insert into Customer values(" & cust_idnew & ",'" & txtfname.Text & "','" & txtlname.Text & " ','" & txtcno.Text & "','" & txtadd.Text & "'," & txtpincode.Text & ",'" & txtemailid.Text & "','" & txtuname.Text & "','" & txtpwd.Text & "','" & "~\photos\" & cusimg.FileName.ToString & "')"
            cn.Open()
            Dim cmd As New OleDbCommand(str, cn)
            ans = cmd.ExecuteNonQuery
            MsgBox("Insertion Sucessfully ", ans)
            clear()
            cn.Close()
        Catch ex As Exception
            MsgBox(ex.ToString)
        End Try
    End Sub
    Public Sub clear()
        txtfname.Text = ""
        txtlname.Text = ""
        txtcno.Text = ""
        txtadd.Text = ""
        txtpincode.Text = ""
        txtemailid.Text = ""
        txtuname.Text = ""
        txtpwd.Text = ""
    End Sub

    Protected Sub btnreset_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnreset.Click
        clear()
    End Sub

    Protected Sub btnlogin_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnlogin.Click
        Response.Redirect("login.aspx")
    End Sub
End Class
