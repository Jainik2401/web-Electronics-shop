
<%@ Page Title="" Language="VB" MasterPageFile="~/site.master" AutoEventWireup="false" CodeFile="login.aspx.vb" Inherits="login" %>

<asp:Content ID="Content1" Runat="Server" ContentPlaceHolderID="head" >
    <style type="text/css">
        .style3
        {
            width: 100%;
            background-color:#ccc7d0d4;
        }
.img
{
    margin-left:300px;
    margin-top:20px;
}   
.container
 {
  padding: 16px;

}
.lblname
{
       font-size:x-large;
       margin-left:100px;
}

.right
{
   padding-left:190px; 
   
} 
.txt
{
    margin-left:20px; 
    padding-left:10px;
    padding-bottom:10px;
    padding-top:10px;
     font-size:medium;   
}
.error
{
    margin-left:250px;
}
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
</style>
</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPlaceHolder1">

    <table align="center" class="style3">
        <tr>
            <td>    
               <div>      
                <asp:Image ID="Image2" class="img" runat="server" Height="230px"  ImageUrl="~/photos/user.jpg" Width="230px" /><br />
              </div></td>
        </tr><br />       
         <tr>
            <td>
                <div class="container">
                       <b><asp:Label ID="loginError" Text="Invalid Username or Password." class="error" runat="server" ForeColor="Red"
                        EnableTheming="True"></asp:Label></b>
                        <br />
                       <b> <asp:Label ID="lblusername" class="lblname" runat="server" Text="UserName:"></asp:Label></b>
                       <b><asp:TextBox ID="txtuname" class="txt" runat="server" Width="450px" 
                        BorderColor="Black" Height="30px"></asp:TextBox></b> 
                        <br />
                       <b><asp:RequiredFieldValidator ID="RequiredFieldunmae" class="error" runat="server" ErrorMessage="UserName is Required"
                          ControlToValidate="txtuname" ForeColor="Red" ValidationGroup="login"></asp:RequiredFieldValidator> </b> <br />
                       <b><asp:Label ID="lblpassword"  class="lblname" runat="server" Text="Password:"></asp:Label>&nbsp;</b>
                       <asp:TextBox ID="txtpwd"  type="password"  class="txt" runat="server" Width="450px" BorderColor="Black" Height="30px"></asp:TextBox>
                       <br />  
                       <b><asp:RequiredFieldValidator ID="requiredpwd" class="error" runat="server" ErrorMessage="Password is  Required" 
                       ControlToValidate="txtpwd"  ForeColor="Red" ValidationGroup="login"></asp:RequiredFieldValidator></b>  
                       <br />  
                       <asp:Button ID="btnlogin" style="margin-left:250px;" class="btn btn-default" runat="server" Text="LogIn"  Width="150px" 
                           ValidationGroup="login" />
                       <asp:Button ID="btnf" style="margin-left:50px;" class="btn btn-default"  runat="server" Text="Forget"  Width="149px" />
                       <br />
                       <asp:Button ID="btnsignup" style="margin-left:250px;" class="btn btn-default"  runat="server" Text="New User ! Sign Up Here."  Width="380px" />
                       <br />
                </div>
            </td>
        </tr>
    </table>
 
</asp:Content>


