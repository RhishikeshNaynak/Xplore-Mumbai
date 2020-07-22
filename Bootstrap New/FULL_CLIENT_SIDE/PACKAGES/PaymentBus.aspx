<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PaymentBus.aspx.cs" Inherits="botstrap.FULL_CLIENT_SIDE.PACKAGES.Payments" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        .box
{
	position: absolute;
	left: 20%;
	//transform: translate(-50%,-50%);
	width: 1000px;
	height: 400px;
	padding: 60px 30px;
	box-sizing: border-box;
	background: rgba(0,0,0,.7);
border:groove;
border-color:black;
}



    </style>
</head>
<body  style="background-color:#5DADE2">
    <form id="form1" runat="server" autocomplete="off">
       <div class="box">
            <div> &nbsp; <asp:HyperLink ID="HyperLink1" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="X-Large" Font-Underline="True" ForeColor="Black" NavigateUrl="~/FULL_CLIENT_SIDE/homepage/aspnet.aspx" Text="HOME"></asp:HyperLink></div>
         <div>
                     <p style="font-family: Arial, Helvetica, sans-serif; font-size: 35px; font-weight: bolder; text-transform:uppercase; color:#fdfefe; margin-top:5px;">Download invoice:-</p>

         <asp:GridView ID="GridView1" runat="server" BackColor="White" 
    BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" 
    CellPadding="4" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
             <Columns>
                 <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                 <asp:BoundField DataField="email_id" HeaderText="email_id" SortExpression="email_id" />
                 <asp:BoundField DataField="vehicle_name" HeaderText="vehicle_name" SortExpression="vehicle_name" />
                 <asp:BoundField DataField="seat_no" HeaderText="seat_no" SortExpression="seat_no" />
                 <asp:BoundField DataField="seat_noo" HeaderText="seat_noo" SortExpression="seat_noo" />
                 <asp:BoundField DataField="date" HeaderText="date" SortExpression="date" />
                 <asp:BoundField DataField="no_person" HeaderText="no_person" SortExpression="no_person" />
                 <asp:BoundField DataField="tprice" HeaderText="tprice" SortExpression="tprice" />
             </Columns>
    <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
    <HeaderStyle BackColor="#003399" Font-Bold="True" 
        ForeColor="#CCCCFF" />
    <PagerStyle ForeColor="#003399" HorizontalAlign="Left" BackColor="#99CCCC" />
    <RowStyle BackColor="White" ForeColor="#003399" />
    <SelectedRowStyle BackColor="#009999" Font-Bold="True" 
        ForeColor="#CCFF99" />
    <SortedAscendingCellStyle BackColor="#EDF6F6" />
    <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
    <SortedDescendingCellStyle BackColor="#D6DFDF" />
    <SortedDescendingHeaderStyle BackColor="#002876" />
</asp:GridView>
         <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:projectConnectionString %>" SelectCommand="SELECT [name], [email_id], [vehicle_name], [seat_no], [seat_noo], [date], [no_person], [tprice] FROM [Booking_vehicle_Info] WHERE ([name] = @name)">
             <SelectParameters>
                 <asp:SessionParameter Name="name" SessionField="username" Type="String" />
             </SelectParameters>
         </asp:SqlDataSource>
         <br />
<asp:Button ID="Button1" runat="server" Text="CLICK HERE TO DOWNLOAD THE INVOICE" 
onclick="Button1_Click" Height="45px" ForeColor="Black" Font-Size="X-Large" BorderStyle="Groove" Width="500px" />
   
           </div>
           </div>
    </form>
</body>
</html>
