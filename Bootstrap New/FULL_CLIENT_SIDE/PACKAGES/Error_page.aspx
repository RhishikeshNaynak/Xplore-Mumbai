<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Error_page.aspx.cs" Inherits="botstrap.FULL_CLIENT_SIDE.PACKAGES.Error_page1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body  style="background-color:#5dade2;">
    <form id="form1" runat="server">
    
     <div style="text-align:center; margin-top:50px;">
       <img src="Capture4.PNG" />
    </div>
        <div style="text-align:center; margin-top:50px; font-family: Arial, Helvetica, sans-serif; font-size: 40px; font-weight: bolder; color: #FFFFFF; text-transform: uppercase;">
    <p>
   failed  to load requested page please logged in to to visit this page.click here for 
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/FULL_CLIENT_SIDE/LoginSide/login.aspx">login</asp:HyperLink></p>
    </div>
    
    </form>
</body>
</html>
