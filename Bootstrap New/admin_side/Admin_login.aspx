<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin_login.aspx.cs" Inherits="botstrap.admin_side.Admin_login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>ADMIN LOGIN</title>
    <meta charset="utf-8"/>
    <style>
body
{
	margin: 0;
	padding: 0;
	background:url(baner.PNG);
     background-size:cover;                      
    background-repeat:no-repeat;
        

	font-family: sans-serif;
    }


.loginBox
{
	position: absolute;
	top: 50%;
	left: 50%;
	transform: translate(-50%,-50%);
	width: 430px;
	height: 450px;
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
.loginBox p
{
	margin: 0;
	padding: 0;
	font-weight: bold;
	color: #fff;
}
.loginBox input
{
	width: 100%;
	margin-bottom: 20px;
}
.loginBox input[type="text"],
.loginBox input[type="password"]
{
	border: none;
	border-bottom: 1px solid #fff;
	background: transparent;
	outline: none;
	height: 40px;
	color: #fff;
	font-size: 16px;
}
.placeholder
{
	color: rgba(255,255,255,.5);
}
.loginBox input[type="submit"]
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
loginBox input[type="submit"]:hover
{
	background: #efed40;
	color: #262626;
}
.loginBox a
{
	color: #fff;
	font-size: 14px;
	font-weight: bold;
	text-decoration: none;
}

    </style>
   
</head>
    <body>
		<div class="loginBox">
          
			<img src="user.png" class="user"/>
			<h2>ADMIN LOGIN</h2>
            <form id="form1" runat="server">
                <p>USERNAME</p>
                <asp:TextBox ID="Text"  placeholder="username" runat="server" Width="180px" autocomplete="off"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Username is required" ControlToValidate="Text" Display="Dynamic" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                <p>Password</p>
                <asp:TextBox ID="password"   placeholder="••••••" runat="server" Width="180px" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Passward is required" ControlToValidate="password" Display="Dynamic" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                <br />
                <asp:Button ID="submit" runat="server" Text="sign in" OnClick="submit_Click" />
               
                
    </form>
    </div>
</body>
</html>
