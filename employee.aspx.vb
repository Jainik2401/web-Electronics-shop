Imports System.Data.OleDb
Partial Class employee
    Inherits System.Web.UI.Page
    Dim cn As New OleDbConnection("Provider=Microsoft.ACE.OLEDB.12.0;Data Source=D:\electronic shop\electshop\WebSite1\App_Data\electoshop.accdb")
    Dim dr As OleDbDataReader
    Dim Emp_idnew As Integer = 1
    Dim EmpId As Integer = 1
    Dim cmd As New OleDbCommand
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Session("id") Is Nothing Then
            Response.Redirect("adminlogin.aspx")
        End If
        panelAdd.Visible = False
        panelupdate.Visible = False
        paneldelete.Visible = False
        panelselect.Visible = False
        paneldetails.Visible = False

        Try
            cn.Open()
            cmd = New OleDbCommand("select EmpId from Employee ", cn)
            dr = cmd.ExecuteReader()
            While dr.Read
                Emp_idnew = dr.Item(0) + 1
                txtiempid.Text = Emp_idnew
            End While
            cn.Close()
        Catch ex As Exception
            MsgBox(ex.Message)
        End Try
    End Sub
   
    Protected Sub btnaddemp_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnaddemp.Click
        panelAdd.Visible = True

    End Sub
    Protected Sub btnupdateemp_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnupdateemp.Click
        panelupdate.Visible = True
    End Sub

    Protected Sub btndeleteemp_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btndeleteemp.Click
        paneldelete.Visible = True
    End Sub

    Protected Sub btnviewemp_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnviewemp.Click
        panelselect.Visible = True
    End Sub

    Protected Sub btninsert_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btninsert.Click
        Try
            Dim str As String
            Dim ans As Integer

            str = "insert into Employee values(" & txtiempid.Text & ",'" & txtiempname.Text & "'," & txticnum.Text & " ,'" & txtiemail.Text & "','" & txtidob.Text & "','" & txtidoj.Text & "','" & ddligender.Text & "','" & "~\photos\" & iempimg.FileName.ToString & "')"
            cn.Open()
            Dim cmd As New OleDbCommand(str, cn)
            ans = cmd.ExecuteNonQuery
            MsgBox("Insertion Sucessfully ", ans)
            GridView2.DataBind()
            clear()
            cn.Close()
        Catch ex As Exception
            MsgBox(ex.ToString)
        End Try
    End Sub
    Protected Sub clear()
        txtidob.Text = ""
        txtidoj.Text = ""
        txtiemail.Text = ""
        txticnum.Text = ""
        txtiempname.Text = ""
        ddligender.Text = ""
    End Sub

    Protected Sub btniclear_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btniclear.Click
        txtidob.Text = ""
        txtidoj.Text = ""
        txticnum.Text = ""
        txtiemail.Text = ""
        txtiempname.Text = ""
    End Sub

    Protected Sub btnupdate_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnupdate.Click
        Try
            Dim str As String
            Dim ans As Integer
            str = "update Employee set EmpName ='" & txtuempname.Text & "',Contactno='" & txtucnum.Text & "',Email='" & txtuemail.Text & "',DOB='" & txtudob.Text & "',DOJ='" & txtudoj.Text & "', Gender='" & ddlugender.Text & "',Empimg='" & "~\photos\" & uempimg.FileName.ToString & "' where EmpID = " & txtuempid.Text & " "
            cn.Open()
            Dim cmd As New OleDbCommand(str, cn)
            ans = cmd.ExecuteNonQuery
            MsgBox("Updation Sucessfullly", ans)
            GridView2.DataBind()
            clear1()
            cn.Close()

        Catch ex As Exception
            MsgBox(ex.ToString)
        End Try

    End Sub
    Protected Sub clear1()
        txtucnum.Text = ""
        txtudob.Text = ""
        txtudoj.Text = ""
        txtuemail.Text = ""
        txtuempid.Text = ""
        txtuempname.Text = ""
        ddlugender.Text = ""
    End Sub

    Protected Sub btnufind_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnufind.Click
        panelupdate.Visible = True

        Try
            Dim str As String
            Dim dr1 As OleDbDataReader
            str = "select * from Employee where EmpID=" & txtuempid.Text & " "
            cn.Open()
            Dim cmd As New OleDbCommand(str, cn)
            dr1 = cmd.ExecuteReader
            If dr1.HasRows Then
                dr1.Read()
                txtuempname.Text = dr1.Item(1)
                txtucnum.Text = dr1.Item(2)
                txtuemail.Text = dr1.Item(3)
                txtudob.Text = dr1.Item(4)
                txtudoj.Text = dr1.Item(5)
                ddlugender.Text = dr1.Item(6)
            Else
                MsgBox("Record is not found:")
                clear1()
            End If
            cn.Close()
        Catch ex As Exception
            MsgBox(ex.ToString)
        End Try
    End Sub

    Protected Sub btnuclear_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnuclear.Click
        txtucnum.Text = ""
        txtudob.Text = ""
        txtudoj.Text = ""
        txtuemail.Text = ""
        txtuempid.Text = ""
        txtuempname.Text = ""
        ddlugender.Text = ""
    End Sub

    Protected Sub btndelete_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btndelete.Click
        Try
            Dim str As String
            Dim ans As Integer
            cn.Open()
            str = "delete from Employee where EmpID=" & txtdempid.Text & ""
            Dim cmd As New OleDbCommand(str, cn)
            ans = cmd.ExecuteNonQuery
            MsgBox("Deletion Sucessfullly", ans)
            GridView2.DataBind()
            clear2()
            cn.Close()
        Catch ex As Exception
            MsgBox(ex.ToString)
        End Try
    End Sub

    Protected Sub btndfind_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btndfind.Click
        paneldelete.Visible = True
        Try
            Dim str As String
            str = "select * from Employee where EmpID=" & txtdempid.Text & " "
            cn.Open()
            Dim cmd As New OleDbCommand(str, cn)
            dr = cmd.ExecuteReader
            If dr.HasRows Then
                dr.Read()
                txtdempname.Text = dr.Item(1)
                txtdcnum.Text = dr.Item(2)
                txtdemail.Text = dr.Item(3)
                txtddob.Text = dr.Item(4)
                txtddoj.Text = dr.Item(5)
                ddldgender.Text = dr.Item(6)
            Else
                MsgBox("Record is not found:")
                clear2()
            End If
            cn.Close()
        Catch ex As Exception
            MsgBox(ex.ToString)
        End Try
    End Sub
    Public Sub clear2()
        txtdcnum.Text = ""
        txtddob.Text = ""
        txtddoj.Text = ""
        txtdemail.Text = ""
        txtdempid.Text = ""
        txtdempname.Text = ""
        ddldgender.Text = ""
    End Sub

    Protected Sub btndclear_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btndclear.Click
        txtdcnum.Text = ""
        txtddob.Text = ""
        txtddoj.Text = ""
        txtdemail.Text = ""
        txtdempid.Text = ""
        txtdempname.Text = ""
        ddldgender.Text = ""
    End Sub

    Protected Sub GridView2_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles GridView2.SelectedIndexChanged
        Try
            panelselect.Visible = True
            paneldetails.Visible = True
            Dim sql As String
            Dim cmd As New OleDbCommand
            Dim EmpID As Integer
            cn.Open()
            sql = "select * from Employee where EmpID = " & GridView2.SelectedValue & " "
            cmd = New OleDbCommand(sql, cn)
            dr = cmd.ExecuteReader()
            If dr.Read Then
                EmpID = dr(0)
                lblempid.Text = dr(0)
                lblempname.Text = dr(1)
                lblcontactno.Text = dr(2)
                lblemail.Text = dr(3)
                lbldob.Text = dr(4)
                lbldoj.Text = dr(5)
                lblempgender.Text = dr(6)
                proimg.ImageUrl = dr(7)
            End If
        Catch ex As Exception
            MsgBox(ex.Message)
        End Try
    End Sub

End Class
