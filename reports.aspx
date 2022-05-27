<%@ Page Title="" Language="VB" MasterPageFile="~/admin.master" AutoEventWireup="false" CodeFile="reports.aspx.vb" Inherits="reports" %>

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
.btn:hover 
{
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
    margin-left:250px;
    font-family:Sans-Serif;
}
</style>

<div class="container">
   
    <div class="row" style="width:900px;height:100px;background-color:#1394a785;">
        <div class="frm">  
               <asp:Button ID="btnproductreport" runat="server" class="btn btn-default" Text="Product Report" Width="150px" Height="50px" UseSubmitBehavior="False" />&nbsp;&nbsp;&nbsp;
               <asp:Button ID="btncustreport" runat="server" class="btn btn-default" Text="Customer Report"   Width="150px" Height="50px"  UseSubmitBehavior="False"/>&nbsp;&nbsp;&nbsp;
               <asp:Button ID="btnemployeereport" runat="server" class="btn btn-default" Text="Emolyee Report" Width="150px" Height="50px"  UseSubmitBehavior="False" />&nbsp;&nbsp;&nbsp;
               <asp:Button ID="btnqueriereport" runat="server" class="btn btn-default" Text="Query Report" Width="150px" Height="50px"  UseSubmitBehavior="False" />&nbsp;&nbsp;&nbsp;
        </div> 
    </div><br />

    <div class="row">
        <asp:Panel ID="panelproduct"  runat="server" style="width:900px;background-color:#1394a785;" BorderStyle="Solid">
           <h1 align="center">Product Details</h1>
            <hr /><br />
            <asp:GridView ID="GridView1" style="margin-left:15px;" runat="server" AutoGenerateColumns="False" 
                DataKeyNames="ProductId" DataSourceID="tblproduct" CellPadding="4" AllowSorting="True" BackColor="Black" 
                BorderColor="Black" BorderStyle="Solid" BorderWidth="2px" CellSpacing="2"  Width="860px" ForeColor="Black">
                <Columns>
                    <asp:BoundField DataField="ProductId" HeaderText="ProductId" ReadOnly="True" SortExpression="ProductId" />
                    <asp:BoundField DataField="Category" HeaderText="Category" SortExpression="Category" />
                    <asp:BoundField DataField="Productname" HeaderText="Productname" SortExpression="Productname" />
                    <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
                    <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
                    <asp:TemplateField HeaderText="Proimage" SortExpression="Proimage">
                      <EditItemTemplate>
                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Proimage") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Image ID="Image5" runat="server" Height="100px" ImageUrl='<%# Eval("Proimage", "{0}") %>' Width="125px" />
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>

                <HeaderStyle BackColor="#269900" Font-Bold="True" ForeColor="White" HorizontalAlign="Center" Width="200px" />
                <PagerStyle HorizontalAlign="Right" ForeColor="Black" />
                <RowStyle BackColor="#E3EAEB" ForeColor="Black" />
               
            </asp:GridView><br />

            <asp:AccessDataSource ID="tblproduct" runat="server" DataFile="~/App_Data/electoshop.accdb" 
                SelectCommand="SELECT * FROM [Product]">
            </asp:AccessDataSource>
            </asp:Panel></div>

      <div class="row">
              <asp:Panel ID="panelemployee"  runat="server" style="width:900px;background-color:#1394a785;" BorderStyle="Solid">
           <h1 align="center">Employee Details</h1>
            <hr /><br />
            <asp:GridView ID="GridView4" runat="server" AllowSorting="True" 
                AutoGenerateColumns="False" BackColor="Black" BorderColor="Black" 
                BorderStyle="Solid" BorderWidth="2px" CellPadding="4" CellSpacing="2" 
                DataKeyNames="EmpID" DataSourceID="tblemployee" ForeColor="Black" 
                style="margin-left:15px;" Width="860px">
                <Columns>
                    <asp:BoundField DataField="EmpID" HeaderText="EmpID" ReadOnly="True" SortExpression="EmpID" />
                    <asp:BoundField DataField="EmpName" HeaderText="EmpName" SortExpression="EmpName" />
                    <asp:BoundField DataField="Contactno" HeaderText="Contactno" SortExpression="Contactno" />
                    <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                    <asp:BoundField DataField="DOB" HeaderText="DOB" SortExpression="DOB" />
                    <asp:BoundField DataField="DOJ" HeaderText="DOJ" SortExpression="DOJ" />
                    <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
                    <asp:TemplateField HeaderText="Empimg" SortExpression="Empimg">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Empimg") %>'></asp:TextBox>
                             </EditItemTemplate>
                            <ItemTemplate>
                            <asp:Image ID="Image5" runat="server" Height="100px" ImageUrl='<%# Eval("Empimg", "{0}") %>' Width="125px" />
                        </ItemTemplate>
                       
                    </asp:TemplateField>
                </Columns>
                <HeaderStyle BackColor="#269900" Font-Bold="True" ForeColor="White" HorizontalAlign="Center" Width="200px" />
                <PagerStyle ForeColor="Black" HorizontalAlign="Right" />
                <RowStyle BackColor="#E3EAEB" ForeColor="Black" />
            </asp:GridView><br />
            <asp:AccessDataSource ID="tblemployee" runat="server" DataFile="~/App_Data/electoshop.accdb" SelectCommand="SELECT * FROM [Employee]">
            </asp:AccessDataSource>
            </asp:Panel>
            </div>
  
      <div class="row">
        <asp:Panel ID="panelcustomer"  runat="server" style="width:900px;background-color:#1394a785;" BorderStyle="Solid">
           <h1 align="center">Customer&nbsp; Details</h1>
            <hr />
            <asp:GridView ID="GridView5" runat="server" AllowSorting="True" 
                AutoGenerateColumns="False" BackColor="Black" BorderColor="Black" 
                BorderStyle="Solid" BorderWidth="2px" CellPadding="4" CellSpacing="2" 
                DataKeyNames="Customerid" DataSourceID="tblcustomer" ForeColor="Black" 
                style="margin-left:15px;" Width="860px">
                <Columns>
                    <asp:BoundField DataField="Customerid" HeaderText="Customerid" ReadOnly="True" SortExpression="Customerid" />
                    <asp:BoundField DataField="Firstname" HeaderText="Firstname" SortExpression="Firstname" />
                    <asp:BoundField DataField="Lastname" HeaderText="Lastname" SortExpression="Lastname" />
                    <asp:BoundField DataField="Contactno" HeaderText="Contactno"  SortExpression="Contactno" />
                    <asp:BoundField DataField="Address" HeaderText="Address"  SortExpression="Address" />
                    <asp:BoundField DataField="Pincode" HeaderText="Pincode"  SortExpression="Pincode" />
                    <asp:BoundField DataField="Emailid" HeaderText="Emailid"  SortExpression="Emailid" />
                    <asp:TemplateField HeaderText="Custimg" SortExpression="Custimg">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Custimg") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Image ID="Image7" runat="server" Height="100px" ImageUrl='<%# Eval("Custimg", "{0}") %>' Width="125px" />
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
                <EmptyDataTemplate>
                    <asp:Image ID="Image6" runat="server" Height="100px" ImageUrl='<%# Eval("Custimg", "{0}") %>' Width="125px" />
                </EmptyDataTemplate>
                <HeaderStyle BackColor="#269900" Font-Bold="True" ForeColor="White" HorizontalAlign="Center" Width="200px" />
                <PagerStyle ForeColor="Black" HorizontalAlign="Right" />
                <RowStyle BackColor="#E3EAEB" ForeColor="Black" />
            </asp:GridView>
            <br /> <br />
            <asp:AccessDataSource ID="tblcustomer" runat="server"  DataFile="~/App_Data/electoshop.accdb" 
                SelectCommand="SELECT * FROM [Customer]">
            </asp:AccessDataSource>
         </asp:Panel>
    </div>

      <div class="row">
        <asp:Panel ID="panel1"  runat="server" style="width:900px;background-color:#1394a785;" BorderStyle="Solid">
           <h1 align="center">Query Details</h1>
            <hr /><br />
            <asp:GridView ID="GridView2" runat="server" 
                AutoGenerateColumns="False" BackColor="Black" BorderColor="Black" BorderStyle="Solid" BorderWidth="2px" CellPadding="4" CellSpacing="2"  
                DataSourceID="AccessDataSource1" ForeColor="Black"  style="margin-left:15px;" Width="860px">
                <Columns>
                    <asp:BoundField DataField="Queryid" HeaderText="Queryid" SortExpression="Queryid" />
                    <asp:BoundField DataField="Coustmerid" HeaderText="Coustmerid" SortExpression="Coustmerid" />
                    <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                    <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                    <asp:BoundField DataField="Phoneno" HeaderText="Phoneno" SortExpression="Phoneno" />
                    <asp:BoundField DataField="Message" HeaderText="Message" SortExpression="Message" />
                </Columns>
                <HeaderStyle BackColor="#269900" Font-Bold="True" ForeColor="White"  HorizontalAlign="Center" Width="200px" />
                <PagerStyle ForeColor="Black" HorizontalAlign="Right" />
                <RowStyle BackColor="#E3EAEB" ForeColor="Black" />
            </asp:GridView><br />
            <asp:AccessDataSource ID="AccessDataSource1" runat="server"  DataFile="~/App_Data/electoshop.accdb" 
                SelectCommand="SELECT * FROM [query]">
            </asp:AccessDataSource>
            </asp:Panel>
            </div>
            </div>
</asp:Content>

