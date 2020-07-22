<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BookTour.aspx.cs" Inherits="botstrap.FULL_CLIENT_SIDE.PACKAGES.BookTour" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 501px;
        }
        .auto-style2 {
            width: 501px;
            height: 23px;
        }
        .auto-style4 {
            width: 501px;
            height: 202px;
        }
        
        .box
{
	position: absolute;
	left: 20%;
	//transform: translate(-50%,-50%);
	width: 800px;
	height: 1000px;
	padding: 80px 40px;
	box-sizing: border-box;
	background: rgba(0,0,0,.7);
border:groove;
border-color:black;
}
        .auto-style6 {
            width: 501px;
            height: 26px;
        }
        
#txt1,#txt2,#txt3,#txt4,#txt5,#txt6,#txt7{
        
	border: none;
	border-bottom: 1px solid #fff;
	background: transparent;
	outline: none;
	height: 40px;
	color: #fff;
	font-size: 16px;
    font-weight:bold;
}
 .Button1 {
     border:thick;
    border-color:black;
	outline: none;
	height: 50px;
    width:100px;
	color:#17202a;
	font-size: 20px;
	background:#fdfefe;
	cursor: pointer;
	border-radius: 20px;
        }
        
        .auto-style7 {
            width: 636px;
        }
        .auto-style8 {
            width: 636px;
            height: 23px;
        }
        .auto-style9 {
            width: 636px;
            height: 26px;
        }
        .auto-style10 {
            width: 636px;
            height: 202px;
        }
        
    </style>
