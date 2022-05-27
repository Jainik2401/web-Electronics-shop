<%@ Page Language="VB" AutoEventWireup="false" CodeFile="forgotpassword.aspx.vb" Inherits="forgotpassword" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Forgot Password</title>
    <style type="text/css">
        .style1
        {
            background-color:#00caada1;
            width: 50%;
           
        }
    
form 
{
    border: 4px solid #353535;
}    
.lbl
{
   font-size:xx-large;
   padding-left:200px; 
   
}  
.lblname
{
       font-size:x-large;
       padding-left:60px;
}
.form-control
{
   margin-left:70px;
    margin-top:30px;
    padding-left:20px;
    padding-top:5px;
    padding-bottom:5px;
    font-size:medium;
}
.form-control1
{
   margin-left:80px;
    margin-top:30px;
    padding-left:20px;
    padding-top:5px;
    padding-bottom:5px;
    font-size:medium;
}
.form-control2
{
   margin-left:38px;
    margin-top:30px;
    padding-left:20px;
    padding-top:5px;
    padding-bottom:5px;
    font-size:medium;
}
.button
{
   margin-left:350px;
   font-size:x-large;
   margin-top:10px;
    cursor: pointer;
}
.button1
{
   margin-left:320px;
   font-size:x-large;
   margin-top:10px;
    cursor: pointer;
}
.cmp
{
    padding-left:300px;
    font-size:large;
}
.cmp1
{
    padding-left:320px;
    font-size:large;
}
.panel
{
    padding-left:00px;    
}
 

    </style>
</head>
<body>
    <table align="center" class="style1">
      <tr>
        <td>
            
            <form id="form" runat="server">
                <div class="">
                   <b> <p class="lbl">Forgot Password</p></b>
                    <br />
                        <b><asp:Label ID="loginError" class="cmp" runat="server" ForeColor="Red"></asp:Label>
                        </b>
                    <br />
                        <b><asp:Label ID="Label1" class="lblname" runat="server" 
                        Text="User Name"></asp:Label>
                         
                         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                         
                         <asp:TextBox ID="txtUser"  placeholder="User name" 
                        class="form-control" runat="server" 
                            Width="200px" BorderColor="Black" Height="19px"></asp:TextBox>
                         </b>  <br />
                         <b><asp:RequiredFieldValidator ID="rqUser" runat="server" class="cmp"
                        ErrorMessage="User Name Required." ControlToValidate="txtUser" 
                        ForeColor="Red" ValidationGroup="main"></asp:RequiredFieldValidator>
                        </b>
                    <br />
                        <b><asp:Label ID="lblmnumber" class="lblname" runat="server" 
                        Text="Mobile Number"></asp:Label>
                         
                         <asp:TextBox ID="txtmnumber"  placeholder="Enter Mobile Number" 
                        class="form-control" runat="server" 
                            Width="200px" BorderColor="Black" Height="19px"></asp:TextBox>
                         </b>  <br />

                      <b> 
                    <asp:RequiredFieldValidator ID="rqNumber" runat="server" class="cmp"
                        ErrorMessage="MobileNumber Required" ControlToValidate="txtmnumber" 
                        ForeColor="Red" ValidationGroup="main"></asp:RequiredFieldValidator>
                        </b>
                    <br />
                                           
                      
                      <asp:Button ID="btnverify" class="button"  type="button" runat="server"  BorderColor="Black"
                           Text="Verify " BackColor="#F0F0F0" Height="37px"  Width="79px" 
                        ValidationGroup="main"/>
                </div><br />
                      <asp:Panel ID="panelpwd"  runat="server" Height="330px" >
                            
                            <h1 class="lbl"> Reset Password </h1>
                            <br />
                            <b><asp:Label ID="lblnpwd" class="lblname" runat="server" Text="New Password"></asp:Label>
                               &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                               <asp:TextBox ID="txtnpwd" runat="server" BorderColor="Black" 
                                   class="form-control" Height="19px" placeholder="Enter New password" 
                                   Width="186px"></asp:TextBox>
                               <br /> <br />
                              
                               <asp:Label ID="lblcpwd" runat="server" class="lblname" Text="ConfirmPassword"></asp:Label>
                               <asp:TextBox ID="txtcpwd" runat="server" BorderColor="Black" 
                                   class="form-control" Height="19px" placeholder="Enter Confirm Password" 
                                   Width="186px"></asp:TextBox>
                            </b><br />
                               <asp:CompareValidator ID="CompareValidatorpwd" class="cmp1" runat="server" 
                                   ErrorMessage="Password is not match" ControlToCompare="txtnpwd" 
                                   ControlToValidate="txtcpwd" ForeColor="Red"></asp:CompareValidator>
                               <br />
                               <asp:Button ID="btnupwd" runat="server" BackColor="#F0F0F0" BorderColor="Black" 
                                   class="button1" Height="37px" Text="UpadtePassword" type="button" 
                                   Width="200px" />
                         </asp:Panel>
                
                <br />
                <br />
            </form>    

       </td>     
      </tr>
     
    </table>
    
</body>
</html>
