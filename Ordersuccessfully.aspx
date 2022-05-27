<%@ Page Title="" Language="VB" MasterPageFile="~/site.master" AutoEventWireup="false" CodeFile="Ordersuccessfully.aspx.vb" Inherits="Ordersuccessfully" %>

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
    transition: 0.7s;
    border: 2px solid black;
} 
</style> 
<div class="container">
    <asp:Image ID="Image1"  runat="server" Height="400px" ImageAlign="Middle" 
        ImageUrl="~/photos/success.png" Width="400px" /><br />

        <h1><center>YOUR ORDERS PLACED SUCCESSFULLY.</center></h1>
    <asp:Button ID="Button1" style="margin-left:600px;" class="btn btn-default" 
        runat="server" Text="Continue Shopping" 
        Width="253px" /><br /></div>
</asp:Content>

