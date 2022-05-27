<%@ Page Language="VB" AutoEventWireup="false" CodeFile="clientforgetpassword.aspx.vb" Inherits="clientforgetpassword" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Forget Pass</title>
        <link rel="stylesheet" href="script/css/manual.css" />
    <link rel="stylesheet" href="script/css/bootstrap.css" />
    <script src="script/js/bootstrap.min.js" type="text/jscript"></script>

 <style>
.btn
 {
    font-weight: 500;
    background-color:black;
    color:white;
   
 }
.btn:hover 
{
    color: red;
    text-decoration: none;
}
.btn-default:hover 
{
    background-color: #269900;
    color:white;
    transition: 0.7s;
    border: 2px solid black;
} 
.poster
{
   background-color: rgba(38,38,38,1);
   color:White;
   font-size:16px;
   }
hr
{
  border-bottom:2px solid #fff;
  margin-left:0px;
  margin-right:-50px;
}
.error
{
    margin-left:30px;    
}
</style> 
</head>

<body>
    <form id="form1" runat="server">
    <div class="container" style="margin:0;width:100%;">
        <asp:Panel ID="pnlmain" runat="server">
        
        <div class="row" style="margin-top:10%;margin-left:300px;">
            <div class="col-sm-11"></div>
            <div class="col-sm-11">
                <div class="poster" style="padding:25px">
                  <div class="row">
                   <div class="col-sm-11">
                     <h2>Forgot Password</h2>
                        <hr />
                        <asp:Label ID="lblErr" runat="server" Text="Invalid details." class="error" ForeColor="Red" ></asp:Label>
                        <asp:TextBox ID="txtmail" style="padding-left:10px;margin-left:20px;" class="form-control" 
                        placeholder="Email" runat="server" Width="450px" ></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rqmail"  class="error" runat="server" 
                            ErrorMessage="Email is required." ControlToValidate="txtmail" CssClass="error" 
                            ValidationGroup="main" ForeColor="Red"></asp:RequiredFieldValidator></div>
                    </div>
                    <div class="row"  style="margin-top:15px">
                    <div class="col-sm-11">
                        <asp:TextBox ID="txtCon" style="padding-left:10px;margin-left:20px;" class="form-control"  placeholder="Contact No." 
                        runat="server" TextMode="Number" BorderColor="Black" Width="450px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rqcon"   class="error" runat="server" ErrorMessage="Contact No. is required." 
                          ControlToValidate="txtCon" ValidationGroup="main" ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>
                    </div>
                      <div class="row" style="margin-top:15px">
                        <div class="col-sm-3">
                            <asp:Button ID="btnSubmit" runat="server"  class="btn btn-default" 
                                style="width:100%;margin-left:50px;" Text="Submit" ValidationGroup="main" />
                        </div>
                        <div class="col-sm-3">
                            <asp:Button ID="btnCancel"  runat="server" class="btn btn-default" style="margin-left:100px;width:100%" Text="Cancel" />
                        </div>
                    </div>
                </div>
            </div>
        </div>
        </asp:Panel>
        <asp:Panel ID="pnlSub" runat="server">
        
        <div class="row" style="margin-top:10%;margin-left:300px;">
            <div class="col-sm-11"></div>
            <div class="col-sm-11">
                <div class="poster" style="padding:25px">
                    <div class="row">
                    <div class="col-sm-11">
                        <asp:TextBox ID="txtPass" type="password" class="form-control" 
                            style="padding-left:10px;margin-left:20px;" placeholder="Enter New Password" runat="server" Width="448px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rqpass" runat="server" class="error" 
                            ErrorMessage="Enter Password." ControlToValidate="txtPass"  
                            ValidationGroup="pass" ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>
                    </div>

                    <div class="row" style="margin-top:15px">
                    <div class="col-sm-11">
                        <asp:TextBox ID="txtConf" type="password" class="form-control" style="padding-left:10px;margin-left:20px;" 
                        placeholder="Enter Confirm Password" runat="server" Width="448px"></asp:TextBox>
                          
                        <asp:RequiredFieldValidator ID="rqCpass" runat="server" 
                            ErrorMessage="Enter Confirm Password." ControlToValidate="txtConf" Class="error" 
                            ValidationGroup="pass" ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:CompareValidator ID="CompareValidator1"
                                runat="server" ErrorMessage="Both Password must be Same." ControlToCompare="txtPass" 
                            ControlToValidate="txtConf"  ValidationGroup="pass" ForeColor="Red"></asp:CompareValidator>
                    </div>
                    </div>

                    <div class="row" style="margin-top:15px">
                        <div class="col-sm-3">
                            <asp:Button ID="btnChange" runat="server" class="btn btn-default" 
                                style="width:100%;margin-left:50px;" Text="Submit" ValidationGroup="pass" />
                        </div>
                        <div class="col-sm-3">
                            <asp:Button ID="btnCancel1" runat="server" class="btn btn-default" style="margin-left:100px;width:100%" Text="Cancel" />
                        </div>
                    </div>
                </div>
            </div>
        </div>
        </asp:Panel>
    </div>
    </form>
</body>
</html>
