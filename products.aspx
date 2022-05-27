<%@ Page Title="" Language="VB" MasterPageFile="~/site.master" AutoEventWireup="false" CodeFile="products.aspx.vb" Inherits="search" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>


<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPlaceHolder1">
<style>
* {
       box-sizing: border-box;
}
.column 
 {
       padding-left:20px;
       float: left;
       width: 30.33%;
       padding: 19px;
}
/* Clearfix (clear floats) */
.row::after 
{
      content: "";
      clear: both;
      display: table;  
      margin-right: -85px
}
.price
 {
    font-size:20PX;
    padding-left:50px;
 }
       
</style>
      
<div class="container" style="background: url('photos/loginbg.jpg');">
    <div class="aboutmenu">
        <h1>  <b>MOBILES</b></h1>
     </div>
         <div class="row1">
           <div class="column">
                 <asp:Image ID="Image1"  runat="server" ImageUrl="photos/m1.jpg" Height="300px"  Width="100%" /><br /><br />
                  <b class="price">IPhone 6s</b>
                  <b class="price">Price=40000</b>
           </div>
           <div class="column">
                <asp:Image ID="Image2" runat="server" ImageUrl="photos/m9.jpg" Height="300px" 
                     Width="100%"/><br /><br />
                  <b class="price">SAMSUNG</b>
                  <b class="price">Price=15000</b>
          </div>
          <div class="column">
              <asp:Image ID="Image3" runat="server" ImageUrl="photos/m3.jpg" Height="300px"  Width="100%" /><br /><br />
                  <b class="price">VIVO Y66</b>
                  <b class="price">Price=18000</b>
          </div><br />
        </div><br /><br />
        <div class="row1">
          <div class="column">
              <asp:Image ID="Image4" runat="server" ImageUrl="photos/m4.jpg" Height="300px"  Width="100%" />
            <br /><br />
                  <b class="price">VIVO Y81</b>
                  <b class="price">Price=22000</b>
          </div>
          <div class="column">    
          <asp:Image ID="Image5" runat="server" ImageUrl="photos/m7.jpg" Height="300px" Width="100%" /><br /><br />
                  <b class="price">VIVO Y41</b>
                  <b class="price">Price=12000</b>
          </div>
          <div class="column">
            <asp:Image ID="Image6" runat="server" ImageUrl="photos/m2.jpg" Height="300px"  Width="100%" /><br /><br />
                  <b class="price">MI NOTE 5PRO</b>
                  <b class="price">Price=16000</b>
          </div>
        </div><br />           
        <div class="aboutmenu">
         <h1> <b>LAPTOP</b>  </h1>
    </div>
         <div class="row1">
             <div class="column">
                 <asp:Image ID="Image7" runat="server" ImageUrl="photos/lp1.jpg" Height="270px" Width="100%" /><br /><br />
                  <b class="price">LENOVO LAPTOP </b>
                  <b class="price">Price=30000</b>
             </div>
            <div class="column">
           <asp:Image ID="Image8" runat="server" ImageUrl="photos/lp2.jpg" Height="270px" Width="100%" /><br /><br />
                 <b class="price">HP LAPTOP</b>
                 <b class="price">Price=53000</b>
          </div>
          <div class="column">
            <asp:Image ID="Image9" runat="server" ImageUrl="photos/lp3.jpg" Height="270px"  Width="100%" /><br /><br />
                  <b class="price">DELL LAPTOP</b>
                  <b class="price">Price=35000</b>
          </div>
        </div>
        <br /><br />
        <div class="row1">
          <div class="column">
             <asp:Image ID="Image10" runat="server" ImageUrl="photos/lp4.jpg" Height="270px"  Width="100%" /><br /><br />
                  <b class="price">SONY LAPTOP</b>
                  <b class="price">Price=50000</b>
          </div>
          <div class="column"> 
             <asp:Image ID="Image11" runat="server" ImageUrl="photos/lp5.jpg" Height="270px"  Width="100%" /><br /><br />
                  <b class="price">LENOVO LAPTOP</b>
                  <b class="price">Price=39000</b>
          </div>
          <div class="column">
            <asp:Image ID="Image12" runat="server" ImageUrl="photos/lp7.jpg" Height="270px"  Width="100%" /><br /><br />
                  <b class="price">ACCER LAPTOP</b>
                  <b class="price">Price=55000</b>
          </div>
        </div> <br />
        <div class="aboutmenu">
         <h1>  <b style="padding-left:30px;"> TV </b>   </h1>
   </div>

         <div class="row1">
             <div class="column">
              <asp:Image ID="Image13" runat="server" ImageUrl="photos/tv1.jpg" Height="230px"  Width="100%" /><br /><br />
                  <b class="price">SONY BRAVIA </b>
                  <b class="price">Price=25000</b>
             </div>
            <div class="column">
             <asp:Image ID="Image14" runat="server" ImageUrl="photos/tv2.jpg" Height="230px"  Width="100%" /><br /><br />
                  <b class="price">SAMSUNG 80CM</b>
                  <b class="price">Price=15000</b>
          </div>
          <div class="column">
            <asp:Image ID="Image15" runat="server" ImageUrl="photos/tv3.jpg" Height="230px" Width="100%" /><br /><br />
                  <b class="price">PANASONIC 32"</b>
                  <b class="price">Price=20000</b>
          </div>
        </div>
        <br /><br />
        <div class="row1">
          <div class="column">
              <asp:Image ID="Image16" runat="server" ImageUrl="photos/tv4.jpg" Height="230px"  Width="100%" /><br /><br />
                  <b class="price">INTEX 80CM</b>
                  <b class="price">Price=19000</b>
          </div>
          <div class="column"> 
              <asp:Image ID="Image17" runat="server" ImageUrl="photos/tv5.jpg" Height="230px" Width="100%" /><br /><br />
                  <b class="price">PHILIPS 4K HDR</b>
                  <b class="price">Price=28000</b>
          </div>
          <div class="column">
              <asp:Image ID="Image18" runat="server" ImageUrl="photos/tv6.jpg" Height="230px"  Width="100%" /><br /><br />
                  <b class="price">LG 80CM</b>
                  <b class="price">Price=28000</b>
          </div>
        </div><br />    
         <div class="aboutmenu">
            <h1><b>  Refrigerators</b>   </h1>
         </div>
         
        <div class="row1">
          <div class="column">
            <asp:Image ID="Image19" runat="server" ImageUrl="photos/bosch.jpg" Height="340px" Width="100%" /><br /><br />
                  <b class="price">BOSCH 190L </b>
                  <b class="price">Price=25000</b>
          </div>
          <div class="column"> 
              <asp:Image ID="Image20" runat="server" ImageUrl="photos/f2.jpg" Height="340px"   Width="100%" /><br /><br />
                  <b class="price">SAMSUNG 192L</b>
                  <b class="price">Price=18000</b>
          </div>
          <div class="column">
              <asp:Image ID="Image21" runat="server" ImageUrl="photos/f3.jpg" Height="340px" Width="100%" /><br /><br />
                  <b class="price">LG 260L</b>
                  <b class="price">Price=25000</b>
          </div>
        </div>
         <br /> <br />    
</asp:Content>



