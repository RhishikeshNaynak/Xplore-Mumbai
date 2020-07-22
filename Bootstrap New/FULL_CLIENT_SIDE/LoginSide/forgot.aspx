<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="forgot.aspx.cs" Inherits="botstrap.transparent._for" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
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



.ForgotBox
{
	position: absolute;
	top: 50%;
	left: 50%;
	transform: translate(-50%,-50%);
	width: 420px;
	height: 420px;
	padding: 80px 40px;
	box-sizing: border-box;
	background: rgba(0,0,0,.7);
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
.ForgotBox p
{
	margin: 0;
	padding: 0;
	font-weight: bold;
	color: #fff;
}
.ForgotBox input
{
	width: 100%;
	margin-bottom: 20px;
}
.ForgotBox input[type="text"],
.ForgotBox input[type="password"]
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
.ForgotBox input[type="submit"]
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
ForgotBox input[type="submit"]:hover
{
	background: #efed40;
	color: #262626;
}
.ForgotBox a
{
	color: #fff;
	font-size: 14px;
	font-weight: bold;
	text-decoration: none;
}


   </style>
</head>
    <body>
		<div class="ForgotBox">
			<img src="user.png" class="user">
			<h2>FORGOT PASSWARD</h2>
            <form id="form1" runat="server" autocomplete="off">
                <p>USERNAME</p>
                <asp:TextBox ID="Text"  placeholder="username" runat="server" Width="170px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Username is required" ControlToValidate="Text" Display="Dynamic" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                <p>EMAIL</p>
                <asp:TextBox ID="password"   placeholder="email" runat="server" Width="180px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Email is required" ControlToValidate="password" Display="Dynamic" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Email Id is Invalid" ControlToValidate="password" Display="Dynamic" ForeColor="Red" SetFocusOnError="True" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                <asp:Button ID="submit" runat="server" Text="Genarate OTP" OnClick="submit_Click"/>

                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="ValidateOTP.aspx">Click here for proceed</asp:HyperLink>
                <br>
                   
                <asp:Label ID="lbl1" runat="server" Text="" ForeColor="White"></asp:Label>
    </form>
    </div>
</body>
</html>
