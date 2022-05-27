<%@ Page Title="" Language="VB" MasterPageFile="~/site.master" AutoEventWireup="false" CodeFile="signup.aspx.vb" Inherits="signup" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<style>
hr
{
    border-bottom:2px solid #000;
    margin-left:15px;
    margin-right:15px;
}
.hed
{
    margin-left:20px;
    font-size:50px;    
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
.form-group {
    margin-bottom: -1rem;
    margin-left:30px;
}
</style>

 <div class="container" style="margin:0;width:100%;background: url('photos/aboutbg3.png'); background-size:100% 100%;">
<form class="form-horizontal"  action="#" >
<div class="form-group">
<div >
    <h1 class="hed"> Register</h1>
    <hr />
</div>
   
    <div class="col-sm-12">
        <asp:TextBox class="form-control" ID="txtcid" style="padding-left:10px;" runat="server" placeholder="CustomerId" 
        ReadOnly="True" Width="800px"></asp:TextBox>
    </div>
  </div><br />
  <div class="form-group">
     <div class="col-sm-12">
        <asp:TextBox class="form-control" ID="txtfname"  style="padding-left:10px;" runat="server" placeholder="Enter Firstname"
         Width="800px" ></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"  ErrorMessage="Enter First name" ForeColor="Red" 
            ControlToValidate="txtfname" ValidationGroup="reg"></asp:RequiredFieldValidator>
    </div>
  </div>
  <div class="form-group">
      <div class="col-sm-12">
        <asp:TextBox class="form-control" ID="txtlname" style="padding-left:10px;" runat="server" placeholder="Enter Lastname" 
        Width="800px" ></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Enter Last name" ForeColor="Red" 
            ControlToValidate="txtlname" ValidationGroup="reg"></asp:RequiredFieldValidator>
      </div>
  </div>
  <div class="form-group">
    <div class="col-sm-12"> 
        <asp:TextBox ID="txtcno" class="form-control" runat="server" style="padding-left:10px;" placeholder="Enter Contactno" TextMode="Number"
         Width="800px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Enter Conatctno" ForeColor="Red" 
        ControlToValidate="txtcno" ValidationGroup="reg"></asp:RequiredFieldValidator>
    </div>
  </div>
  <div class="form-group">
    <div class="col-sm-12">
        <asp:TextBox ID="txtadd" class="form-control" runat="server"  style="padding-left:10px;" placeholder="Enter Address"
         Width="800px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Enter Address" ForeColor="Red" ControlToValidate="txtadd" 
            ValidationGroup="reg"></asp:RequiredFieldValidator>
    </div>
  </div>
  <div class="form-group">
    <div class="col-sm-12">
        <asp:TextBox ID="txtpincode" class="form-control" runat="server" style="padding-left:10px;" placeholder="Enter Pincode" TextMode="Number"
         Width="800px" ></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Enter Pincode" ForeColor="Red" 
            ControlToValidate="txtpincode" ValidationGroup="reg"></asp:RequiredFieldValidator>
    </div>
  </div>
 
  <div class="form-group">
     <div class="col-sm-12">
        <asp:TextBox ID="txtemailid"  class="form-control" runat="server" style="padding-left:10px;"  placeholder="Enter Email" TextMode="Email"
         Width="800px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server"  ErrorMessage="Enter EmailId" ForeColor="Red" 
            ControlToValidate="txtemailid" ValidationGroup="reg"></asp:RequiredFieldValidator>
    </div>
  </div>
  <div class="form-group">
    <div class="col-sm-12">
        <asp:TextBox ID="txtuname"  class="form-control" runat="server"  style="padding-left:10px;" placeholder="Enter Username" 
        Width="800px" ></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="Enter Username" ForeColor="Red" ControlToValidate="txtuname" 
            ValidationGroup="reg"></asp:RequiredFieldValidator>
    </div>
  </div>
  <div class="form-group">
    <div class="col-sm-12">
        <asp:TextBox ID="txtpwd"  class="form-control" runat="server"  style="padding-left:10px;" placeholder="Enter Password" TextMode="Password"
         Width="800px" ></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="Enter Password" ForeColor="Red" ControlToValidate="txtpwd" 
            ValidationGroup="reg"></asp:RequiredFieldValidator> 
        <asp:TextBox ID="txtcpwd"  style="margin-top:-1px;padding-left:10px;" class="form-control" runat="server" placeholder="Enter Confirm Password" 
            TextMode="Password"  Width="800px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ErrorMessage="Enter Confirm Password" ForeColor="Red" 
             ControlToValidate="txtcpwd" ValidationGroup="reg"></asp:RequiredFieldValidator>
         <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Password is mismatch" ControlToCompare="txtpwd" 
             ControlToValidate="txtcpwd" ForeColor="Red" ValidationGroup="reg"></asp:CompareValidator>
    </div>
    </div>
     <div class="form-group">
     <div class="col-sm-12">
        <asp:FileUpload ID="cusimg" runat="server" />
        <br />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server"   ErrorMessage="Enter Image" ForeColor="Red" 
             ControlToValidate="cusimg" ValidationGroup="reg"></asp:RequiredFieldValidator><br />
    </div>
  </div>
  <div class="form-group"> 
    <div class="col-sm-offset-2 col-sm-10">
       <asp:Button class="btn btn-default" style="margin-left:50px;" ID="btnregister" runat="server" Text="Register" Width="272px" ValidationGroup="reg" />
        <asp:Button ID="btnreset" style="margin-left:50px;" class="btn btn-default" runat="server" Text="Reset"    Width="272px" />
        <asp:Button ID="btnlogin" runat="server" class="btn btn-default" style="width:100%" Text="Already Have an Account ! Log In here." />
  </div>
</form><br />
</div>
</asp:Content>

