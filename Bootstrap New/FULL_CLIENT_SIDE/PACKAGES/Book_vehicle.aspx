<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Book_vehicle.aspx.cs" Inherits="botstrap.Book_vehicle" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>

    <style>
.box
{
	position: absolute;
	left: 20%;
	//transform: translate(-50%,-50%);
	width: 800px;
	height: 1400px;
	padding: 60px 30px;
	box-sizing: border-box;
	background: rgba(0,0,0,.7);
border:groove;
border-color:black;
}

 .Button1 {
            border:thick;
    border-color:black;
	height: 50px;
    width:100px;
	color:#17202a;
	font-size: 20px;
	background:#fdfefe;
	cursor: pointer;
	border-radius: 20px;
        }

 #name,#email,#txt5,#txt6,#txt7,#TextBox1{
        
	border-bottom: 1px solid #fff;
	background: transparent;
	outline: none;
	color: #fff;
	font-size: 16px;
    font-weight:bold;
            border-left-style: none;
            border-left-color: inherit;
            border-left-width: medium;
            border-right-style: none;
            border-right-color: inherit;
            border-right-width: medium;
            border-top-style: none;
            border-top-color: inherit;
            border-top-width: medium;
        }

    </style>
</head>
<body style="background-color:#5DADE2">
    <form id="form1" runat="server" autocomplete="off">
        .
        <div class="box">
        
    <div style=" color: #FFFFFF; font-weight: bolder; font-size: x-large;">
         <p style="font-family: Arial, Helvetica, sans-serif; font-size: 30px; font-weight: bolder; text-transform: uppercase; color:#fdfefe; margin-top:5px;">
             select the bus where u want to book seat:- 
         </p>
        USERNAME:-
        <asp:TextBox ID="name" runat="server"></asp:TextBox>
         <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="name is required" ControlToValidate="name" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>

         <br />
         <br />

        EMAIL-ID:-
        <asp:TextBox ID="email" runat="server"></asp:TextBox>
         <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Email Id is Invalid" ViewStateMode="Inherit" ControlToValidate="email" Display="Dynamic" ForeColor="Red" SetFocusOnError="True" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Email is required" ControlToValidate="email" ForeColor="Red" SetFocusOnError="True" Display="Dynamic"></asp:RequiredFieldValidator>
         <br />
         <br />
       <p style="font-family: Arial, Helvetica, sans-serif; font-size: 30px; font-weight: bolder; text-transform: uppercase; color:#fdfefe">SELECT THE BUS NAME </p>
         <asp:DropDownList ID="DropDownList4" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource4" DataTextField="vehicle_name" DataValueField="vehicle_name"  Height="35px" Width="220px" BackColor="#5DADE2" Font-Bold="True" ForeColor="White"  Font-Size="20px">
         </asp:DropDownList>
         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;




         <br />
         <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:projectConnectionString %>" SelectCommand="SELECT [vehicle_name] FROM [vehicle_info]"></asp:SqlDataSource>




      <p style="font-family: Arial, Helvetica, sans-serif; font-size: 30px; font-weight: bolder; text-transform: uppercase; color:#fdfefe">
            select the bus seat no:-</p>

        <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="seat_no" DataValueField="seat_no"  Height="35px" Width="125px" BackColor="#5DADE2" Font-Bold="True" ForeColor="White"  Font-Size="20px"></asp:DropDownList>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Required" ControlToValidate="DropDownList2" ForeColor="Red" SetFocusOnError="True" Display="Dynamic"></asp:RequiredFieldValidator>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="SELECT ANOTHER SEAT" BackColor="#5DADE2" BorderColor="White" Font-Bold="True" Font-Size="Medium" ForeColor="White" />
