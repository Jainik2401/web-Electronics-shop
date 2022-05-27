<%@ Page Title="" Language="VB" MasterPageFile="~/site.master" AutoEventWireup="false" CodeFile="home.aspx.vb" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPlaceHolder1">
<style>
        * {
          box-sizing: border-box;
        }
        .row
        {
            padding:10px;
            padding-left:20px;
         }
        .column {
          float: left;
          width: 48.33%;
          padding: 20px;
        }
        
       /* Clearfix (clear floats) */
        .row::after {
          content: "";
          clear: both;
          display: table;
        }

        </style>
   
     <div class="row">
          <div class="column" >
              <asp:Image ID="Image1" runat="server" ImageUrl="photos/h5.png" style="width:102%; height: 276px;"/>
          
          </div>
          <div class="column">
            <asp:Image ID="Image2" runat="server" ImageUrl="photos/h2.jpg" style="width:102%; height: 276px;"/>
          </div>
      </div>
          <div class="row">
          <div class="column" >
            <asp:Image ID="Image7" runat="server" ImageUrl="~/photos/p1.jpg" Height="300px" Width="900px" BorderColor="black" BorderStyle="Solid" />
        </div>
       </div>
        <div class="row">
          <div class="column" >
         <asp:Image ID="Image3" runat="server" ImageUrl="photos/h3.jpg" style="width:900px; height: 276px;"/>
          </div>
       </div>
         <div class="row">
          <div class="column" >
         <asp:Image ID="Image6" runat="server" ImageUrl="photos/p2.jpg" style="width:900px; height: 276px;"/>
          </div>
       </div>
       <div class="row">
          <div class="column" >
          <asp:Image ID="Image4" runat="server" ImageUrl="photos/h8.jpg" style="width:900px; height: 276px;"/>
          </div>
       </div>
        <div class="row">
          <div class="column" >
           <asp:Image ID="Image5" runat="server" ImageUrl="photos/h7.jpg" style="width:900px; height: 276px;"/>
          </div>
       </div>
</asp:Content>



