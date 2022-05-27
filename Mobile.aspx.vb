
Partial Class Mobile
    Inherits System.Web.UI.Page

   Protected Sub btnviewdetails_Click(ByVal source As Object, ByVal e As System.Web.UI.WebControls.DataListCommandEventArgs) Handles DataList1.ItemCommand
        DataList1.DataBind()
        If String.Compare(e.CommandName, "viewdetail") = 0 Then
            Response.Redirect("viewdetails.aspx?ProductId=" & e.CommandArgument.ToString())
        End If
    End Sub

    Protected Sub DataList1_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles DataList1.SelectedIndexChanged

    End Sub
End Class
