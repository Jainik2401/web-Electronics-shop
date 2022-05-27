<%@ Page Title="" Language="VB" MasterPageFile="~/site.master" AutoEventWireup="false" CodeFile="mycart.aspx.vb" Inherits="mycart" %>

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
</style>
<asp:GridView ID="GridView1" class="mx-auto" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="Black" 
BorderStyle="None" BorderWidth="1px"  CellPadding="3" ShowFooter="True">
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
            <asp:CommandField DeleteText="Remove" ShowDeleteButton="True" />
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
    <div style="margin-left:470px;">
<asp:Button ID="btncshopping" class="btn btn-default" style="margin-right:30px;" runat="server"  Font-Size="Large" Text="Continue Shopping" 
    Width="187px" />
    <asp:Button ID="Checkout" class="btn btn-default" runat="server" Font-Size="Large" Text="Checkout" 
    Width="187px" /></div>
    <br />

</asp:Content>

