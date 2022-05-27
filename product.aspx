<%@ Page Title="" Language="VB" MasterPageFile="~/admin.master" AutoEventWireup="false" CodeFile="product.aspx.vb" Inherits="addproduct" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<style>
.frm
{
    padding-left:30px;
    padding-top:0px
   
}
 .btn
 {
    font-weight: 500;
    background-color:#269900;
    color:white;
   
 }
 .btn:hover {
    color: red;
    text-decoration: none;
}
.btn-default:hover 
{
    background-color: #1394a785;
    color:black;
    transition: 0.7s;
    border: 2px solid black;
}
hr
{
    border-bottom:2px solid #000;
    margin-left:15px;
    margin-right:15px;
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
    margin-left:235px;
    font-family:Sans-Serif;
}    
.control-label
{
    padding-left:10px;
}

</style>

<div class="container">
   
    <div class="row" style="width:900px;height:100px;background-color:#1394a785;">
        <div class="frm">  
               <asp:Button ID="btnaddpro" runat="server" class="btn btn-default" Text="Add Product" Width="150px" Height="50px" UseSubmitBehavior="False" />&nbsp;&nbsp;&nbsp;
               <asp:Button ID="btnupdatepro" runat="server" class="btn btn-default" Text="Update"   Width="150px" Height="50px"  UseSubmitBehavior="False"/>&nbsp;&nbsp;&nbsp;
               <asp:Button ID="btndeletepro" runat="server" class="btn btn-default" Text="Delete" Width="150px" Height="50px"  UseSubmitBehavior="False" />&nbsp;&nbsp;&nbsp;
               <asp:Button ID="btnviewpro"   runat="server" class="btn btn-default" Text="View Details" Width="150px" Height="50px"  UseSubmitBehavior="False" />    
         </div>     
    </div> <br />
    
    <div class="row">
        <asp:Panel ID="paneladd"  runat="server" style="width:900px;background-color:#1394a785;" BorderStyle="Solid">
           <h1 align="center">Enter Product Details</h1>
            <hr /><br />
             <div>
                <b><asp:Label ID="lblipid" class="lbl" runat="server" Text="Product ID:"></asp:Label> </b> 
                <asp:TextBox ID="txtipid" class="txt" runat="server" Width="360px"  ReadOnly="True"></asp:TextBox>
            </div>
                 <asp:RequiredFieldValidator ID="rqpid" class="error" runat="server" ErrorMessage="Product Id is Empty" ControlToValidate="txtipid" 
                    ForeColor="Red"></asp:RequiredFieldValidator> <br />
             <div>
                <b><asp:Label ID="lblicat" class="lbl" runat="server" Text="Category:"></asp:Label></b>
                  <asp:DropDownList ID="ddlist"  style=" border: 2px solid black; margin-left:68px; padding-left:10px;" runat="server" Width="360px">
                        <asp:ListItem>Mobile</asp:ListItem>
                        <asp:ListItem>Laptop</asp:ListItem>
                        <asp:ListItem>TV & Refrigerators</asp:ListItem>
                 </asp:DropDownList>  
             </div> <br />      
            <div> 
                <b><asp:Label ID="lblipname" class="lbl" runat="server" Text="Product Name:"></asp:Label> </b> 
                <asp:TextBox ID="txtipname" style=" border: 2px solid black; margin-left:25px; padding-left:10px;" runat="server" Width="360px" ></asp:TextBox>
            </div>
                <asp:RequiredFieldValidator ID="rqpname" class="error" runat="server" ErrorMessage="Product Name is Empty" ControlToValidate="txtipname" 
                    ForeColor="Red" ValidationGroup="insert"></asp:RequiredFieldValidator><br />  
            <div>
                <b><asp:Label ID="lblidec" class="lbl"  runat="server" Text="Description:"></asp:Label> </b> 
                <asp:TextBox ID="txtidec"  style=" border: 2px solid black; margin-left:50px;padding-left:10px;" 
                runat="server" Width="360px" TextMode="MultiLine"></asp:TextBox>
            </div>
                <asp:RequiredFieldValidator ID="rqdec" class="error" runat="server" 
                    ErrorMessage="Description is Empty" ControlToValidate="txtidec" 
                    ForeColor="Red" ValidationGroup="insert"></asp:RequiredFieldValidator><br />
             <div> 
                <b><asp:Label ID="lbliprice" class="lbl" runat="server" Text="Price:"></asp:Label> </b> 
                <asp:TextBox ID="txtiprice" style=" border: 2px solid black; margin-left:103px;padding-left:10px;" runat="server" Width="300px"></asp:TextBox>
            </div>
                <asp:RequiredFieldValidator ID="rqprice" class="error" runat="server" ErrorMessage="Price is Empty" ControlToValidate="txtiprice" 
                    ForeColor="Red" ValidationGroup="insert"></asp:RequiredFieldValidator><br />
             <div>
               <b><asp:Label ID="lbliproimg" class="lbl" runat="server" Text="Product Image:"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp; </b>
               <asp:FileUpload ID="iproimage" runat="server" Width="296px" />
            </div>
                <asp:RequiredFieldValidator ID="rqiproimg" class="error" runat="server" ErrorMessage="Product Image is Empty" ControlToValidate="iproimage" 
                    ForeColor="Red" ValidationGroup="insert"></asp:RequiredFieldValidator><br />
                <hr />
            <div>
                <asp:Button ID="btninsert" class="btn btn-default" style="margin-left:270px;" runat="server" Text="Insert" Width="150px" ValidationGroup="insert" />
                <asp:Button ID="btniclear" class="btn btn-default" style="margin-left:90px;" runat="server" Text="Clear" Width="150px" />    
            </div><br /> 
        </asp:Panel> 
    </div>

    <div class="row">
        <asp:Panel ID="panelupdate"  runat="server" style="width:900px;background-color:#1394a785;" BorderStyle="Solid">
           <h1 align="center">Edit Product Details</h1>
            <hr /><br />
             <div>
                <b><asp:Label ID="lbluproid" class="lbl" runat="server" Text="Product ID:"></asp:Label> </b> 
                <asp:TextBox ID="txtuproid" class="txt" runat="server" Width="360px"></asp:TextBox>
                <asp:Button ID="btnufind" runat="server" class="btn btn-default" Text="Find" Height="42px" Width="100px" />
            </div><br />
             <div>
                <b><asp:Label ID="lblucat" class="lbl" runat="server" Text="Category:"></asp:Label></b>
                  <asp:DropDownList ID="ddllist1"  style=" border: 2px solid black; margin-left:68px; padding-left:10px;" runat="server" Width="360px">
                        <asp:ListItem>Mobile</asp:ListItem>
                        <asp:ListItem>Laptop</asp:ListItem>
                         <asp:ListItem>TV & Refrigerators</asp:ListItem>
                 </asp:DropDownList>  
             </div><br />      
            <div> 
                <b><asp:Label ID="lblupname" class="lbl" runat="server" Text="Product Name:"></asp:Label> </b> 
                <asp:TextBox ID="txtupname" style=" border: 2px solid black; margin-left:25px; padding-left:10px;" runat="server" Width="360px" ></asp:TextBox>
            </div><br />  
            <div>
                <b><asp:Label ID="lbludec" class="lbl"  runat="server" Text="Description:"></asp:Label> </b> 
                <asp:TextBox ID="txtudec" style=" border: 2px solid black; margin-left:50px;padding-left:10px;" runat="server" 
                Width="360px" TextMode="MultiLine"></asp:TextBox>
            </div><br />
            <div> 
                <b><asp:Label ID="lbluprice" class="lbl" runat="server" Text="Price:"></asp:Label> </b> 
                <asp:TextBox ID="txtuprice" style=" border: 2px solid black; margin-left:103px;padding-left:10px;" 
                    runat="server" Width="300px"></asp:TextBox>
            </div><br />
             <div>
               <b><asp:Label ID="lbluproimg" class="lbl" runat="server" Text="Product Image:"></asp:Label> &nbsp;&nbsp;&nbsp;&nbsp; </b>
               <asp:FileUpload ID="uproimg" runat="server" Width="296px" />
            </div><br />
             <hr />
            <div>
                <asp:Button ID="btnupdate" class="btn btn-default" style="margin-left:270px;"  runat="server" Text="Update" Width="150px" />
                 <asp:Button ID="btnuclear" class="btn btn-default" style="margin-left:90px;"  runat="server" Text="Clear" Width="150px" />    
            </div>
            <br /> 
        </asp:Panel> 
    </div>

      <div class="row">
        <asp:Panel ID="paneldelete"  runat="server" 
              style="width:900px;background-color:#1394a785;" BorderStyle="Solid">
           <h1 align="center">Delete Product Details</h1>
            <hr /><br />

            <div>
                <b><asp:Label ID="lbldpid" class="lbl" runat="server" Text="Product ID:"></asp:Label> </b> 
                <asp:TextBox ID="txtdpid" class="txt" runat="server" Width="360px"></asp:TextBox>
                <asp:Button ID="btnfind1" runat="server" class="btn btn-default" Text="Find" 
                    Height="42px" Width="100px" />
            </div><br />
             <div>
                <b><asp:Label ID="lbldcat" class="lbl" runat="server" Text="Category:"></asp:Label></b>
                  <asp:DropDownList ID="ddlist2"  style=" border: 2px solid black; margin-left:68px; padding-left:10px;" runat="server" Width="360px">
                        <asp:ListItem>Mobile</asp:ListItem>
                        <asp:ListItem>Laptop</asp:ListItem>
                         <asp:ListItem>TV & Refrigerators</asp:ListItem>
                 </asp:DropDownList>  
             </div><br />      
            <div> 
                <b><asp:Label ID="lbldpname" class="lbl" runat="server" Text="Product Name:"></asp:Label> </b> 
                <asp:TextBox ID="txtdpname" style=" border: 2px solid black; margin-left:25px; padding-left:10px;" runat="server" Width="360px" ></asp:TextBox>
            </div><br />  
            <div>
                <b><asp:Label ID="lblddec" class="lbl"  runat="server" Text="Description:"></asp:Label> </b> 
                <asp:TextBox ID="txtddec" style=" border: 2px solid black; margin-left:50px;padding-left:10px;" 
                    runat="server" Width="360px" TextMode="MultiLine"></asp:TextBox>
            </div><br />
            <div> 
                <b><asp:Label ID="lbldprice" class="lbl" runat="server" Text="Price:"></asp:Label> </b> 
                <asp:TextBox ID="txtdprice" style=" border: 2px solid black; margin-left:103px;padding-left:10px;" runat="server" Width="300px"></asp:TextBox>
            </div><br />
             <div>
               <b><asp:Label ID="lbldproimg" class="lbl" runat="server" Text="Product Image:"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp; </b>
               <asp:FileUpload ID="dproimg" runat="server" Width="296px" />
            </div><br />
             <hr />
             <div>
                <asp:Button ID="btndelete" class="btn btn-default" style="margin-left:270px;"  runat="server" Text="Delete" Width="150px" />
                 <asp:Button ID="btndclear" class="btn btn-default" style="margin-left:90px;"  runat="server" Text="Clear" Width="150px" />    
            </div> <br /> 
        </asp:Panel> 
    </div><br />

  <div class="row" style="margin-left:-15px;margin-top:-20px;">
        <div class="col-lg-12" >

            <asp:Panel ID="panelselect" runat="server"  style="width:900px;background-color:#1394a785;" BorderStyle="Solid"> 
              <br />  <h1>&nbsp;&nbsp;&nbsp; Select Product to View</h1><hr />
                <div class="col-lg-10">
                   <asp:GridView ID="GridView1"  style="margin-left:10px; " runat="server" AutoGenerateColumns="False"  DataKeyNames="ProductId"
                             DataSourceID="tblproduct" AllowSorting="True"  BackColor="Black" BorderColor="Black" BorderStyle="Solid" BorderWidth="2px" 
                             CellPadding="2" ForeColor="Black" Width="864px" CellSpacing="3">
                             <Columns>
                                    <asp:CommandField ShowSelectButton="True" ButtonType="Button" >
                                     <ControlStyle BackColor="#269900" ForeColor="White" />
                                    </asp:CommandField>
                                    <asp:BoundField DataField="ProductId" HeaderText="ProductId" SortExpression="ProductId" Visible="true" >
                                    <ControlStyle ForeColor="#269900" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="Category" HeaderText="Category" SortExpression="Category" >
                                    <ControlStyle ForeColor="#269900" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="Productname" HeaderText="Productname" SortExpression="Productname" >
                                    <ControlStyle ForeColor="#269900" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" >
                                    <ControlStyle ForeColor="#269900" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price">
                                    <FooterStyle ForeColor="#269900" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="Proimage" HeaderText="Proimage" SortExpression="Proimage" >
                                    <ControlStyle ForeColor="#269900" />
                                    </asp:BoundField>
                                </Columns>
                                <HeaderStyle BackColor="#269900" ForeColor="White" Height="15px" 
                                    BorderColor="#003300" Font-Bold="True" HorizontalAlign="Center" />
                                <PagerStyle ForeColor="Black" HorizontalAlign="Right" />
                                <RowStyle BackColor="White" />
                                <SelectedRowStyle Font-Bold="True" />
                            </asp:GridView><br />
                            <asp:AccessDataSource ID="tblproduct" runat="server" DataFile="~/App_Data/electoshop.accdb" 
                                OldValuesParameterFormatString="original_{0}" 
                                SelectCommand="SELECT * FROM [Product]">
                            </asp:AccessDataSource>
                        </div>
            </asp:Panel>
        </div>
    </div>

        <div class="row" style="margin-left:-15px;margin-top:20px;">
           <asp:Panel ID="paneldetails" class ="frm" style="width:900px;background-color:#1394a785;" BorderStyle="Solid" runat="server">
                <h1>Products Details</h1>
                <hr />               
                        <div class="col-lg-4">
                         <asp:Image ID="proimg" runat="server" Width="250px" 
                                Height="250px" />
                        </div>
                     <div  class="row" style="line-height:2.5;font-weight:bold;font-size:16px">
                        <div class="col-lg-5" style="text-align:right">Productid:</div>
                        <div class="col-lg-5" ><asp:Label ID="lblid"  class="control-label" runat="server" Text="Label"></asp:Label></div>
                        <br />
                        <div class="col-lg-5" style="text-align:right">Category:</div>
                        <div class="col-lg-5"><asp:Label ID="lblCategory" class="control-label" runat="server" Text="Label"></asp:Label></div>       
                        <br />
                        <div  class="col-lg-5" style="text-align:right">Productname:</div>
                        <div class="col-lg-5"><asp:Label ID="lblProductname" class="control-label" runat="server" Text="Label"></asp:Label></div>
                        <br />
                        <div class="col-lg-5" style="text-align:right">Description:</div>
                        <div class="col-lg-5"><b><pre style="font-weight:bold;font-size:17px;"><asp:Label ID="lblDescription" class="control-label" runat="server" Text="Label"></asp:Label></pre></b></div>
                       
                        <div class="col-lg-5" style="text-align:right">Price:</div>
                        <div class="col-lg-5"><asp:Label ID="lblPrice" class="control-label" runat="server" Text="Label"></asp:Label></div>
                        <br />
                      </div>   
            </asp:Panel>
        </div>
</div>

</asp:Content>

