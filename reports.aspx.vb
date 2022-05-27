
Partial Class reports
    Inherits System.Web.UI.Page

    Protected Sub btnproductreport_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnproductreport.Click
        panelproduct.Visible = True
    End Sub
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Session("id") Is Nothing Then
            Response.Redirect("adminlogin.aspx")
        End If
        panelproduct.Visible = False
        panelcustomer.Visible = False
        panelemployee.Visible = False
        panel1.Visible = False
    End Sub

    Protected Sub btncustreport_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btncustreport.Click
        panelcustomer.Visible = True
    End Sub

    Protected Sub btnemployeereport_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnemployeereport.Click
        panelemployee.Visible = True
    End Sub

    Protected Sub btnqueriereport_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnqueriereport.Click
        panel1.Visible = True
    End Sub
End Class
