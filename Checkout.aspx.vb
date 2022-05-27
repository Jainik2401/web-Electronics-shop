Imports System.Data.OleDb
Imports System.Data
Partial Class Checkout
    Inherits System.Web.UI.Page
    Dim cn As New OleDbConnection("Provider=Microsoft.ACE.OLEDB.12.0;Data Source=D:\electronic shop\electshop\WebSite1\App_Data\electoshop.accdb")
    Dim dr As DataRow
    Dim drs As OleDbDataReader
    Dim cmd As New OleDbCommand
    Dim dre As OleDbDataReader
    Dim Pro_idnew As Integer = 1
    Dim Productid As Integer = 1

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not IsPostBack Then
            If Session("uid") Is Nothing Then
                Response.Redirect("login.aspx")
            End If

            Dim dt As DataTable = New DataTable()
            dt.Columns.Add("sno")
            dt.Columns.Add("ProductId")
            dt.Columns.Add("Proimage")
            dt.Columns.Add("Category")
            dt.Columns.Add("Productname")
            dt.Columns.Add("Description")
            dt.Columns.Add("Price")
            dt.Columns.Add("quantity")
            dt.Columns.Add("totalprice")

            If Request.QueryString("id") IsNot Nothing Then

                If Session("Buyitems") Is Nothing Then
                    dr = dt.NewRow()
                    Dim str As String
                    str = "select * from Product where ProductId=" & Request.QueryString("id").ToString & ""
                    Dim cmd As New OleDbCommand(str, cn)
                    Dim da As OleDbDataAdapter = New OleDbDataAdapter()
                    da.SelectCommand = cmd
                    Dim ds As DataSet = New DataSet()
                    da.Fill(ds)
                    dr("sno") = 1
                    dr("ProductId") = ds.Tables(0).Rows(0)("ProductId").ToString()
                    dr("Proimage") = ds.Tables(0).Rows(0)("Proimage").ToString()
                    dr("Category") = ds.Tables(0).Rows(0)("Category").ToString()
                    dr("Productname") = ds.Tables(0).Rows(0)("Productname").ToString()
                    dr("Description") = ds.Tables(0).Rows(0)("Description").ToString()
                    dr("Price") = Request.QueryString("Price")
                    dr("quantity") = Request.QueryString("quantity").ToString()
                    dr("Price") = ds.Tables(0).Rows(0)("Price").ToString()
                    Dim price As Integer = Convert.ToInt32(ds.Tables(0).Rows(0)("Price").ToString())
                    Dim quantity As Integer = Convert.ToInt32(Request.QueryString("quantity").ToString())
                    Dim totalprice As Integer = price * quantity
                    dr("totalprice") = totalprice
                    dt.Rows.Add(dr)
                    GridView1.DataSource = dt
                    GridView1.DataBind()

                    Session("buyitems") = dt

                    GridView1.FooterRow.Cells(7).Text = "Total Amount"
                    GridView1.FooterRow.Cells(8).Text = grandtotal().ToString()
                    Response.Redirect("mycart.aspx")

                Else

                    dt = CType(Session("buyitems"), DataTable)
                    Dim sr As Integer
                    sr = dt.Rows.Count
                    dr = dt.NewRow()
                    Dim str As String
                    str = "select * from Product where ProductId=" & Request.QueryString("id").ToString & ""
                    Dim cmd As New OleDbCommand(str, cn)
                    Dim da As OleDbDataAdapter = New OleDbDataAdapter()
                    da.SelectCommand = cmd
                    Dim ds As DataSet = New DataSet()
                    da.Fill(ds)
                    dr("sno") = sr + 1
                    dr("ProductId") = ds.Tables(0).Rows(0)("ProductId").ToString()
                    dr("Proimage") = ds.Tables(0).Rows(0)("Proimage").ToString()
                    dr("Category") = ds.Tables(0).Rows(0)("Category").ToString()
                    dr("Productname") = ds.Tables(0).Rows(0)("Productname").ToString()
                    dr("Description") = ds.Tables(0).Rows(0)("Description").ToString()
                    dr("Price") = Request.QueryString("Price")
                    dr("quantity") = Request.QueryString("quantity").ToString()
                    dr("Price") = ds.Tables(0).Rows(0)("Price").ToString()
                    Dim price As Integer = Convert.ToInt64(ds.Tables(0).Rows(0)("Price").ToString())
                    Dim quantity As Integer = Convert.ToInt32(Request.QueryString("quantity").ToString())
                    Dim totalprice As Integer = price * quantity
                    dr("totalprice") = totalprice
                    dt.Rows.Add(dr)
                    GridView1.DataSource = dt
                    GridView1.DataBind()

                    Session("buyitems") = dt
                    GridView1.FooterRow.Cells(7).Text = "Total Amount"
                    GridView1.FooterRow.Cells(8).Text = grandtotal().ToString()
                    Response.Redirect("mycart.aspx")
                End If
            Else
                dt = CType(Session("buyitems"), DataTable)
                GridView1.DataSource = dt
                GridView1.DataBind()
                If GridView1.Rows.Count > 0 Then
                    GridView1.FooterRow.Cells(7).Text = "Total Amount"
                    GridView1.FooterRow.Cells(8).Text = grandtotal().ToString()

                End If
            End If
        End If
        Label4.Text = Now
        findorderid()
    End Sub
    Public Function grandtotal() As Integer
        Dim dt As DataTable = New DataTable()
        dt = CType(Session("buyitems"), DataTable)
        Dim nrow As Integer = dt.Rows.Count
        Dim i As Integer = 0
        Dim gtotal As Integer = 0

        While i < nrow
            gtotal = gtotal + Convert.ToInt32(dt.Rows(i)("totalprice").ToString())
            i = i + 1
        End While

        Return gtotal
    End Function
    Public Sub findorderid()
        Dim pass As String = "abcdefghijklmnopqrstuvwxyz123456789"
        Dim r As Random = New Random()
        Dim mypass As Char() = New Char(4) {}

        For i As Integer = 0 To 5 - 1
            mypass(i) = pass(CInt((35 * r.NextDouble())))
        Next

        Dim orderid As String
        orderid = "Order" & DateTime.Now.Hour.ToString() + DateTime.Now.Minute.ToString() + DateTime.Now.Day.ToString() + DateTime.Now.Month.ToString() + DateTime.Now.Year.ToString() & New String(mypass)
        Label2.Text = orderid
    End Sub

    Protected Sub btnporder_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnporder.Click
        Dim dt As DataTable
        dt = CType(Session("buyitems"), DataTable)
        Dim str As String
        Dim usrid As Integer
        usrid = Session("uid")
        Dim add As String
        Dim pin As String
        Dim fadd As String
        Dim contact As String

        If RadioButton1.Checked = True Then

            str = "select Address,Pincode from Customer where Customerid=" & usrid & " "
            cn.Open()
            Dim cmd As New OleDbCommand(str, cn)
            drs = cmd.ExecuteReader
            If drs.HasRows Then
                drs.Read()
                add = drs.Item(0).ToString
                pin = drs.Item(1).ToString
                fadd = add + " " + pin
            End If
            cn.Close()
        Else
            fadd = TextBox1.Text
        End If

        If RadioButton2.Checked = True Then

            str = "select Contactno from Customer where Customerid=" & usrid & " "
            cn.Open()
            Dim cmd As New OleDbCommand(str, cn)
            drs = cmd.ExecuteReader
            If drs.HasRows Then
                drs.Read()
                contact = drs.Item(0).ToString
            Else

            End If
            cn.Close()

        End If

        For i1 As Integer = 0 To dt.Rows.Count - 1
            str = "insert into order_details values('" & Label2.Text & "'," & usrid & "," & dt.Rows(i1)("ProductId") & ",'" & dt.Rows(i1)("Category") & "'," & dt.Rows(i1)("quantity") & "," & dt.Rows(i1)("totalprice") & ",'" & Label4.Text & "','" & fadd & "','" & contact & "')"
            Try
                cn.Open()
                Dim cmd1 As New OleDbCommand(str, cn)
                cmd1.ExecuteNonQuery()

                cn.Close()
            Catch ex As Exception
                MsgBox(ex.Message)
            End Try
        Next
        Response.Redirect("Ordersuccessfully.aspx")
    End Sub
End Class
