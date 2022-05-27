<%@ Page Title="" Language="VB" MasterPageFile="~/site.master" AutoEventWireup="false" CodeFile="viewdetails.aspx.vb" Inherits="viewdetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<style type="text/css">
.style3
{
     margin-top:0px;
     margin-right: 0px;
}
.style4
{
     margin-top:0px;   
     padding-left:50px;
}
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<asp:DataList class="mx-auto" ID="DataList1" Width="900px" runat="server" DataKeyField="ProductId"  DataSourceID="tblviewdetails" 
    RepeatDirection="Horizontal" BorderColor="Black" BorderStyle="Solid" BorderWidth="2px" RepeatColumns="3">
    <ItemTemplate>
    <table class="w-100">
    <tr>
        <td class="style3">
            <br /><br />
            <asp:Image ID="proimg" style="margin:10px 0px 20px 20px;" runat="server" Height="400px" ImageUrl='<%# Eval("Proimage", "{0}") %>'
                 Width="400px" />
         </td>
       <td class="style4" align="left" >
         Category:
        <asp:Label ID="CategoryLabel" runat="server" Text='<%# Eval("Category") %>' />
        <br />
        Productname:
        <asp:Label ID="ProductnameLabel" runat="server" Text='<%# Eval("Productname") %>' />
        <br />
        Description:
        <asp:Label ID="DescriptionLabel" runat="server" Text='<%# Eval("Description") %>' />
        <br />
        Price:₹<asp:Label ID="PriceLabel" runat="server" Text='<%# Eval("Price") %>' />
        <br />
        Quantity: 
           <asp:TextBox ID="txtque" runat="server" TextMode="Number"></asp:TextBox>
        <br />
           <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
               ControlToValidate="txtque" ErrorMessage="Enter the Quantity" ForeColor="Red" 
               ValidationGroup="add"></asp:RequiredFieldValidator>
           <br />
            </td>
</tr>
      
</table>
        <br />
        <asp:ImageButton ID="ImageButton2" style="margin:0 0 0 200px;" runat="server" Height="177px" 
            ImageUrl="~/photos/add1.jpg" Width="453px" CommandName="addtocart"
            CommandArgument='<%# Eval("ProductId") %>' ValidationGroup="add"  />
        <br />
    </ItemTemplate>
    </asp:DataList>
    <asp:AccessDataSource ID="tblviewdetails" runat="server" DataFile="~/App_Data/electoshop.accdb" 
        OldValuesParameterFormatString="original_{0}" 
        SelectCommand="SELECT * FROM [Product] WHERE ([ProductId] = ?)">
        <SelectParameters>
            <asp:QueryStringParameter Name="ProductId" QueryStringField="ProductId" 
                Type="Int32" />
        </SelectParameters>
    </asp:AccessDataSource>
</asp:Content>

