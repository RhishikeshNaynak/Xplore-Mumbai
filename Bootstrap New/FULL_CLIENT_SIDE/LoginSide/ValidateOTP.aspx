<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ValidateOTP.aspx.cs" Inherits="botstrap.transparent.otp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8">
   <style>
 body
{
	margin: 0;
	padding: 0;
	background-image:url(baner.PNG);
    background-size:cover;                      
    background-repeat:no-repeat;    
	font-family: sans-serif;
    }


.ValidateBox {
    position: absolute;
    top: 50%;
    left: 50%;
    transform: translate(-50%,-50%);
    width: 420px;
    height: 440px;
    padding: 80px 40px;
    box-sizing: border-box;
    background: rgba(0,0,0,.8);
   
}


.user
{
	width: 100px;
	height: 100px;
	border-radius: 50%;
	overflow: hidden;
	position: absolute;
	top: calc(-100px/2);
	left: calc(50% - 50px);
}
h2
{
	margin: 0;
	padding: 0 0 20px;
	color: #efed40;
	text-align: center;
}
.ValidateBox p
{
	margin: 0;
	padding: 0;
	font-weight: bold;
	color: #fff;
}
.ValidateBox input
{
	width: 100%;
	margin-bottom: 20px;
}
.ValidateBox input[type="text"],
.ValidateBox input[type="password"]
{
	border: none;
	border-bottom: 1px solid #fff;
	background: transparent;
	outline: none;
	height: 40px;
	color: #fff;
	font-size: 16px;
}
placeholder
{
	color: rgba(255,255,255,.5);
}
.ValidateBox input[type="submit"]
{
	border: none;
	outline: none;
	height: 40px;
	color: #fff;
	font-size: 16px;
	background: #ff267e;
	cursor: pointer;
	border-radius: 20px;
}
.ValidateBox input[type="submit"]:hover
{
	background: #efed40;
	color: #262626;
}
.ValidateBox a
{
	color: #fff;
	font-size: 14px;
	font-weight: bold;
	text-decoration: none;
}


   </style>
</head>
    <body style="background-image:url(baner.PNG);">
		<div class="ValidateBox">
          
			<img src="user.png" class="user">
			<h2>ENTER DETAILS</h2>
            <form id="form1" runat="server" autocomplete="off">
                <p>ENTER USERNAME HERE</p>
                <asp:TextBox ID="Text"  placeholder="username" runat="server" Width="170"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Username is Required" Display="Dynamic" SetFocusOnError="True" ControlToValidate="Text" ForeColor="Red"></asp:RequiredFieldValidator>
                <p>ENTER OTP HERE</p>
                <asp:TextBox ID="password"   placeholder="OTP" runat="server"  Width="180"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="OTP is Required" ControlToValidate="password" Display="Dynamic" SetFocusOnError="True" ForeColor="Red"></asp:RequiredFieldValidator>
               
                <asp:Button ID="submit" runat="server" Text="SUBMIT" OnClick="submit_Click" />

               
    </form>
    </div>
</body>
</html>
