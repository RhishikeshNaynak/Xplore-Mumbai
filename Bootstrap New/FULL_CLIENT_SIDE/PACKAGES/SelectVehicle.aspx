<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SelectVehicle.aspx.cs" Inherits="botstrap.Tour_packages.SelectVehicle" %>

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
	width: 800px;
	height: 1000px;
	padding: 80px 40px;
	box-sizing: border-box;
	background: rgba(0,0,0,.7);
   border:groove;
    border-color:black;
}


    </style>

</head>
<body style="background-color:#5DADE2 ">
    <form id="form1" runat="server">
    
    <div class="box">
        <p style="font-family: Arial, Helvetica, sans-serif; font-size: 35px; font-weight: bolder; text-transform:uppercase; color:#fdfefe; margin-top:5px;">Select method of travel:</p>
     
       <p style="font-family: Arial, Helvetica, sans-serif; font-size: 35px; font-weight: bolder; text-transform: uppercase; color:#fdfefe;">List of BUSES:-</p>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource2" CellPadding="4" DataKeyNames="vehicle_id" GridLines="None" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" ForeColor="Black" ToolTip="PLZZZ REMEMBER VEHICLE NAME">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="vehicle_id" HeaderText="vehicle_id" SortExpression="vehicle_id" InsertVisible="False" ReadOnly="True" />
                    <asp:BoundField DataField="vehicle_name" HeaderText="vehicle_name" SortExpression="vehicle_name" />
                    <asp:BoundField DataField="vehicle_type" HeaderText="vehicle_type" SortExpression="vehicle_type" />
                    <asp:BoundField DataField="specification" HeaderText="specification" SortExpression="specification" />
                    <asp:BoundField DataField="seats" HeaderText="seats" SortExpression="seats" />
                    <asp:BoundField DataField="price" HeaderText="price" SortExpression="price" />
                </Columns>
                <EditRowStyle BackColor="#2461BF" />
                <FooterStyle BackColor="#507CD1" ForeColor="White" Font-Bold="True" />
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#EFF3FB" />
                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F5F7FB" />
                <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                <SortedDescendingCellStyle BackColor="#E9EBEF" />
                <SortedDescendingHeaderStyle BackColor="#4870BE" />
            </asp:GridView>

     
        <p>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:projectConnectionString2 %>" SelectCommand="SELECT * FROM [vehicle_info]">
            </asp:SqlDataSource>

        </p>
        <p style="font-family: Arial, Helvetica, sans-serif; font-size: 35px; font-weight: bolder; text-transform: uppercase; color:#fdfefe;">List of CARS:-</p>
            <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" CellPadding="4" DataKeyNames="car_id" GridLines="None" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" ForeColor="#333333">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="car_id" HeaderText="car_id" SortExpression="car_id" InsertVisible="False" ReadOnly="True" />
                    <asp:BoundField DataField="car_name" HeaderText="car_name" SortExpression="car_name" />
                    <asp:BoundField DataField="specification" HeaderText="specification" SortExpression="specification" />
                    <asp:BoundField DataField="seats" HeaderText="seats" SortExpression="seats" />
                    <asp:BoundField DataField="price" HeaderText="price" SortExpression="price" />
                </Columns>
                <EditRowStyle BackColor="#2461BF" />
                <FooterStyle BackColor="#507CD1" ForeColor="White" Font-Bold="True" />
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#EFF3FB" />
                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F5F7FB" />
                <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                <SortedDescendingCellStyle BackColor="#E9EBEF" />
                <SortedDescendingHeaderStyle BackColor="#4870BE" />
            </asp:GridView>

     
        <p>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:projectConnectionString3 %>" SelectCommand="SELECT * FROM [car_details]">
            </asp:SqlDataSource>

        </p>



















        <p style="font-size: 32px; font-family: Arial, Helvetica, sans-serif; font-weight: bolder; color:#fdfefe; text-transform: uppercase">
            for bus booking&nbsp; <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/FULL_CLIENT_SIDE/PACKAGES/Book_vehicle.aspx" ForeColor="#CCCCCC">
                 CLICK HERE</asp:HyperLink>
            <br />
            for car booking
            <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/FULL_CLIENT_SIDE/PACKAGES/Car_booking.aspx" ForeColor="#CCCCCC"> CLICK HERE</asp:HyperLink>

        </p>
        <!--
              <div>
            <table style="width: 82%; margin-left: 98px;">
            <tr>
                <td>Vehicle_id</td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
                
            </tr>
            <tr>
                <td>Vehicle_name</td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                </td>
              
            </tr>
            <tr>
                <td>Vehicle_type</td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                </td>
                
            </tr>
            <tr>
                <td>Specifucation</td>
                <td>
                    <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                </td>
                
            </tr>
            <tr>
                <td>Seats</td>
                <td>
                    <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                </td>
                
            </tr>
            <tr>
                <td>Price</td>
                <td>
                    <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                </td>
                
            </tr>
        </table>
        </div>  -->
            
        </div>
    </form>
</body>
</html>
