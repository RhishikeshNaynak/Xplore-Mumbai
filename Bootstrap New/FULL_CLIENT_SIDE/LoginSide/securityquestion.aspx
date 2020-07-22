<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="securityquestion.aspx.cs" Inherits="botstrap.transparent.security" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
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
.loginBox
{
	position: absolute;
	top: 50%;
	left: 50%;
	transform: translate(-50%,-50%);
	width: 440px;
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

        </style>
    </head>
    <body>
		<div class="loginBox">
			<img src="user.png" class="user">
			<h2>SECURITY QUESTIONS</h2>
            <form id="form1" runat="server" autocomplete="off">
               <p>SECURITY QUESTION</p>
                <asp:DropDownList ID="question" runat="server" Height="29px" Width="168px" BackColor="#336699" ForeColor="White">
                    <asp:ListItem Value="-1">QUESTIONS</asp:ListItem>
                    <asp:ListItem>FAVORITE BOOK?</asp:ListItem>
                    <asp:ListItem>FAVORITE PLACE?</asp:ListItem>
                    <asp:ListItem>FAVORITE DISH</asp:ListItem>
                </asp:DropDownList>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Question is required" ControlToValidate="question" ForeColor="Red" SetFocusOnError="True" Display="Dynamic" InitialValue="-1"></asp:RequiredFieldValidator>

                <br />
                <br />
                <br />
                  <p>ANSWER</p>
                  <asp:TextBox ID="answer"  placeholder="answer" runat="server" Width="180px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Answer is required" ControlToValidate="answer" Display="Dynamic" SetFocusOnError="True" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:Button ID="submit" runat="server" Text="sign in" OnClick="submit_Click" />
                <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="forgot.aspx">FORGOTTEN PASSWARD??</asp:HyperLink>
    </form>
    </div>
</body>

</html>
