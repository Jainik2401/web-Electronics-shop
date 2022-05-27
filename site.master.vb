
Partial Class site
    Inherits System.Web.UI.MasterPage
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Session("uid") Is Nothing Then
            mycartlink.Visible = False
            logoutlink.Visible = False
            loginlink.Visible = True
        Else
            mycartlink.Visible = True
            logoutlink.Visible = True
            loginlink.Visible = False
        End If
    End Sub
End Class

