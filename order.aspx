<%@ Page Title="" Language="VB" MasterPageFile="~/admin.master" AutoEventWireup="false" CodeFile="order.aspx.vb" Inherits="order" %>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">    
<style>
.frm
{
    padding-left:0px;
    padding-top:10px;
   
}
.btn
{
    font-weight: 500;
    background-color:#269900;
    color:white;
}
.btn:hover 
{
    color: red;
    text-decoration: none;
}
.btn-default:hover {
    background-color: #1394a785;
    color:black;
    transition: 0.7s;
    border: 2px solid black;
}
hr
{
  margin-left:19px;
   border-bottom:2px solid #000;
   margin-right:20px;
}
.lbl
{
    font-family:none;
    font-size:larger;
    margin-left:80px;
  
}    
.txt
{
    border: 2px solid black; 
    padding-left:10px;
    margin-left:50px;
}

.error
{
    margin-left:245px;
    font-family:Sans-Serif;
}
.idd
{
   margin-top:20px;
    margin-left:30px;
    }
</style>

<div class="container">

       <div class="row">
        <div class="frm" >
       <asp:Panel ID="panelview"  runat="server" style="width:900px;background-color:#1394a785;" BorderStyle="Solid">
           <h1 style="margin-left:30px;">Order Details</h1><hr />
          <br />
            
            <asp:GridView ID="GridView1" runat="server" DataSourceID="AccessDataSource2" BackColor="Black" 
                BorderColor="Black" BorderStyle="Solid" BorderWidth="2px" CellSpacing="2"  
                AutoGenerateColumns="False" CellPadding="4" style="margin-left:10px;margin-right:10px;">
                <Columns>
                    <asp:BoundField DataField="OrderId" HeaderText="OrderId"  SortExpression="OrderId" />
                    <asp:BoundField DataField="Customerid" HeaderText="Cid"  SortExpression="Customerid" />
                    <asp:BoundField DataField="ProductId" HeaderText="PId"  SortExpression="ProductId" />
                    <asp:BoundField DataField="Category" HeaderText="Category"  SortExpression="Category" />
                    <asp:BoundField DataField="Orderquantity" HeaderText="Quantity"  SortExpression="Orderquantity" />
                    <asp:BoundField DataField="Totalprice" HeaderText="Totalprice" SortExpression="Totalprice" />
                    <asp:BoundField DataField="Orderdate" HeaderText="Orderdate" SortExpression="Orderdate" />
                    <asp:BoundField DataField="Address" HeaderText="Address"  SortExpression="Address" />
                    <asp:BoundField DataField="Mobilenumber" HeaderText="MobileNo"  SortExpression="Mobilenumber" />
                </Columns>
                <HeaderStyle BackColor="#269900" Font-Bold="True" ForeColor="White"  HorizontalAlign="Center" Width="200px" />
                 <RowStyle BackColor="#E3EAEB" ForeColor="Black" />
                  <PagerStyle HorizontalAlign="Right" ForeColor="Black" />
            </asp:GridView>
            <br /> 
            <asp:AccessDataSource ID="AccessDataSource2" runat="server" 
                DataFile="~/App_Data/electoshop.accdb" 
                SelectCommand="SELECT * FROM [order_details]"></asp:AccessDataSource>
        </asp:Panel> 
     </div>
  </div>
</div>


</asp:Content>