</head>
<body style="background-color:#5DADE2   ">
    <form id="form1" runat="server" autocomplete="off">

        <div class="box">
    <div>
    
     <p style="font-family: Arial, Helvetica, sans-serif; font-size: 35px; font-weight: bolder; text-transform:uppercase; color:#fdfefe; margin-top:3px;">provide tour booking details</p> </div>
    
    <div>
        <table style="width: 50%; margin-right: 112px;">
            <tr>
                <td class="auto-style1" style="font-family: Arial, Helvetica, sans-serif; font-size: large; font-style: normal; font-weight: bolder; color: #FFFFFF; vertical-align: middle;">TOUR NAME</td>
                <td class="auto-style7">
                    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" Height="35px" Width="220px" BackColor="#5DADE2" Font-Bold="True" ForeColor="White"  Font-Size="20px" DataSourceID="SqlDataSource1" DataTextField="tour_package" DataValueField="tour_package">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:projectConnectionString2 %>" SelectCommand="SELECT [tour_package] FROM [tour_packages]"></asp:SqlDataSource>
                    <br />
                </td>
            
            </tr>
            <tr>
                <td class="auto-style2" style="font-family: Arial, Helvetica, sans-serif; font-size: large; font-style: normal; font-weight: bolder; color: #FFFFFF; vertical-align: middle;">TOUR HOLDER NAME</td>
                <td class="auto-style8">
                    <asp:TextBox ID="txt2" runat="server" Width="232px"></asp:TextBox>
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Name is required" ControlToValidate="txt2" ForeColor="Red" SetFocusOnError="True" Display="Dynamic"></asp:RequiredFieldValidator>
                </td>
                
            </tr>
            <tr>
                <td class="auto-style6" style="font-family: Arial, Helvetica, sans-serif; font-size: large; font-style: normal; font-weight: bolder; color: #FFFFFF; vertical-align: middle;">EMAIL_ID</td>

                <td class="auto-style9">
                    <asp:TextBox ID="txt3" runat="server" Width="228px"></asp:TextBox>
                      <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Email Id is Invalid" ViewStateMode="Inherit" ControlToValidate="txt3" Display="Dynamic" ForeColor="Red" SetFocusOnError="True" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator33" runat="server" ErrorMessage="Email is required" ControlToValidate="txt3" ForeColor="Red" SetFocusOnError="True" Display="Dynamic"></asp:RequiredFieldValidator>
                </td>
            
            </tr>
            <tr>
                <td class="auto-style1" style="font-family: Arial, Helvetica, sans-serif; font-size: large; font-style: normal; font-weight: bolder; color: #FFFFFF; vertical-align: middle;">PHONE NO</td>
                <td class="auto-style7">
                    <asp:TextBox ID="txt4" runat="server" Width="225px"></asp:TextBox>
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Phone is required" ControlToValidate="txt4" ForeColor="Red" SetFocusOnError="True" Display="Dynamic"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Phone no is Invalid" ControlToValidate="txt4" Display="Dynamic" ForeColor="Red" SetFocusOnError="True" ValidationExpression="\d{10}"></asp:RegularExpressionValidator>
                </td>
                
            </tr>
            <tr>
                <td class="auto-style1" style="font-family: Arial, Helvetica, sans-serif; font-size: large; font-style: normal; font-weight: bolder; color: #FFFFFF; vertical-align: middle;">NO OF PERSONS</td>
                <td class="auto-style7">
                    <asp:TextBox ID="txt6" runat="server" Width="219px"></asp:TextBox>
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ErrorMessage="No is required" ControlToValidate="txt6" ForeColor="Red" SetFocusOnError="True" Display="Dynamic"></asp:RequiredFieldValidator>
                <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Enter a Number"
                            ControlToValidate="txt6" ForeColor="Red"
                        ValueToCompare="Integer" Type="Integer" SetFocusOnError="True" Display="Dynamic"
                          Operator="DataTypeCheck">
                      </asp:CompareValidator>
                </td>
                
            </tr>
            <tr>
                <td class="auto-style4" style="font-family: Arial, Helvetica, sans-serif; font-size: large; font-style: normal; font-weight: bolder; color: #FFFFFF; vertical-align: middle;">DEPURTURE DATE</td>
                <td class="auto-style10">
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
                    <br />
                </td>
            
            </tr>
           
            <tr>
                <td class="auto-style1" style="font-family: Arial, Helvetica, sans-serif; font-size: large; font-style: normal; font-weight: bolder; color: #FFFFFF; vertical-align: middle;">PRICE</td>
                <td class="auto-style7">
                    <asp:DropDownList ID="DropDownList2" runat="server" Height="35px" Width="220px" BackColor="#3366FF" Font-Bold="True" ForeColor="White"  Font-Size="20px" AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="cost_per_person" DataValueField="cost_per_person" >
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:projectConnectionString2 %>" SelectCommand="SELECT [cost_per_person] FROM [tour_packages] WHERE ([tour_package] = @tour_package)">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="DropDownList1" Name="tour_package" PropertyName="SelectedValue" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                    <br />
                </td>
                
            </tr>
           <tr>
                <td class="auto-style1" style="font-family: Arial, Helvetica, sans-serif; font-size: large; font-style: normal; font-weight: bolder; color: #FFFFFF; vertical-align: middle;">total price</td>
                <td class="auto-style7">
                    <asp:TextBox ID="txt7" placeholder="CALCULATED" runat="server" Width="220px"></asp:TextBox>
                </td>
                
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit" CssClass="Button1" />
                </td>
                <td class="auto-style7">&nbsp;</td>
                 
            </tr>
            </table>
                <p style="font-family: Arial, Helvetica, sans-serif; font-size: large; font-style: normal; font-weight: bolder; color: #FFFFFF; vertical-align: top;">
                    <asp:Label ID="lbl" runat="server" Text=""></asp:Label>
                    <asp:Label ID="lbl1" runat="server"></asp:Label>
                </p>

        <asp:HyperLink ID="HyperLink1" runat="server" Font-Bold="True" ForeColor="White" Font-Size="X-Large" NavigateUrl="~/FULL_CLIENT_SIDE/PACKAGES/TourPayment.aspx">Create Invoice And download</asp:HyperLink>
    </div>

            </div>
    </form>
 
</body>
</html>
