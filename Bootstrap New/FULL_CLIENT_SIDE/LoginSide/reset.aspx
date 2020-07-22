<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="reset.aspx.cs" Inherits="botstrap.transparent.reset" %>

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
    background-color:#aed6f1 ;    

	font-family: sans-serif;
    }

.ResetBox
{
	position: absolute;
	top: 50%;
	left: 50%;
	transform: translate(-50%,-50%);
	width: 440px;
	height: 500px;
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
.ResetBox p
{
	margin: 0;
	padding: 0;
	font-weight: bold;
	color: #fff;
}
.ResetBox input
{
	width: 100%;
	margin-bottom: 20px;
}
.ResetBox input[type="text"],
.ResetBox input[type="password"]
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
.ResetBox input[type="submit"]
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
ResetBox input[type="submit"]:hover
{
	background: #efed40;
	color: #262626;
}
.ResetBox a
{
	color: #fff;
	font-size: 14px;
	font-weight: bold;
	text-decoration: none;
}


    </style>

</head>
    <body>
		<div class="ResetBox">
			<img src="user.png" class="user">
			<h2>UPDATE PASSWARD HERE</h2>
            <form id="form1" runat="server" autocomplete="off">
                <p>ENTER VALID OTP</p>
                <asp:TextBox ID="Text"  placeholder="username" runat="server" Width="180px"></asp:TextBox>

                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Username is Required" SetFocusOnError="True" Display="Dynamic" ControlToValidate="Text" ForeColor="Red"></asp:RequiredFieldValidator>
                <p>ENTER NEW PASSWARD</p>
                <asp:TextBox ID="password"   placeholder="••••••" runat="server"  Width="180px" TextMode="Password">></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Passward is Required" SetFocusOnError="True" Display="Dynamic" ControlToValidate="password" ForeColor="Red"></asp:RequiredFieldValidator>
   
                 <p>CONFIRM PASSWARD</p>
                <asp:TextBox ID="confirm"   placeholder="••••••" runat="server"  Width="180px" TextMode="Password">></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Passward is Required" SetFocusOnError="True" Display="Dynamic" ControlToValidate="confirm" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Passward is not matching" SetFocusOnError="True"  Display="Dynamic" ControlToValidate="confirm"  ForeColor="Red" ControlToCompare="password"></asp:CompareValidator>
                <asp:Button ID="Button1" runat="server" Text="UPDATE" OnClick="submit_Click"/>


                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/FULL_CLIENT_SIDE/LoginSide/login.aspx">Click here for Login</asp:HyperLink>
                <br />
                 <asp:Label ID="lbl1" runat="server" Text="" ForeColor="White"></asp:Label>
    </form>
    </div>
</body>
</html>
