<%@ Page Title="" Language="VB" MasterPageFile="~/admin.master" AutoEventWireup="false" CodeFile="employee.aspx.vb" Inherits="employee" %>

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
    margin-left:245px;
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
               <asp:Button ID="btnaddemp" runat="server" class="btn btn-default" Text="Add Employee"  Width="150px" Height="50px" UseSubmitBehavior="False" />&nbsp;&nbsp;&nbsp;
               <asp:Button ID="btnupdateemp" runat="server" class="btn btn-default" Text="Update"   Width="150px" Height="50px"  UseSubmitBehavior="False"/>&nbsp;&nbsp;&nbsp;
               <asp:Button ID="btndeleteemp" runat="server" class="btn btn-default" Text="Delete" Width="150px" Height="50px"  UseSubmitBehavior="False" />&nbsp;&nbsp;&nbsp;
               <asp:Button ID="btnviewemp"   runat="server" class="btn btn-default"  Text="View Details" Width="150px" Height="50px"  UseSubmitBehavior="False" />
        </div>     
    </div> <br />    

     <div class="row">
           <asp:Panel ID="panelAdd"  runat="server" style="width:900px;background-color:#1394a785;" BorderStyle="Solid">
                <h1 align="center">Enter Employee Details</h1>
                <hr /><br />
            <div> 
                <b><asp:Label ID="lbliempid" class="lbl" runat="server" Text="Employee Id:"></asp:Label> </b> 
                <asp:TextBox ID="txtiempid" class="txt" runat="server" Width="500px"  ReadOnly="True"></asp:TextBox>
            </div>
              <asp:RequiredFieldValidator ID="rqiempid" class="error" runat="server"  ErrorMessage="Employee Id is Empty"
                     ControlToValidate="txtiempid" ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
             <div> 
                <b><asp:Label ID="lbliempname" class="lbl" runat="server" Text="Employee Name:"></asp:Label> </b> 
                <asp:TextBox ID="txtiempname" style=" border: 2px solid black; margin-left:20px; padding-left:10px;" 
                     runat="server" Width="500px" ></asp:TextBox>
            </div>
                <asp:RequiredFieldValidator ID="rqiename" class="error" runat="server" ErrorMessage="Employee Name is Empty"
                 ControlToValidate="txtiempname" ForeColor="Red" ValidationGroup="insert"></asp:RequiredFieldValidator>
                <br />
            <div> 
                <b><asp:Label ID="lblcnum" class="lbl" runat="server" Text="Contactno:"></asp:Label> </b> 
                <asp:TextBox ID="txticnum" style=" border: 2px solid black; margin-left:70px;padding-left:10px;" runat="server" Width="300px"></asp:TextBox>
            </div>
                <asp:RequiredFieldValidator ID="rqimnum" class="error" runat="server" ErrorMessage="MobileNumber is Empty" 
                ControlToValidate="txticnum"  ForeColor="Red" ValidationGroup="insert"></asp:RequiredFieldValidator>
               <br />
             <div> 
                <b><asp:Label ID="lbliemail" class="lbl" runat="server" Text="Email Address:"></asp:Label> </b> 
                <asp:TextBox ID="txtiemail" style=" border: 2px solid black; margin-left:35px;padding-left:10px;" 
                     runat="server" Width="300px" TextMode="Email" ></asp:TextBox>
            </div>
                <asp:RequiredFieldValidator ID="rqiemail"  class="error" runat="server" ErrorMessage="Email Address is Empty" 
                ControlToValidate="txtiemail" ForeColor="Red" ValidationGroup="insert"></asp:RequiredFieldValidator>    
                <br />
            <div> 
                <b><asp:Label ID="lblidob" class="lbl"  runat="server" Text="Date Of Birth:"></asp:Label> </b> 
                <asp:TextBox ID="txtidob" style=" border: 2px solid black; margin-left:42px;padding-left:10px;" runat="server" Width="200px" TextMode="Date"></asp:TextBox>
            </div>
                <asp:RequiredFieldValidator ID="rqidob" class="error" runat="server" 
                    ErrorMessage="DOB is Empty" ControlToValidate="txtidob" 
                    ForeColor="Red" ValidationGroup="insert"></asp:RequiredFieldValidator>
                <br />
           <div> 
                <b><asp:Label ID="lblidoj" class="lbl" runat="server" Text="Date of Join:"></asp:Label> </b> 
                <asp:TextBox ID="txtidoj" style=" border: 2px solid black; margin-left:55px;padding-left:10px;" runat="server" Width="200px" TextMode="Date"></asp:TextBox>
            </div>
                <asp:RequiredFieldValidator ID="rqidoj" class="error" runat="server"  ErrorMessage="DOJ is Empty" ControlToValidate="txtidoj" 
                    ForeColor="Red" ValidationGroup="insert"></asp:RequiredFieldValidator>
                <br />
            <div> 
                <b><asp:Label ID="lbligender" class="lbl" runat="server" Text="Gender:"></asp:Label> </b> 
                <b>
                    <asp:DropDownList ID="ddligender" 
                    style="border:2px solid black; margin-left:93px;" 
                    runat="server">
                        <asp:ListItem>Male</asp:ListItem>
                        <asp:ListItem>Female</asp:ListItem>
                    </asp:DropDownList>
                <br />
                </b>
            </div><br />
            <div>
               <b><asp:Label ID="lblieimg" class="lbl" runat="server" Text="Employee Image:"></asp:Label>&nbsp;&nbsp;&nbsp; </b>
               <asp:FileUpload ID="iempimg" runat="server" />
            </div>
                <asp:RequiredFieldValidator ID="rqieimg" class="error" runat="server" ErrorMessage="Profile Image is Empty"
                 ControlToValidate="iempimg" ForeColor="Red" ValidationGroup="insert"></asp:RequiredFieldValidator>
                <br /><hr />
            <div>
                <asp:Button ID="btninsert" class="btn btn-default" style="margin-left:270px;"
                 runat="server" Text="Insert" Width="150px" ValidationGroup="insert" />
                 <asp:Button ID="btniclear" class="btn btn-default" style="margin-left:90px;" runat="server" Text="Clear" Width="150px" />    
            </div>
            <br />               
        </asp:Panel>
    </div>

     <div class="row">
           <asp:Panel ID="panelupdate"  runat="server" style="width:900px;background-color:#1394a785;" BorderStyle="Solid">
                <h1 align="center">Edit Employee Details</h1>
                <hr /><br />
            <div> 
                <b><asp:Label ID="lbluempid" class="lbl" runat="server" Text="Employee Id:"></asp:Label> </b> 
                <asp:TextBox ID="txtuempid" class="txt" runat="server" Width="500px"></asp:TextBox>
                <asp:Button ID="btnufind" runat="server" class="btn btn-default" Text="Find" Height="42px" Width="100px" />
            </div><br />
             <div> 
                <b><asp:Label ID="lbluempname" class="lbl" runat="server" Text="Employee Name:"></asp:Label> </b> 
                <asp:TextBox ID="txtuempname" style=" border: 2px solid black; margin-left:20px; padding-left:10px;" 
                runat="server" Width="500px" ></asp:TextBox>
            </div> <br />
            <div> 
                <b><asp:Label ID="lblucnum" class="lbl" runat="server" Text="Contactno:"></asp:Label> </b> 
                <asp:TextBox ID="txtucnum" style=" border: 2px solid black; margin-left:70px;padding-left:10px;" 
                runat="server" Width="300px"></asp:TextBox>
            </div><br />
            <div> 
                <b><asp:Label ID="lbluemail" class="lbl" runat="server" Text="Email Address:"></asp:Label> </b> 
                <asp:TextBox ID="txtuemail" style=" border: 2px solid black; margin-left:35px;padding-left:10px;" 
                     runat="server" Width="300px" TextMode="Email" ></asp:TextBox>
            </div><br />
            <div> 
                <b><asp:Label ID="lbludob" class="lbl"  runat="server" Text="Date Of Birth:"></asp:Label> </b> 
                <asp:TextBox ID="txtudob" style=" border: 2px solid black; margin-left:42px;padding-left:10px;" 
                    runat="server" Width="200px" TextMode="DateTime"></asp:TextBox>
            </div><br />
            <div> 
                <b><asp:Label ID="lbludoj" class="lbl" runat="server" Text="Date of Join:"></asp:Label> </b> 
                <asp:TextBox ID="txtudoj" style="border: 2px solid black; margin-left:55px;padding-left:10px;" 
                runat="server" Width="200px" TextMode="DateTime" ></asp:TextBox>
            </div><br />
            <div> 
                <b><asp:Label ID="lblugender" class="lbl" runat="server" Text="Gender:"></asp:Label> </b> 
                <asp:DropDownList ID="ddlugender"  style="border:2px solid black; margin-left:93px;" runat="server">
                        <asp:ListItem>Male</asp:ListItem>
                        <asp:ListItem>Female</asp:ListItem>
                </asp:DropDownList>
            </div> <br>
               <div>
                    <b>
                    <asp:Label ID="Label8" runat="server" class="lbl" Text="Employee Image:"></asp:Label> &nbsp;&nbsp;&nbsp; </b>
                    <asp:FileUpload ID="uempimg" runat="server" />
                </div><br />
                <hr />
                <div>
                    <asp:Button ID="btnupdate" runat="server" class="btn btn-default"  style="margin-left:270px;" Text="Update" Width="150px" />
                    <asp:Button ID="btnuclear" runat="server" class="btn btn-default" style="margin-left:90px;" Text="Clear" Width="150px" />
                </div><br />
          </asp:Panel>
    </div>
    
    <div class="row">
           <asp:Panel ID="paneldelete"  runat="server"  style="width:900px;background-color:#1394a785;" BorderStyle="Solid">
                <h1 align="center">Delete Employee Details</h1>
                <hr /><br />
            <div> 
                <b><asp:Label ID="lbldempid" class="lbl" runat="server" Text="Employee Id:"></asp:Label> </b> 
                <asp:TextBox ID="txtdempid" class="txt" runat="server" Width="500px"></asp:TextBox>
                <asp:Button ID="btndfind" runat="server" class="btn btn-default" Text="Find" Height="42px" Width="100px" />
            </div><br />
             <div> 
                <b><asp:Label ID="lbldempname" class="lbl" runat="server" Text="Employee Name:"></asp:Label> </b> 
                <asp:TextBox ID="txtdempname" style=" border: 2px solid black; margin-left:20px; padding-left:10px;" 
                     runat="server" Width="500px" ></asp:TextBox>
            </div><br />
            <div> 
                <b><asp:Label ID="lbldcnum" class="lbl" runat="server" Text="Contactno:"></asp:Label> </b> 
                <asp:TextBox ID="txtdcnum" style=" border: 2px solid black; margin-left:70px;padding-left:10px;" 
                    runat="server" Width="300px"></asp:TextBox>
            </div><br />
             <div> 
                <b><asp:Label ID="lbldemail" class="lbl" runat="server" Text="Email Address:"></asp:Label> </b> 
                <asp:TextBox ID="txtdemail" style=" border: 2px solid black; margin-left:35px;padding-left:10px;" 
                     runat="server" Width="300px" ></asp:TextBox>
            </div> <br />
            <div> 
                <b><asp:Label ID="lblddob" class="lbl"  runat="server" Text="Date Of Birth:"></asp:Label> </b> 
                <asp:TextBox ID="txtddob" style=" border: 2px solid black; margin-left:42px;padding-left:10px;" 
                    runat="server" Width="200px" TextMode="DateTime"></asp:TextBox>
            </div><br />
           <div> 
                <b><asp:Label ID="lblddoj" class="lbl" runat="server" Text="Date of Join:"></asp:Label> </b> 
                <asp:TextBox ID="txtddoj" style="border: 2px solid black; margin-left:55px;padding-left:10px;" 
                runat="server" Width="200px" TextMode="DateTime" ></asp:TextBox>
            </div><br />
            <div> 
                <b><asp:Label ID="lblgender" class="lbl" runat="server" Text="Gender:"></asp:Label> </b> 
                <b>
                <asp:DropDownList ID="ddldgender" style="border:2px solid black;  margin-left:93px;" runat="server">
                        <asp:ListItem>Male</asp:ListItem>
                        <asp:ListItem>Female</asp:ListItem>
              </asp:DropDownList><br />
                </b>
            </div><br />
            <div>
               <b><asp:Label ID="lbldempimg" class="lbl" runat="server" Text="Employee Image:"></asp:Label> &nbsp;&nbsp;&nbsp; </b>
               <asp:FileUpload ID="dempimg" runat="server" />
            </div><br />
            <hr />   
            <div>
                <asp:Button ID="btndelete" class="btn btn-default" style="margin-left:270px;" runat="server" Text="Delete" Width="150px" />
                 <asp:Button ID="btndclear" class="btn btn-default" style="margin-left:90px;" runat="server" Text="Clear" Width="150px" />    
            </div><br /> 
       </asp:Panel>
    </div>
 <div class="row" style="margin-left:-15px;margin-top:-10px;">
        <div class="col-lg-12" >
           <asp:Panel ID="panelselect" runat="server"  style="width:900px;background-color:#1394a785;" BorderStyle="Solid"> 
              <br /> <h1>&nbsp;&nbsp;&nbsp; Select Employee to View</h1><hr />
                      <div class="col-lg-10">
                            <asp:GridView ID="GridView2" style="margin-left:10px;" runat="server" AutoGenerateColumns="False" 
                                DataKeyNames="EmpID" DataSourceID="tblemployee" AllowSorting="True" 
                                BackColor="Black" BorderColor="Black" BorderStyle="Solid" BorderWidth="2px" 
                                CellPadding="2" ForeColor="Black" Width="864px" CellSpacing="2">
                                <Columns>
                                    <asp:CommandField ButtonType="Button" ShowSelectButton="True">
                                    <ControlStyle BackColor="#269900" ForeColor="White" />
                                    </asp:CommandField>
                                    <asp:BoundField DataField="EmpID" HeaderText="EmpID"  SortExpression="EmpID" Visible="true" ReadOnly="True" >
                                    </asp:BoundField>
                                    <asp:BoundField DataField="EmpName" HeaderText="EmpName" SortExpression="EmpName" >
                                    </asp:BoundField>
                                    <asp:BoundField DataField="Contactno" HeaderText="Contactno" SortExpression="Contactno" >
                                    </asp:BoundField>
                                    <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" >
                                    </asp:BoundField>
                                    <asp:BoundField DataField="DOB" HeaderText="DOB" SortExpression="DOB" >
                                    <ControlStyle Width="60px" />
                                    <ItemStyle />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="DOJ" HeaderText="DOJ" SortExpression="DOJ" >
                                    </asp:BoundField>
                                    <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
                                    <asp:BoundField DataField="Empimg" HeaderText="Empimg" SortExpression="Empimg" />
                                </Columns>
                                <HeaderStyle BackColor="#269900" ForeColor="White" Height="15px" BorderColor="#003300" Font-Bold="True" 
                                HorizontalAlign="Center" />
                                <PagerStyle ForeColor="Black" HorizontalAlign="Right" />
                                <RowStyle BackColor="White" />
                                <SelectedRowStyle Font-Bold="True" />
                           </asp:GridView><br />
                            <asp:AccessDataSource ID="tblemployee" runat="server" DataFile="~/App_Data/electoshop.accdb" 
                                OldValuesParameterFormatString="original_{0}"  SelectCommand="SELECT * FROM [Employee]">
                            </asp:AccessDataSource>
                        </div>
            </asp:Panel>
        </div>
    </div>
               
       <div class="row" style="margin-left:-15px;margin-top:15px;">
            <asp:Panel ID="paneldetails" class ="frm" style="width:900px;background-color:#1394a785;" BorderStyle="Solid" runat="server">
              <br />  <h1>Employee Details</h1>
                <hr />
                       <div class="col-lg-11">
                         <asp:Image ID="proimg" runat="server" Width="250px" Height="250px" />
                       
                        <div class="row" style="line-height:2.7;font-weight:bold;font-size:16px">
                        <div class="col-lg-5" style="text-align:right">Employeeid:</div>
                        <div class="col-lg-5" ><asp:Label ID="lblempid"  class="control-label" runat="server" Text="Label"></asp:Label></div>
                        <br />
                        <div class="col-lg-5" style="text-align:right">EmployeeName:</div>
                        <div class="col-lg-5"><asp:Label ID="lblempname" class="control-label" runat="server" Text="Label"></asp:Label></div>       
                        <br />
                        <div  class="col-lg-5" style="text-align:right">Contactno:</div>
                        <div class="col-lg-5"><asp:Label ID="lblcontactno" class="control-label" runat="server" Text="Label"></asp:Label></div>
                        <br />
                        <div class="col-lg-5" style="text-align:right">Email:</div>
                        <div class="col-lg-5"><asp:Label ID="lblemail" class="control-label" runat="server" Text="Label"></asp:Label></div>
                        <br />
                        <div class="col-lg-5" style="text-align:right">Dob:</div>
                        <div class="col-lg-5"><asp:Label ID="lbldob" class="control-label" runat="server" Text="Label"></asp:Label></div>
                        <br />
                         <div class="col-lg-5" style="text-align:right">Doj:</div>
                        <div class="col-lg-5"><asp:Label ID="lbldoj" class="control-label" runat="server" Text="Label"></asp:Label></div>
                        <br />
                         <div class="col-lg-5" style="text-align:right">Gender:</div>
                        <div class="col-lg-5"><asp:Label ID="lblempgender" class="control-label" runat="server" Text="Label"></asp:Label></div>
                        <br />
                       
                       </div>     
                  </div>   
            </asp:Panel>
           <br />
    </div>
   </div>
</div>
</asp:Content>

