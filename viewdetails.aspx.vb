Imports System.Data.OleDb
Imports System.Data
Partial Class viewdetails
    Inherits System.Web.UI.Page
    Protected Sub DataList1_ItemCommand(ByVal source As Object, ByVal e As System.Web.UI.WebControls.DataListCommandEventArgs) Handles DataList1.ItemCommand
        If e.CommandName = "addtocart" Then
            Dim selqty As TextBox = CType((e.Item.FindControl("txtque")), TextBox)
            Response.Redirect("mycart.aspx?id=" & e.CommandArgument.ToString() & "&quantity=" + selqty.Text.ToString())
        End If
    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim dt As DataTable = New DataTable()
        dt = CType(Session("buyitems"), DataTable)
    End Sub

    
End Class
