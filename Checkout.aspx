<%@ Page Title="" Language="VB" MasterPageFile="~/site.master" AutoEventWireup="false" CodeFile="Checkout.aspx.vb" Inherits="Checkout" %>

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
<div class="mx-auto">
 <asp:Label ID="Label1" runat="server" Font-Size="X-Large" Text="OrderId:"></asp:Label>
    <asp:Label ID="Label2" runat="server" Font-Size="Large"></asp:Label>
    <br />
    <asp:Label ID="Label3" runat="server" Font-Size="X-Large" Text="Order Date:"></asp:Label>
    <asp:Label ID="Label4" runat="server" Font-Size="Large"></asp:Label>
    <br />
    <br />
    <asp:GridView ID="GridView1" class="mx-auto" runat="server" AutoGenerateColumns="False" 
        BackColor="White" BorderColor="Black" BorderStyle="None" BorderWidth="1px" 
        CellPadding="3" ShowFooter="True">
        <Columns>
            <asp:BoundField DataField="sno" HeaderText="Sr No">
            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="ProductId" HeaderText="Product Id">
            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
             <asp:ImageField DataImageUrlField="Proimage" HeaderText="Photo">
                <ControlStyle Height="150px" Width="100px" />
                <ItemStyle Height="150px" Width="100px" />
            </asp:ImageField>
            <asp:BoundField DataField="Category" HeaderText="Category">
            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
           <asp:BoundField DataField="Productname" HeaderText="Productname">
            <ItemStyle HorizontalAlign="Center" />  
            </asp:BoundField>     
            <asp:BoundField DataField="Description" HeaderText="Description">
            <ItemStyle HorizontalAlign="left" />
            </asp:BoundField>
            <asp:BoundField DataField="Price" HeaderText="Price">
            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="quantity" HeaderText="Quantity">
            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="totalprice" HeaderText="Total Price">
             <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
           
        </Columns>

        <FooterStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" Font-Bold="True" />
        <HeaderStyle BackColor="#269900" Font-Bold="True" ForeColor="White" HorizontalAlign="Center" />
        <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
        <RowStyle ForeColor="#000066" />
        <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#007DBB" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#00547E" />
    </asp:GridView>
    <br />
    <asp:Panel ID="Panel1" runat="server" Height="249px">
        <asp:RadioButton ID="RadioButton1" runat="server" 
    Font-Size="Large" Text="Use Default Address" />
        &nbsp;&nbsp;&nbsp;&nbsp;
        <asp:RadioButton ID="RadioButton2" runat="server" Font-Size="Large" Text="Use Default Mobile Number" />
        <br />   <br /> 
        <asp:Label ID="Label5" runat="server" Font-Size="X-Large" Text="For Differant Address"></asp:Label>
      
        <br />
        <asp:Label ID="Label6" runat="server" Text="Enter Address:" Font-Size="XX-Large"></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server" Height="98px" Width="353px"></asp:TextBox>
    </asp:Panel>
     <br />
       <br />
    <asp:GridView ID="GridView2" style="margin-left:150px;" BackColor="Black" 
                BorderColor="Black" BorderStyle="Solid" BorderWidth="2px" CellSpacing="2"  
                AutoGenerateColumns="False" CellPadding="4" runat="server" 
        DataSourceID="AccessDataSource1"  ForeColor="#333333" 
            GridLines="None">
        
        <Columns>
            <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
            <asp:BoundField DataField="Pincode" HeaderText="Pincode"  SortExpression="Pincode" />
            <asp:BoundField DataField="Contactno" HeaderText="Contactno" SortExpression="Contactno" />
        </Columns>
        <EditRowStyle BackColor="#2461BF" BorderStyle="Solid" ForeColor="Black" />
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#EFF3FB" />
        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
        <HeaderStyle BackColor="#269900" Font-Bold="True" ForeColor="White"  HorizontalAlign="Center" Width="200px" />
                 <RowStyle BackColor="#E3EAEB" ForeColor="Black" />
                  <PagerStyle HorizontalAlign="Right" ForeColor="Black" />
    </asp:GridView>
       <asp:AccessDataSource ID="AccessDataSource1" runat="server" 
        DataFile="~/App_Data/electoshop.accdb" 
        SelectCommand="SELECT [Address], [Pincode], [Contactno] FROM [Customer] WHERE ([Customerid] = ?)">
           <SelectParameters>
               <asp:SessionParameter Name="Customerid" SessionField="uid" Type="Int32" />
           </SelectParameters>
    </asp:AccessDataSource>
       <br />

       <asp:Button ID="btnporder" style="margin-left:630px;" 
        class="btn btn-default" runat="server" 
        Font-Size="Large" Text="Place Order" 
    Width="250px" />
    </div>
    
</asp:Content>

