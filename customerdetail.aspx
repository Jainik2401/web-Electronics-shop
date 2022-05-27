    <%@ Page Title="" Language="VB" MasterPageFile="~/admin.master" AutoEventWireup="false" CodeFile="customerdetail.aspx.vb" Inherits="customerdetail" %>

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
.btn-default:hover {
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
.control-label
{
    padding-left:10px;
}
</style>

<div class="container">
   
    <div class="row" style="width:900px;height:100px;background-color:#1394a785;">
        <div class="frm">  
               <asp:Button ID="btnaddcust" runat="server" class="btn btn-default" Text="Add" Width="150px" Height="50px" UseSubmitBehavior="False" />&nbsp;&nbsp;&nbsp;
               <asp:Button ID="btnupdatecust" runat="server" class="btn btn-default" Text="Update"   Width="150px" Height="50px"  UseSubmitBehavior="False"/>&nbsp;&nbsp;&nbsp;
               <asp:Button ID="btndeletecust" runat="server" class="btn btn-default" Text="Delete" Width="150px" Height="50px"  UseSubmitBehavior="False" />&nbsp;&nbsp;&nbsp;
              <asp:Button ID="btnviewcust"   runat="server" class="btn btn-default" Text="View Details" Width="150px" Height="50px"  UseSubmitBehavior="False" />    
         </div>     
    </div> <br />
    
    <div class="row">
        <asp:Panel ID="paneladd"  runat="server" style="width:900px;background-color:#1394a785;" BorderStyle="Solid">
           <h1 align="center">Enter Customer Details</h1>
            <hr /><br />

            <div>
                <b><asp:Label ID="lblicid" class="lbl" runat="server" Text="Customer ID:"></asp:Label> </b> 
                <asp:TextBox ID="txticid" class="txt" runat="server" Width="500px" ReadOnly="True"></asp:TextBox>
            </div>
                 <asp:RequiredFieldValidator ID="rqcid" class="error" runat="server" ErrorMessage="Customer Id is Empty" 
                   ControlToValidate="txticid"  ForeColor="Red"></asp:RequiredFieldValidator>
             <br />

             <div> 
                <b><asp:Label ID="lblifname" class="lbl" runat="server" Text="FirstName:"></asp:Label> </b> 
                <asp:TextBox ID="txtifname" style=" border: 2px solid black; margin-left:70px; padding-left:10px;" 
                     runat="server" Width="500px" ></asp:TextBox>
            </div>
                <asp:RequiredFieldValidator ID="rqfname" class="error" runat="server" ErrorMessage="Customer First Name is Empty" 
                ControlToValidate="txtifname"  ForeColor="Red" ValidationGroup="insert"></asp:RequiredFieldValidator>
                <br />
            <div> 
                <b><asp:Label ID="lblilname" class="lbl" runat="server" Text="LastName"></asp:Label> </b> 
                <asp:TextBox ID="txtilname" style=" border: 2px solid black; margin-left:80px;padding-left:10px;" 
                    runat="server" Width="500px"></asp:TextBox>
            </div>
                <asp:RequiredFieldValidator ID="rqlname" class="error" runat="server" ErrorMessage="Customer Last Name is Empty"
                 ControlToValidate="txtilname"  ForeColor="Red" ValidationGroup="insert"></asp:RequiredFieldValidator>
               <br />
            <div> 
                <b><asp:Label ID="lbliadd" class="lbl"  runat="server" Text="Address:"></asp:Label> </b> 
                <asp:TextBox ID="txtiadd"  style=" border: 2px solid black; margin-left:90px;padding-left:10px;" 
                    runat="server" Width="500px"></asp:TextBox>
            </div>
                <asp:RequiredFieldValidator ID="rqadd" class="error" runat="server" ErrorMessage="Address is Empty" ControlToValidate="txtiadd" 
                    ForeColor="Red" ValidationGroup="insert"></asp:RequiredFieldValidator>
                <br />
            
            <div> 
                <b><asp:Label ID="lblipcode" class="lbl" runat="server" Text="Pincode:"></asp:Label> </b> 
                <asp:TextBox ID="txtipcode" style=" border: 2px solid black; margin-left:90px;padding-left:10px;" 
                    runat="server" Width="300px"></asp:TextBox>
            </div>
                <asp:RequiredFieldValidator ID="rqpincode" class="error" runat="server" 
                    ErrorMessage="Pincode is Empty" ControlToValidate="txtipcode" 
                    ForeColor="Red" ValidationGroup="insert"></asp:RequiredFieldValidator>
                <br />
             <div> 
                <b><asp:Label ID="lblicno" class="lbl" runat="server" Text="Contactno:"></asp:Label> </b> 
                <asp:TextBox ID="txticno"  style=" border: 2px solid black; margin-left:70px;padding-left:10px;" 
                     runat="server" Width="300px" ></asp:TextBox>
            </div>
                <asp:RequiredFieldValidator ID="rqcno"  class="error" runat="server"  ErrorMessage="Contact No is Empty" 
                ControlToValidate="txticno"   ForeColor="Red" ValidationGroup="insert"></asp:RequiredFieldValidator>    
                <br />          
               <div> 
                <b><asp:Label ID="lbliemail" class="lbl" runat="server" Text="Email Address:"></asp:Label> </b> 
                <asp:TextBox ID="txtiemail" style=" border: 2px solid black; margin-left:35px;padding-left:10px;" 
                     runat="server" Width="300px" TextMode="Email" ></asp:TextBox>
            </div>
            <asp:RequiredFieldValidator ID="rqemail" class="error" runat="server" ErrorMessage="Email Address is Empty" ForeColor="Red" 
                ControlToValidate="txtiemail" ValidationGroup="insert"></asp:RequiredFieldValidator>
            <br />

            <div> 
                <b><asp:Label ID="lbliuname" class="lbl" runat="server" Text="UserName:"></asp:Label> </b> 
                <asp:TextBox ID="txtiuname" style=" border: 2px solid black; margin-left:70px; padding-left:10px;" 
                     runat="server" Width="300px" ></asp:TextBox>
            </div>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" class="error" runat="server" 
                    ErrorMessage="Username Name is Empty" ControlToValidate="txtiuname" 
                    ForeColor="Red" ValidationGroup="insert"></asp:RequiredFieldValidator>
                <br />
                <div> 
                <b><asp:Label ID="lblipwd" class="lbl" runat="server" Text="Password:"></asp:Label> </b> 
                <asp:TextBox ID="txtipwd" style=" border: 2px solid black; margin-left:80px; padding-left:10px;" 
                     runat="server" Width="300px" TextMode="Password" ></asp:TextBox>
            </div>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" class="error" runat="server" 
                    ErrorMessage="Password is Empty" ControlToValidate="txtipwd" 
                    ForeColor="Red" ValidationGroup="insert"></asp:RequiredFieldValidator>
                <br />
            <div>
               <b><asp:Label ID="lblicimg" class="lbl" runat="server" Text="Customer Image:"></asp:Label>&nbsp;&nbsp;&nbsp; </b>
               <asp:FileUpload ID="icusimage" runat="server" Width="296px" />
            </div>
                <asp:RequiredFieldValidator ID="rqcustimg" class="error" runat="server" ErrorMessage="Profile Image is Empty"
                 ControlToValidate="icusimage" ForeColor="Red" ValidationGroup="insert"></asp:RequiredFieldValidator>
                <br />
                <hr />
               
            <div>
                <asp:Button ID="btninsert" class="btn btn-default" style="margin-left:270px;"  
                    runat="server" Text="Insert" Width="150px" ValidationGroup="insert" />
                 <asp:Button ID="btniclear" class="btn btn-default" style="margin-left:90px;"  
                    runat="server" Text="Clear" Width="150px" />    
            </div>
            <br /> 
          </asp:Panel> 
    </div>

    <div class="row">
        <asp:Panel ID="panelupdate"  runat="server" 
            style="width:900px;background-color:#1394a785;" BorderStyle="Solid">
           <h1 align="center">Edit Customer Details</h1>
            <hr /><br />

            <div>
                <b><asp:Label ID="lblucusid" class="lbl" runat="server" Text="Customer ID:"></asp:Label> </b> 
                <asp:TextBox ID="txtucusid" class="txt" runat="server" Width="500px"></asp:TextBox>
                <asp:Button ID="btnfind" runat="server" class="btn btn-default" Text="Find" 
                    Height="42px" Width="100px" />
            </div><br />

             <div> 
                <b><asp:Label ID="lblufname" class="lbl" runat="server" Text="FirstName:"></asp:Label> </b> 
                <asp:TextBox ID="txtufname" style=" border: 2px solid black; margin-left:70px; padding-left:10px;" 
                     runat="server" Width="500px" ></asp:TextBox>
            </div><br />

            <div> 
                <b><asp:Label ID="lblulname" class="lbl" runat="server" Text="LastName"></asp:Label> </b> 
                <asp:TextBox ID="txtulname" style=" border: 2px solid black; margin-left:80px;padding-left:10px;" 
                    runat="server" Width="500px"></asp:TextBox>
            </div><br />
               
            <div> 
                <b><asp:Label ID="lbluadd" class="lbl"  runat="server" Text="Address:"></asp:Label> </b> 
                <asp:TextBox ID="txtuadd" style=" border: 2px solid black; margin-left:90px;padding-left:10px;" 
                    runat="server" Width="500px"></asp:TextBox>
            </div><br />
            
            <div> 
                <b><asp:Label ID="lblupincode" class="lbl" runat="server" Text="Pincode:"></asp:Label> </b> 
                <asp:TextBox ID="txtupincode" style=" border: 2px solid black; margin-left:90px;padding-left:10px;" 
                    runat="server" Width="300px"></asp:TextBox>
            </div><br />
             <div> 
                <b><asp:Label ID="lblucno" class="lbl" runat="server" Text="Contactno:"></asp:Label> </b> 
                <asp:TextBox ID="txtucno" style=" border: 2px solid black; margin-left:70px;padding-left:10px;" 
                     runat="server" Width="300px" ></asp:TextBox>
            </div><br />          
               <div> 
                <b><asp:Label ID="lbluemail" class="lbl" runat="server" Text="Email Address:"></asp:Label> </b> 
                <asp:TextBox ID="txtuemail" style=" border: 2px solid black; margin-left:35px;padding-left:10px;" 
                     runat="server" Width="300px" TextMode="Email" ></asp:TextBox>
            </div><br />
            <div>
               <b><asp:Label ID="lblucimg" class="lbl" runat="server" Text="Customer Image:"></asp:Label>
                &nbsp;&nbsp;&nbsp; </b>
               <asp:FileUpload ID="ucusimg" runat="server" Width="296px" />
            </div><br />
              <hr />
               
            <div>
                <asp:Button ID="btnupdate" class="btn btn-default" style="margin-left:270px;"  runat="server" Text="Update" Width="150px" />
                 <asp:Button ID="btnuclear" class="btn btn-default" style="margin-left:90px;"  
                    runat="server" Text="Clear" Width="150px" />    
            </div>
            <br /> 

        </asp:Panel> 
    </div>
       <div class="row">
        <asp:Panel ID="paneldelete"  runat="server" 
            style="width:900px;background-color:#1394a785;" BorderStyle="Solid">
           <h1 align="center">Delete Customer Details</h1>
            <hr /><br />

            <div>
                <b><asp:Label ID="lbldcid" class="lbl" runat="server" Text="Customer ID:"></asp:Label> </b> 
                <asp:TextBox ID="txtdcid" class="txt" runat="server" Width="500px"></asp:TextBox>
                <asp:Button ID="btnfind1" runat="server" class="btn btn-default" Text="Find" Height="42px" Width="100px" />
            </div><br />

             <div> 
                <b><asp:Label ID="lbldfname" class="lbl" runat="server" Text="FirstName:"></asp:Label> </b> 
                <asp:TextBox ID="txtdfname" style=" border: 2px solid black; margin-left:70px; padding-left:10px;" 
                     runat="server" Width="500px" ></asp:TextBox>
            </div><br />

            <div> 
                <b><asp:Label ID="lbldlname" class="lbl" runat="server" Text="LastName"></asp:Label> </b> 
                <asp:TextBox ID="txtdlname" style=" border: 2px solid black; margin-left:80px;padding-left:10px;" 
                    runat="server" Width="500px"></asp:TextBox>
            </div><br />
               
            <div> 
                <b><asp:Label ID="lbldadd" class="lbl"  runat="server" Text="Address:"></asp:Label> </b> 
                <asp:TextBox ID="txtdadd" style=" border: 2px solid black; margin-left:90px;padding-left:10px;" 
                    runat="server" Width="500px"></asp:TextBox>
            </div><br />
            
            <div> 
                <b><asp:Label ID="lbldpincode" class="lbl" runat="server" Text="Pincode:"></asp:Label> </b> 
                <asp:TextBox ID="txtdpincode"  style=" border: 2px solid black; margin-left:90px;padding-left:10px;" 
                    runat="server" Width="300px"></asp:TextBox>
            </div><br />
             <div> 
                <b><asp:Label ID="lbldcno" class="lbl" runat="server" Text="Contactno:"></asp:Label> </b> 
                <asp:TextBox ID="txtdcno"  style=" border: 2px solid black; margin-left:70px;padding-left:10px;" 
                     runat="server" Width="300px" ></asp:TextBox>
            </div><br />          
               <div> 
                <b><asp:Label ID="lbldemail" class="lbl" runat="server" Text="Email Address:"></asp:Label> </b> 
                <asp:TextBox ID="txtdemail" style=" border: 2px solid black; margin-left:35px;padding-left:10px;" 
                     runat="server" Width="300px" TextMode="Email" ></asp:TextBox>
            </div><br />
            <div>
               <b><asp:Label ID="lbldcimg" class="lbl" runat="server" Text="Customer Image:"></asp:Label>&nbsp;&nbsp;&nbsp; </b>
               <asp:FileUpload ID="dcusimg" runat="server" Width="296px" />
            </div><br />
              <hr />
               
            <div>
                <asp:Button ID="btndelete" class="btn btn-default" style="margin-left:270px;" runat="server" Text="Delete" Width="150px" />
                 <asp:Button ID="btndclear" class="btn btn-default" style="margin-left:90px;" runat="server" Text="Clear" Width="150px" />    
            </div>
            <br /> 
         </asp:Panel> 
    </div>

    <div class="row" style="margin-left:-15px;margin-top:-10px;">
        <div class="col-lg-12" >
          <asp:Panel ID="panelselect" runat="server"  style="width:900px;background-color:#1394a785;" BorderStyle="Solid"> 
             <br />  <h1>&nbsp;&nbsp;&nbsp; Select Customer to View</h1><hr />
               <div class="col-lg-10">
                  <asp:GridView ID="GridView3" style="margin-left:10px;" runat="server" AutoGenerateColumns="False" 
                       DataKeyNames="Customerid" DataSourceID="tblcustomer" AllowSorting="True" 
                       BackColor="Black" BorderColor="Black" BorderStyle="Solid" BorderWidth="2px" 
                       CellPadding="2" ForeColor="Black" Width="864px" CellSpacing="3">
                       <Columns>
                         <asp:CommandField ButtonType="Button" ShowSelectButton="True">
                         <ControlStyle BackColor="#269900" ForeColor="White" />
                         </asp:CommandField>
                         <asp:BoundField DataField="Customerid" HeaderText="Customerid" SortExpression="Customerid" Visible="true" ReadOnly="True" >
                         </asp:BoundField>
                         <asp:BoundField DataField="Firstname" HeaderText="Firstname" SortExpression="Firstname" >
                         </asp:BoundField>
                         <asp:BoundField DataField="Lastname" HeaderText="Lastname" SortExpression="Lastname" >
                         </asp:BoundField>
                         <asp:BoundField DataField="Contactno" HeaderText="Contactno" SortExpression="Contactno" >
                         </asp:BoundField>
                         <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" >
                         </asp:BoundField>
                         <asp:BoundField DataField="Pincode" HeaderText="Pincode" SortExpression="Pincode" >
                         </asp:BoundField>
                         <asp:BoundField DataField="Emailid" HeaderText="Emailid" SortExpression="Emailid" />
                         <asp:BoundField DataField="Custimg" HeaderText="Custimg"  SortExpression="Custimg" />
                       </Columns>
                           <HeaderStyle BackColor="#269900" ForeColor="White" Height="15px" 
                                    BorderColor="#003300" Font-Bold="True" HorizontalAlign="Center" />
                           <PagerStyle ForeColor="Black" HorizontalAlign="Right" />
                           <RowStyle BackColor="White" />
                                
                            </asp:GridView><br />
                            <asp:AccessDataSource ID="tblcustomer" runat="server" DataFile="~/App_Data/electoshop.accdb" 
                                OldValuesParameterFormatString="original_{0}" 
                                SelectCommand="SELECT * FROM [Customer]">
                            </asp:AccessDataSource>
                        </div>
            </asp:Panel>
        </div>
    </div>

    <div class="row" style="margin-left:-15px;margin-top:15px;">
            <asp:Panel ID="paneldetails" class ="frm" style="width:900px;background-color:#1394a785;" BorderStyle="Solid" runat="server">
              <br />  <h1>Customer Details</h1>
                <hr />
                             
                        <div class="col-lg-11">
                         <asp:Image ID="cusimg" runat="server" Width="250px" Height="250px" />
                         <div class="row" style="line-height:2.7;font-weight:bold;font-size:16px">
                        <div class="col-lg-5" style="text-align:right">Customerid:</div>
                        <div class="col-lg-5" ><asp:Label ID="lblcusid"  class="control-label" runat="server" Text="Label"></asp:Label></div>
                        <br />
                        <div class="col-lg-5" style="text-align:right">FirstName:</div>
                        <div class="col-lg-5"><asp:Label ID="lblfname" class="control-label" runat="server" Text="Label"></asp:Label></div>       
                        <br />
                        <div  class="col-lg-5" style="text-align:right">LastName:</div>
                        <div class="col-lg-5"><asp:Label ID="lbllname" class="control-label" runat="server" Text="Label"></asp:Label></div>
                        <br />
                        <div class="col-lg-5" style="text-align:right">Contactno:</div>
                        <div class="col-lg-5"><asp:Label ID="lblconno" class="control-label" runat="server" Text="Label"></asp:Label></div>
                        <br />
                        <div class="col-lg-5" style="text-align:right">Address:</div>
                        <div class="col-lg-5"><asp:Label ID="lbladd" class="control-label" runat="server" Text="Label"></asp:Label></div>
                        <br />
                         <div class="col-lg-5" style="text-align:right">Pincode:</div>
                        <div class="col-lg-5"><asp:Label ID="lblpincode" class="control-label" runat="server" Text="Label"></asp:Label></div>
                        <br />
                         <div class="col-lg-5" style="text-align:right">Emailid:</div>
                        <div class="col-lg-5"><asp:Label ID="lblemailid" class="control-label" runat="server" Text="Label"></asp:Label></div>
                        <br />
           
                       </div>     
                  </div>   
            </asp:Panel>
           <br />
    </div>
</div>
</asp:Content>

