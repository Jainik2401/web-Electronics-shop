Imports System.Data.OleDb
Partial Class addproduct
    Inherits System.Web.UI.Page
    Dim cn As New OleDbConnection("Provider=Microsoft.ACE.OLEDB.12.0;Data Source=D:\electronic shop\electshop\WebSite1\App_Data\electoshop.accdb")
    Dim dr As OleDbDataReader
    Dim cmd As New OleDbCommand
    Dim Pro_idnew As Integer = 1
    Dim Productid As Integer = 1
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
            cmd = New OleDbCommand("select Productid from Product ", cn)
            dr = cmd.ExecuteReader()
            While dr.Read
                Pro_idnew = dr.Item(0) + 1
                txtipid.Text = Pro_idnew
            End While
            cn.Close()
        Catch ex As Exception
            MsgBox(ex.Message)
        End Try
    End Sub
    Protected Sub btnaddpro_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnaddpro.Click
        paneladd.Visible = True
    End Sub

    Protected Sub btnupdatepro_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnupdatepro.Click
        panelupdate.Visible = True
    End Sub
    Protected Sub btndeletepro_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btndeletepro.Click
        paneldelete.Visible = True
    End Sub
    Protected Sub btnviewpro_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnviewpro.Click
        panelselect.Visible = True
    End Sub
    Protected Sub btninsert_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btninsert.Click
        Try
            Dim str As String
            Dim ans As Integer
            str = "insert into Product values(" & txtipid.Text & ",'" & ddlist.Text & "','" & txtipname.Text & "','" & txtidec.Text & "'," & txtiprice.Text & ",'" & "~\photos\" & iproimage.FileName.ToString & "')"
            cn.Open()
            Dim cmd As New OleDbCommand(str, cn)
            ans = cmd.ExecuteNonQuery
            MsgBox("Insertion Sucessfully", ans)
            GridView1.DataBind()
            clear()
            cn.Close()
        Catch ex As Exception
            MsgBox(ex.Message)
        End Try
    End Sub
    Protected Sub btniclear_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btniclear.Click
        txtipid.Text = ""
        txtipname.Text = ""
        txtiprice.Text = ""
        txtidec.Text = ""
    End Sub
    Public Sub clear()
        txtipid.Text = ""
        txtipname.Text = ""
        txtiprice.Text = ""
        txtidec.Text = ""
    End Sub
    Protected Sub btnupdate_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnupdate.Click
        Try
            Dim str As String
            Dim ans As Integer
            str = "update Product set Category='" & ddllist1.Text & "',Productname=' " & txtupname.Text & " ',Description=' " & txtudec.Text & " ',Price=" & txtuprice.Text & ",Proimage='" & "~\photos\" & uproimg.FileName.ToString & "' where ProductId=" & txtuproid.Text & " "
            cn.Open()
            Dim cmd As New OleDbCommand(str, cn)
            ans = cmd.ExecuteNonQuery
            MsgBox("Product Details Updated", ans)
            GridView1.DataBind()
            clear1()
            cn.Close()
        Catch ex As Exception
            MsgBox(ex.ToString)
        End Try
    End Sub
    Public Sub clear1()
        txtudec.Text = ""
        txtupname.Text = ""
        txtuprice.Text = ""
        txtuproid.Text = ""
    End Sub
    Protected Sub btnuclear_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnuclear.Click
        txtudec.Text = ""
        txtupname.Text = ""
        txtuprice.Text = ""
        txtuproid.Text = ""
    End Sub
    Protected Sub btndelete_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btndelete.Click
        Try
            Dim str As String
            Dim ans As Integer
            str = "Delete from Product where ProductId=" & txtdpid.Text & " "
            cn.Open()
            Dim cmd As New OleDbCommand(str, cn)
            ans = cmd.ExecuteNonQuery
            MsgBox("Deleted Product", ans)
            GridView1.DataBind()
            clear2()
            cn.Close()
        Catch ex As Exception
            MsgBox(ex.ToString)
        End Try
    End Sub
    Public Sub clear2()
        txtddec.Text = ""
        txtdpid.Text = ""
        txtdpid.Text = ""
        txtdpname.Text = ""
        txtdprice.Text = ""
    End Sub
    Protected Sub btndclear_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btndclear.Click
        txtddec.Text = ""
        txtdpid.Text = ""
        txtdpid.Text = ""
        txtdpname.Text = ""
        txtdprice.Text = ""
    End Sub
    Protected Sub btnufind_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnufind.Click
        panelupdate.Visible = True
        Try
            Dim str As String
            str = "select * from Product where ProductId=" & txtuproid.Text & ""
            cn.Open()
            Dim cmd As New OleDbCommand(str, cn)
            dr = cmd.ExecuteReader
            If dr.HasRows Then
                dr.Read()
                ddllist1.Text = dr.Item(1)
                txtupname.Text = dr.Item(2)
                txtudec.Text = dr.Item(3)
                txtuprice.Text = dr.Item(4)
            Else
                MsgBox("Product is not found")
                clear1()
            End If
            cn.Close()
        Catch ex As Exception
            MsgBox(ex.ToString)
        End Try
    End Sub
    Protected Sub btnfind1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnfind1.Click
        paneldelete.Visible = True
        Try
            Dim str As String
            str = "select * from Product where ProductId=" & txtdpid.Text & ""
            cn.Open()
            Dim cmd As New OleDbCommand(str, cn)
            dr = cmd.ExecuteReader
            If dr.HasRows Then
                dr.Read()
                ddlist2.Text = dr.Item(1)
                txtdpname.Text = dr.Item(2)
                txtddec.Text = dr.Item(3)
                txtdprice.Text = dr.Item(4)
            Else
                MsgBox("Product is not found")
                clear2()
            End If
            cn.Close()

        Catch ex As Exception
            MsgBox(ex.ToString)
        End Try
    End Sub
    Protected Sub GridView1_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles GridView1.SelectedIndexChanged
        Try
            paneldetails.Visible = True
            panelselect.Visible = True
            Dim sql As String
            Dim cmd As New OleDbCommand
            Dim ProID As Integer
            cn.Open()
            sql = "select * from Product where ProductId = " & GridView1.SelectedRow.Cells(1).Text & " "
            cmd = New OleDbCommand(sql, cn)
            dr = cmd.ExecuteReader()
            If dr.Read Then
                ProID = dr.Item(0)
                lblid.Text = dr.Item(0)
                lblCategory.Text = dr.Item(1)
                lblProductname.Text = dr.Item(2)
                lblDescription.Text = dr.Item(3)
                lblPrice.Text = dr.Item(4)
                proimg.ImageUrl = dr(5)

            End If
            cn.Close()
        Catch ex As Exception
            MsgBox(ex.Message)
        End Try
    End Sub
End Class
