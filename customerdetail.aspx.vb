Imports System.Data.OleDb
Partial Class customerdetail
    Inherits System.Web.UI.Page
    Dim cn As New OleDbConnection("Provider=Microsoft.ACE.OLEDB.12.0;Data Source=D:\electronic shop\electshop\WebSite1\App_Data\electoshop.accdb")
    Dim dr As OleDbDataReader
    Dim cmd As New OleDbCommand
    Dim cust_idnew As Integer = 1
    Dim Customerid As Integer = 1
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Session("id") Is Nothing Then
            Response.Redirect("adminlogin.aspx")
        End If
        paneladd.Visible = False
        panelupdate.Visible = False
        paneldelete.Visible = False
        panelselect.Visible = False
        paneldetails.Visible = False

        Try
            cn.Open()
            cmd = New OleDbCommand("select Customerid from Customer ", cn)
            dr = cmd.ExecuteReader()
            While dr.Read
                cust_idnew = dr.Item(0) + 1
                txticid.Text = cust_idnew
            End While
            cn.Close()
        Catch ex As Exception
            MsgBox(ex.Message)
        End Try
    End Sub

    Protected Sub btnaddcust_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnaddcust.Click
        paneladd.Visible = True
    End Sub

    Protected Sub btnupdatecust_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnupdatecust.Click
        panelupdate.Visible = True
    End Sub

    Protected Sub btndeletecust_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btndeletecust.Click
        paneldelete.Visible = True
    End Sub

    Protected Sub btnviewcust_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnviewcust.Click
        panelselect.Visible = True
    End Sub

    Protected Sub btninsert_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btninsert.Click
        Try
            Dim str As String
            Dim ans As Integer

            str = "insert into Customer values(" & txticid.Text & ",'" & txtifname.Text & "','" & txtilname.Text & " ','" & txticno.Text & "','" & txtiadd.Text & "'," & txtipcode.Text & ",'" & txtiemail.Text & "','" & txtiuname.Text & "','" & txtipwd.Text & "','" & "~\photos\" & icusimage.FileName.ToString & "')"
            cn.Open()
            Dim cmd As New OleDbCommand(str, cn)
            ans = cmd.ExecuteNonQuery
            MsgBox("Insertion Sucessfully ", ans)
            GridView3.DataBind()
            clear()
            cn.Close()
        Catch ex As Exception
            MsgBox(ex.ToString)
        End Try
    End Sub
    Public Sub clear()
        txticid.Text = ""
        txtifname.Text = ""
        txtilname.Text = ""
        txticno.Text = ""
        txtiadd.Text = ""
        txtipcode.Text = ""
        txtiemail.Text = ""
        txtiuname.Text = ""
        txtipwd.Text = ""
    End Sub

    Protected Sub btniclear_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btniclear.Click
        txticid.Text = ""
        txtifname.Text = ""
        txtilname.Text = ""
        txticno.Text = ""
        txtiadd.Text = ""
        txtipcode.Text = ""
        txtiemail.Text = ""
        txtiuname.Text = ""
        txtipwd.Text = ""
    End Sub

    Protected Sub btnupdate_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnupdate.Click
        Try
            Dim str As String
            Dim ans As Integer
            str = "update Customer set Firstname='" & txtufname.Text & "',Lastname='" & txtulname.Text & "',Contactno='" & txtucno.Text & "',Address='" & txtuadd.Text & "',Pincode=" & txtupincode.Text & ",Emailid='" & txtuemail.Text & "',Custimg='" & "~\photos\" & ucusimg.FileName.ToString & "' where Customerid=" & txtucusid.Text & " "
            cn.Open()
            Dim cmd As New OleDbCommand(str, cn)
            ans = cmd.ExecuteNonQuery
            MsgBox("Customer Details Updated", ans)
            GridView3.DataBind()
            clear1()
            cn.Close()
        Catch ex As Exception
            MsgBox(ex.ToString)
        End Try
    End Sub
    Public Sub clear1()
        txtucno.Text = ""
        txtufname.Text = ""
        txtulname.Text = ""
        txtucno.Text = ""
        txtuadd.Text = ""
        txtupincode.Text = ""
        txtuemail.Text = ""
        txtucusid.Text = ""
    End Sub

    Protected Sub btnuclear_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnuclear.Click
        txtucusid.Text = ""
        txtucno.Text = ""
        txtufname.Text = ""
        txtulname.Text = ""
        txtucno.Text = ""
        txtuadd.Text = ""
        txtupincode.Text = ""
        txtuemail.Text = ""
    End Sub

    Protected Sub btndelete_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btndelete.Click
        Try
            Dim str As String
            Dim ans As Integer
            cn.Open()
            str = "delete from Customer where Customerid=" & txtdcid.Text & ""
            Dim cmd As New OleDbCommand(str, cn)
            ans = cmd.ExecuteNonQuery
            MsgBox("Deletion Sucessfullly", ans)
            GridView3.DataBind()
            clear2()
            cn.Close()
        Catch ex As Exception
            MsgBox(ex.ToString)
        End Try
    End Sub
    Public Sub clear2()
        txtdcno.Text = ""
        txtdfname.Text = ""
        txtdlname.Text = ""
        txtdcno.Text = ""
        txtdadd.Text = ""
        txtdpincode.Text = ""
        txtdemail.Text = ""
        txtdcid.Text = ""
    End Sub

    Protected Sub btndclear_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btndclear.Click
        txtdcno.Text = ""
        txtdfname.Text = ""
        txtdlname.Text = ""
        txtdcno.Text = ""
        txtdadd.Text = ""
        txtdpincode.Text = ""
        txtdemail.Text = ""
        txtdcid.Text = ""
    End Sub

    Protected Sub btnfind1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnfind1.Click
        paneldelete.Visible = True
        Try
            Dim str As String

            str = "select * from Customer where Customerid=" & txtdcid.Text & " "
            cn.Open()
            Dim cmd As New OleDbCommand(str, cn)
            dr = cmd.ExecuteReader
            If dr.HasRows Then
                dr.Read()
                txtdfname.Text = dr.Item(1)
                txtdlname.Text = dr.Item(2)
                txtdcno.Text = dr.Item(3)
                txtdadd.Text = dr.Item(4)
                txtdpincode.Text = dr.Item(5)
                txtdemail.Text = dr.Item(6)

            Else
                MsgBox("Record is not found:")
                clear2()
            End If

            cn.Close()

        Catch ex As Exception
            MsgBox(ex.ToString)
        End Try
    End Sub

    Protected Sub btnfind_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnfind.Click
        panelupdate.Visible = True
        Try
            Dim str As String
            str = "select * from Customer where Customerid=" & txtucusid.Text & " "
            cn.Open()
            Dim cmd As New OleDbCommand(str, cn)
            dr = cmd.ExecuteReader
            If dr.HasRows Then
                dr.Read()
                txtufname.Text = dr.Item(1)
                txtulname.Text = dr.Item(2)
                txtucno.Text = dr.Item(3)
                txtuadd.Text = dr.Item(4)
                txtupincode.Text = dr.Item(5)
                txtuemail.Text = dr.Item(6)
            Else
                MsgBox("Record is not found:")
                clear1()
            End If
            cn.Close()
        Catch ex As Exception
            MsgBox(ex.ToString)
        End Try
    End Sub

    Protected Sub GridView3_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles GridView3.SelectedIndexChanged
        Try
            panelselect.Visible = True
            paneldetails.Visible = True
            Dim sql As String
            Dim cmd As New OleDbCommand
            Dim Cusid As Integer
            cn.Open()
            sql = "select * from Customer where Customerid = " & GridView3.SelectedValue & " "
            cmd = New OleDbCommand(sql, cn)
            dr = cmd.ExecuteReader()
            If dr.Read Then
                Cusid = dr(0)
                lblcusid.Text = dr(0)
                lblfname.Text = dr(1)
                lbllname.Text = dr(2)
                lblconno.Text = dr(3)
                lbladd.Text = dr(4)
                lblpincode.Text = dr(5)
                lblemailid.Text = dr(6)
                cusimg.ImageUrl = dr(9)

            End If
        Catch ex As Exception
            MsgBox(ex.Message)
        End Try
    End Sub
End Class
