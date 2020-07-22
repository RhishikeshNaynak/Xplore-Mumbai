<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Car_booking.aspx.cs" Inherits="botstrap.FULL_CLIENT_SIDE.PACKAGES.Car_booking" %>

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
	height: 1250px;
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

 #name,#email,#txt5{
        
	border: none;
	border-bottom: 1px solid #fff;
	background: transparent;
	outline: none;
	height: 40px;
	color: #fff;
	font-size: 16px;
    font-weight:bold;
}

    </style>
</head>
<body style="background-color:#5DADE2">
    <form id="form1" runat="server" autocomplete="off">

        <div class="box">
        
    <div style=" color: #FFFFFF; font-weight: bolder; font-size: x-large;">
         <p style="font-family: Arial, Helvetica, sans-serif; font-size: 30px; font-weight: bolder; text-transform: uppercase; color:#fdfefe; margin-top:5px;">
             select the car u want to book:- 
         </p>
        USERNAME:-
        <asp:TextBox ID="name" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Username is required" ControlToValidate="name" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>

         <br />
         <br />

        EMAIL-ID:-
        <asp:TextBox ID="email" runat="server"></asp:TextBox>
       <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Email Id is Invalid" ViewStateMode="Inherit" ControlToValidate="email" Display="Dynamic" ForeColor="Red" SetFocusOnError="True" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Email is required" ControlToValidate="email" ForeColor="Red" SetFocusOnError="True" Display="Dynamic"></asp:RequiredFieldValidator>
         <br />
         <br />
       <p style="font-family: Arial, Helvetica, sans-serif; font-size: 30px; font-weight: bolder; text-transform: uppercase; color:#fdfefe">SELECT THE car NAME </p>
         &nbsp;<asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="car_name" DataValueField="car_name" AppendDataBoundItems="True" Height="35px" Width="182px" BackColor="#5DADE2" Font-Bold="True" ForeColor="White"  Font-Size="20px">
             
         </asp:DropDownList>
        
         <br />




        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:projectConnectionString %>" SelectCommand="SELECT [car_name] FROM [Car_details]">
         </asp:SqlDataSource>

      <p style="font-family: Arial, Helvetica, sans-serif; font-size: 30px; font-weight: bolder; text-transform: uppercase; color:#fdfefe">
            sepecifications:-</p>

        <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="specification" DataValueField="specification"  Height="35px" Width="125px" BackColor="#5DADE2" Font-Bold="True" ForeColor="White"  Font-Size="20px"></asp:DropDownList>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:projectConnectionString %>" SelectCommand="SELECT [specification] FROM [Car_details] WHERE ([car_name] = @car_name)">
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList1" Name="car_name" PropertyName="SelectedValue" Type="String" />
            </SelectParameters>
         </asp:SqlDataSource>
        <br />
         <p style="font-family: Arial, Helvetica, sans-serif; font-size: 30px; font-weight: bolder; text-transform: uppercase; color:#fdfefe">
             price:-</p>

        <asp:DropDownList ID="DropDownList3" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource3" DataTextField="price" DataValueField="price"  Height="35px" Width="125px" BackColor="#5DADE2" Font-Bold="True" ForeColor="White"  Font-Size="20px"></asp:DropDownList>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:projectConnectionString %>" SelectCommand="SELECT [price] FROM [Car_details] WHERE ([car_name] = @car_name)">
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList1" Name="car_name" PropertyName="SelectedValue" Type="String" />
            </SelectParameters>
         </asp:SqlDataSource>
        <br />
       <p style="font-family: Arial, Helvetica, sans-serif; font-size: 30px; font-weight: bolder; text-transform: uppercase; color:#fdfefe">
             SELECT DATE FOR TRAVELLING:-</p>
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
        <br />
        <asp:Button ID="Button1" runat="server" Text="SUBMIT" CssClass="Button1" OnClick="Button1_Click" />
        <br />
    <asp:Label ID="lbl" runat="server"></asp:Label>

    <asp:Label ID="lbl1" runat="server"></asp:Label>

                    <br />
         
      <asp:HyperLink ID="HyperLink1" runat="server" Font-Bold="True" ForeColor="White" Font-Size="X-Large" NavigateUrl="~/FULL_CLIENT_SIDE/PACKAGES/CarPayment.aspx">Create Invoice And download</asp:HyperLink>
    </div>
</div>

    </form>
   
</body>
</html>

