    <%@ Page Title="" Language="VB" MasterPageFile="~/site.master" AutoEventWireup="false" CodeFile="aboutus.aspx.vb" Inherits="aboutus" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style3
        {
            width: 100%;
            padding:0px 0px 0px 20px;            
        }
        .style4
        {
            width: 224px;
        }
        .style5
        {
            width: 282px;
        }
        .style6
        {
            width: 241px;
        }
        .img-rounded
        {
            border-radius:100%;
        }  
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

     <div class="container" style="background: url('photos/aboutbg3.png'); background-size:100% 100%;"><div></div>
       <br />   <br /> 
    <div class="about">
         <h1> MEET OUR EXPERTS</h1> 
   </div>
   <br /><br />  

      <table class="style3">
            <td class="style4" class="img">
                <asp:Image ID="Image2" runat="server" class="img-rounded" Height="300px" ImageUrl="~/photos/a1.jpg" Width="289px" />
           </td>
            <td class="style5" class="img">
                <asp:Image ID="Image3" runat="server" class="img-rounded" Height="300px" ImageUrl="~/photos/a2.jpg" Width="300px" />
            </td>
            <td class="style6" class="img">
                <asp:Image ID="Image4" runat="server" class="img-rounded" Height="300px" ImageUrl="~/photos/a3.jpg"  Width="300px" />
            </td>
        </tr>
    </table>
      <br /><br />
      	<h1>A Few Words About Us</h1><br>
            <b class="about1">Electronic shop  is an award-winning Shop in Surat. We provides If you're considering a new laptop, looking for a powerful new car stereo or shopping for a new HDTV, we make it easy to find exactly what you need at a price you can afford. We offer Every Day Low Prices on TVs, laptops,phones. </b>
			<br /> <br />  
</asp:Content>

