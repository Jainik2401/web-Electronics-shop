Imports System.Data.OleDb
Imports System.Data
Partial Class mycart
    Inherits System.Web.UI.Page
    Dim cn As New OleDbConnection("Provider=Microsoft.ACE.OLEDB.12.0;Data Source=D:\electronic shop\electshop\WebSite1\App_Data\electoshop.accdb")
    Dim dr As DataRow

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
    Protected Sub GridView1_RowDeleting(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewDeleteEventArgs) Handles GridView1.RowDeleting
        Dim dt As DataTable = New DataTable()
        dt = CType(Session("buyitems"), DataTable)
        Dim i1 As Integer = 0
        If i1 = 0 Then
            For i1 = 0 To dt.Rows.Count - 1
                Dim sr As Integer
                Dim sr1 As Integer
                Dim qdata As String
                Dim dtdata As String
                sr = Convert.ToInt32(dt.Rows(i1)("sno").ToString())
                Dim cell As TableCell = GridView1.Rows(e.RowIndex).Cells(0)
                qdata = cell.Text
                dtdata = sr.ToString()
                sr1 = Convert.ToInt32(qdata)

                Try
                    If sr = sr1 Then
                        dt.Rows(i1).Delete()
                        dt.AcceptChanges()

                        Exit Try
                    End If
                Catch ex As Exception
                    MsgBox(ex.Message)
                End Try

            Next i1
            Response.Redirect("mycart.aspx")

        Else
            For i2 As Integer = 1 To dt.Rows.Count
                dt.Rows(i2 - 1)("sno") = i2
                dt.AcceptChanges()
                Session("buyitems") = dt
                Response.Redirect("mycart.aspx")

            Next i2
            Response.Redirect("mycart.aspx")
        End If

    End Sub

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btncshopping.Click
        Response.Redirect("products.aspx")
    End Sub

    Protected Sub Checkout_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Checkout.Click
        Response.Redirect("Checkout.aspx")
    End Sub
End Class
