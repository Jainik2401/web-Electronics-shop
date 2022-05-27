<%@ Page Title="" Language="VB" MasterPageFile="~/site.master" AutoEventWireup="false" CodeFile="contactus.aspx.vb" Inherits="contactus" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<style>
 .btn
 {
    font-weight: 500;
    background-color:black;
    color:white;
   
 }
 .btn:hover {
    color: red;
    text-decoration: none;
}
.btn-default:hover 
{
    background-color: #269900;
    color:white;
    transition:0.7s;
    border: 2px solid black;
}
</style>
    <div class="container" style="background: url('/WebSite1/photos/contact_bg.jpg'); background-size:100% 100%;">
    <div class="row">
		<div class="form-group col-sm-7" style="margin-left:10px;">
			<h2 style="color:#262626">Contact us today to solve your Query.Tell us About Yourself</h2>
			<h3 style="color:#262626">Contact us today to discuss how Big Data can help you!</h3>
		</div>
        <div class="col-lg-6 col-md-6 col-sm-7 contact-form-txt"><br>
          <form  method="post">
            <div class="w3pvt-w3ls-contact-mid">
              <div class="form-group contact-forms">
            <h4 style="margin-left:10px;">Name</h4>
                  <asp:TextBox ID="txtname" style="margin-left:10px;" runat="server" Width="440px"></asp:TextBox>
              </div>
              <div class="form-group contact-forms">
            <h4 style="margin-left:10px;">Email</h4>
            <asp:TextBox ID="txtemail" style="margin-left:10px;" runat="server" Width="440px" TextMode="Email"></asp:TextBox>
              </div>
              <div class="form-group contact-forms">
             <h4 style="margin-left:10px;">Phone no</h4>
             <asp:TextBox ID="txtphoneno" style="margin-left:10px;" runat="server" Width="440px" TextMode="Number"></asp:TextBox>
              </div>
              <div class="form-group contact-forms">
            <h4 style="margin-left:10px;">Message</h4>
            <asp:TextBox ID="txtmsg" style="margin-left:10px;" runat="server" Width="440px"></asp:TextBox>
              </div>
                <asp:Button ID="btnsend" style="margin-left:10px;" class="btn btn-default" runat="server" Text="Send" Width="151px" />
                <br />
            </div>
          </form>
        </div>
        <div class="address">
				<h2 style="color:#262626">Address:</h2><hr>
				<h3 style="color:#262626">786-prime shoppers,<br>
					Sitangar, Surat<br></h3><br />
                <h2 style="color:#262626">Time:</h2><hr>
                <h3>9:00 AM - 10:00 PM</h3><br>
				<h2 style="color:#262626">E-Mail:<hr><h2>
		         <h3>electo@gmail.com</a></h3><br>
        </div>
    </div>
    </div>
</asp:Content>