&nbsp;<asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:projectConnectionString %>" SelectCommand="SELECT [seat_no] FROM [seats] WHERE ([vehicle_name] = @vehicle_name)">
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList4" Name="vehicle_name" PropertyName="SelectedValue" Type="String" />
            </SelectParameters>
         </asp:SqlDataSource>
        <br />

         &nbsp;<asp:Panel ID="Panel1" runat="server">
             <asp:DropDownList ID="DropDownList3" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource3" DataTextField="seat_no" DataValueField="seat_no"  Height="35px" Width="125px" BackColor="#5DADE2" Font-Bold="True" ForeColor="White"  Font-Size="20px">
             </asp:DropDownList>
             <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:projectConnectionString %>" SelectCommand="SELECT [seat_no] FROM [seats] WHERE ([vehicle_name] = @vehicle_name)">
                 <SelectParameters>
                     <asp:ControlParameter ControlID="DropDownList4" Name="vehicle_name" PropertyName="SelectedValue" Type="String" />
                 </SelectParameters>
             </asp:SqlDataSource>
             &nbsp;
         </asp:Panel>
         <br />
         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                 
        <br />
        <br />

        
        NO OF SEATS:-&nbsp; <asp:TextBox ID="txt7" runat="server" placeholder="CALCULATED" ReadOnly="true" ToolTip="VALUE ADDED AUTOMATICALLY">1</asp:TextBox>
          
        
          <br />
        <br />
         PRICE:-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:DropDownList ID="DropDownList6" runat="server" Height="35px" Width="125px" BackColor="#5DADE2" Font-Bold="True" ForeColor="White"  Font-Size="20px" AutoPostBack="True" DataSourceID="SqlDataSource6" DataTextField="price" DataValueField="price">
         </asp:DropDownList>
&nbsp;<asp:SqlDataSource ID="SqlDataSource6" runat="server" ConnectionString="<%$ ConnectionStrings:projectConnectionString %>" SelectCommand="SELECT [price] FROM [vehicle_info] WHERE ([vehicle_name] = @vehicle_name)">
             <SelectParameters>
                 <asp:ControlParameter ControlID="DropDownList4" Name="vehicle_name" PropertyName="SelectedValue" Type="String" />
             </SelectParameters>
         </asp:SqlDataSource>
         TOTAL PRICE:-<asp:TextBox ID="txt6" placeholder="CALCULATED" runat="server" ReadOnly="true" ToolTip="VALUE ADDED AUTOMATICALLY"></asp:TextBox>
      
        <br />
        <br />
         SELECT THE DATE OF TRAVELLING:-
                  <asp:TextBox ID="txt5" runat="server" Width="184px"></asp:TextBox>
         
                    <asp:ImageButton ID="ImageButton1" runat="server" Height="33px" ImageUrl="~/FULL_CLIENT_SIDE/Images1/Capture.PNG" OnClick="ImageButton1_Click" Width="24px" />
             
        <br />
                    <asp:Calendar ID="Calendar1" runat="server" OnSelectionChanged="Calendar1_SelectionChanged" BackColor="White" BorderColor="Black" BorderStyle="Solid" CellSpacing="1" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" Height="250px" NextPrevFormat="ShortMonth" Width="330px">
                        <DayHeaderStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" Height="8pt" />
                        <DayStyle BackColor="#CCCCCC" />
                        <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="White" />
                        <OtherMonthDayStyle ForeColor="#999999" />
                        <SelectedDayStyle BackColor="#333399" ForeColor="White" />
                        <TitleStyle BackColor="#333399" BorderStyle="Solid" Font-Bold="True" Font-Size="12pt" ForeColor="White" Height="12pt" />
                        <TodayDayStyle BackColor="#999999" ForeColor="White" />
         </asp:Calendar>
                   <br />
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="SUBMIT" CssClass="Button1" />
        <br />
    <asp:Label ID="lbl" runat="server"></asp:Label>

    <asp:Label ID="lbl1" runat="server"></asp:Label>

                    <br />
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/FULL_CLIENT_SIDE/PACKAGES/PaymentBus.aspx" ForeColor="Black">Create Invoice and Download</asp:HyperLink>
          <br />
    
         <br />
    
    </div>
            <asp:TextBox ID="TextBox1" runat="server" Visible="False" Height="16px">1</asp:TextBox>

        <asp:TextBox ID="TextBox2" runat="server" Visible="False">2</asp:TextBox>

        </div>

    </form>
   
</body>
</html>
