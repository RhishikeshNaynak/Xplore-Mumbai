<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="registration.aspx.cs" Inherits="botstrap.transparent.registrationtranspa" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
    <head id="Head1" runat="server">
    <meta charset="utf-8">
  <link href="registrationstyle.css" rel="stylesheet" />
</head>
    <body>
		<div class="RegistrationBox">
			<img src="user.png" class="user">
			<h2>REGISTRATION HERE</h2>
            <form id="form1" runat="server" autocomplete="off" >
                <p>USERNAME</p>
                <asp:TextBox ID="Text"  placeholder="Username" runat="server" ControlToValidate="Text" Width="280px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Username is required" ControlToValidate="Text" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                <p>Password</p>
                <asp:TextBox ID="password"   placeholder="••••••" runat="server" Width="280px" TextMode="Password">></asp:TextBox>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Passward is required" ControlToValidate="password" ForeColor="Red" SetFocusOnError="True" Display="Dynamic" Width="10px"></asp:RequiredFieldValidator>
                <p>EMAIL</p>
                 <asp:TextBox ID="email"  placeholder="Email" runat="server" ControlToValidate="email" Width="280px"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Email Id is Invalid" ViewStateMode="Inherit" ControlToValidate="email" Display="Dynamic" ForeColor="Red" SetFocusOnError="True" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Email is required" ControlToValidate="email" ForeColor="Red" SetFocusOnError="True" Display="Dynamic"></asp:RequiredFieldValidator>
                <p>PHONE NO</p>
                 <asp:TextBox ID="phone"  placeholder="Phone" runat="server" ControlToValidate="phone"  Width="280px"></asp:TextBox>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Phone is required" ControlToValidate="phone" ForeColor="Red" SetFocusOnError="True" Display="Dynamic"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Phone no is Invalid" ControlToValidate="phone" Display="Dynamic" ForeColor="Red" SetFocusOnError="True" ValidationExpression="\d{10}"></asp:RegularExpressionValidator>
           
                <p>AGE</p>
                 <asp:TextBox ID="age"  placeholder="Age" runat="server" Width="280px"></asp:TextBox>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Age is required" ControlToValidate="age" ForeColor="Red" SetFocusOnError="True" Display="Dynamic"></asp:RequiredFieldValidator>
                <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Enter a Number"
                            ControlToValidate="age" ForeColor="Red"
                        ValueToCompare="Integer" Type="Integer" SetFocusOnError="True" Display="Dynamic"
                          Operator="DataTypeCheck">
                      </asp:CompareValidator>


                <p>SECURITY QUESTION</p>
                <asp:DropDownList ID="question" runat="server" Height="29px" Width="212px" BackColor="#336699" ForeColor="White">
                    <asp:ListItem Value="-1">QUESTIONS</asp:ListItem>
                    <asp:ListItem>FAVORITE BOOK?</asp:ListItem>
                    <asp:ListItem>FAVORITE PLACE?</asp:ListItem>
                    <asp:ListItem>FAVORITE DISH</asp:ListItem>
                </asp:DropDownList>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Question is required" ControlToValidate="question" ForeColor="Red" SetFocusOnError="True" Display="Dynamic" InitialValue="-1"></asp:RequiredFieldValidator>

                <br />
                <br />
              
                  <p>ANSWER</p>
                  <asp:TextBox ID="answer"  placeholder="Answer" runat="server" Width="280px"></asp:TextBox>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="Answer is required" ControlToValidate="answer" ForeColor="Red" SetFocusOnError="True" Display="Dynamic"></asp:RequiredFieldValidator>

                <asp:Button ID="submit" runat="server" Text="SIGN UP" OnClick="submit_Click" />
                <asp:Label ID="lbl1" runat="server" Text="" ForeColor="White"></asp:Label>
                &nbsp;<asp:Label ID="lbl2" runat="server" Text="" ForeColor="White"></asp:Label>
                <br />
                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="login.aspx" Font-Bold="True" Font-Size="Medium" Font-Underline="True" ForeColor="White">Already registered!!Click here for login</asp:HyperLink>
    </form>
    </div>
</body>
</html>
