<%@ Page Language="VB" AutoEventWireup="false" CodeFile="adminlogin.aspx.vb" Inherits="adminlogin" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title> Admin LogIn</title>
        <style>
        .style1
        {
            width: 50%;
            background-color:#00FFA0;
        }
.imgcontainer {
  text-align: center;
  margin: 24px 0 12px 0;
}
body 
{
    font-family: Geneva, sans-serif;
}
form 
{
    border: 4px solid #353535;
}
.container {
  padding: 16px;
  padding-left :100px;
  
}
.form-control
{
    margin-top:10px;
    padding-left:20px;
    padding-top:5px;
    padding-bottom:5px;
    font-size:medium;
}
.lblname
{
       font-size:x-large;
}
.button
{
   font-size:x-large;
   margin-top:10px;
    cursor: pointer;
}
.right
{
   padding-left:190px; 
   
}
</style>

</head>
<body >
     
 <table align="center" class="style1" >
    <tr>
      <td>
          <form id="form" runat="server">
                    <div class="imgcontainer">
                            <asp:Image ID="Image1" runat="server" Height="190px" 
                            ImageUrl="~/photos/adminlogo.png" />
                            <br /><br />
                    </div>
                    <div class="container">
                        <b><asp:Label ID="loginError" runat="server" ForeColor="Red"></asp:Label>
                        </b>
                        <b>
                        <br />
                        <asp:Label ID="lblusername" class="lblname" runat="server" Text="UserName"></asp:Label>
                        </b> <br />                        
                        
                        <b><asp:TextBox ID="txtuname"  placeholder="Enter Username" class="form-control" runat="server" 
                            Width="400px" BorderColor="Black" Height="30px"></asp:TextBox>
                        </b><br />  
                       
                        <b>
                        <asp:RequiredFieldValidator ID="RequiredFieldunmae" runat="server" 
                            ErrorMessage="UserName is Required" ControlToValidate="txtuname" 
                            ForeColor="Red"></asp:RequiredFieldValidator>
                       </b> <br /> <br />
                       
                       <b><asp:Label ID="lblpassword"  class="lblname" runat="server" Text="Password"></asp:Label>
                       </b><br /> 
                                                                            
                        <asp:TextBox ID="txtpwd" placeholder="Enter Password " type="password"  class="form-control" runat="server" 
                            Width="400px" BorderColor="Black" Height="30px"></asp:TextBox>
                         <br />  
                      
                      <b><asp:RequiredFieldValidator ID="requiredpwd" runat="server" 
                            ErrorMessage="Password is  Required" ControlToValidate="txtpwd" ForeColor="Red"></asp:RequiredFieldValidator>
                       </b>   <br />
                        <br />
                     
                      <b>
                        <asp:Button ID="btnlogin" class="button"  type="button" runat="server"  BorderColor="Black"
                           Text="LogIn" BackColor="#F0F0F0" Height="37px" Width="93px"  />
                      <asp:HyperLink ID="HyperLink1" class="right" runat="server"  style="text-decoration:none;color:blue"> <a href="forgotpassword.aspx">Forgot Password?</a></asp:HyperLink>
                        <br />
                        <br />
                      </b><br /><br />                                
                    </div>
          </form>
      </td>
    </tr>
 </table>
   
  
</body>
</html>
