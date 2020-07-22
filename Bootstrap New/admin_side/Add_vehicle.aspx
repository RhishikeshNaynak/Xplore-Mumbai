<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Add_vehicle.aspx.cs" Inherits="botstrap.admin_side.Add_vehicle" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>ADD VEHICLE</title>
    <style>
   .box   {
	position: absolute;
	left: 20%;
	//transform: translate(-50%,-50%);
	width: 800px;
	height: 750px;
	padding: 60px 30px;
	box-sizing: border-box;
	background: rgba(0,0,0,.7);
border:groove;
border-color:black;
}
       
#txt1,#txt2,#txt3,#txt4,#txt5{
        
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
 
    </style>
</head>
<body style="background-color:#5DADE2">
    <form id="form1" runat="server">
        <div class="box" style="color:white;">
       <p style="color:white; font-size:40px; font-weight:bolder; text-align:center; margin-top:auto">ADD BUS</p>
              
                  <p>NAME OF VEHICLE</p>
                    <asp:TextBox ID="txt1" runat="server"></asp:TextBox>
                <p>TYPE</p>
                    <asp:TextBox ID="txt2" runat="server"></asp:TextBox>
                 <p>SPECIFICATION</p>
                    <asp:TextBox ID="txt3" runat="server"></asp:TextBox>
                 <p>SEATS</p>
                    <asp:TextBox ID="txt4" runat="server"></asp:TextBox>
                 <p>PRICE</p>
                    <asp:TextBox ID="txt5" runat="server"></asp:TextBox>
             
                    <br />
                  <br />
                  <br />
             
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" CssClass="Button1" />
                    <br />
                    <asp:Label ID="lbl2" runat="server" Text="Label"></asp:Label>
         
              
                    <asp:Label ID="lbl" runat="server" Text=""></asp:Label>
                    <asp:Label ID="lbl3" runat="server" Text=""></asp:Label>
                  </div>
               
    </form>
</body>
</html>
