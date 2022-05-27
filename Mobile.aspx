<%@ Page Title="" Language="VB" MasterPageFile="~/site.master" AutoEventWireup="false" CodeFile="Mobile.aspx.vb" Inherits="Mobile" %>

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
    transition: 0.3s;
    border: 2px solid black;
}
</style>
 

<asp:DataList ID="DataList1"  runat="server"  DataSourceID="tblmobile" RepeatColumns="3" CellPadding="25" 
                CellSpacing="25" Width="100%" BorderColor="Black" BorderStyle="Solid" BorderWidth="2px" DataKeyField="ProductId" >
    <ItemTemplate>
     <style>
            td
               {
                  padding:10px;
               }
     </style>
    <center >
        <asp:Image ID="Image2" runat="server"  ImageUrl='<%# Eval("Proimage", "{0}") %>' Height="250px" Width="250px" />
        <br /><br />
        <asp:Label ID="txtpname"  runat="server" Text='<%# Eval("Productname", "{0}") %>' Width="100px" ></asp:Label>
        <br />
        Price:
            ₹<asp:Label ID="txtprice" runat="server" Text='<%# Eval("Price") %>' 
            Width="0px" ></asp:Label> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <asp:Button ID="btnviewdetails" class="btn btn-default" runat="server" Text="View Details" Width="191px" 
        CommandArgument='<%# Eval("productId") %>' CommandName="viewdetail" />
      <br /> <br />
    </center>
    </ItemTemplate>
    <SelectedItemStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
  </asp:DataList>
  
      <asp:AccessDataSource ID="tblmobile" runat="server" DataFile="~/App_Data/electoshop.accdb" 
        OldValuesParameterFormatString="original_{0}" 
        SelectCommand="SELECT * FROM [Product] WHERE ([Category] = ?)" >
        <SelectParameters>
            <asp:Parameter DefaultValue="Mobile" Name="Category" Type="String" />
        </SelectParameters>
    </asp:AccessDataSource>
    
</asp:Content>

