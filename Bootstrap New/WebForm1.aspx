<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="botstrap.WebForm1" %>

<!DOCTYPE html>

<html>

<head>
    <title>web</title>
		
       <script type = "text/javascript">
            function DisableButton() {
              document.getElementById("<%=btn1.ClientID %>").disabled = true;
           }
          window.onbeforeunload = DisableButton;
</script>

</head>
<link href="style2.css" rel="stylesheet" />
<body>
     <form id="form1" runat="server">
         <div>

             <div>
    
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ADD&nbsp;&nbsp; BOOKS<br />
    
    </div>
        <table style="width:100%;">
            <tr>
                <td>BOOK&nbsp; NAME</td>
                <td>
                    <asp:TextBox ID="txt1" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>BOOK&nbsp; ID</td>
                <td>
                    <asp:TextBox ID="txt2" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">AUTHER&nbsp; NAME</td>
                <td class="auto-style1">
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>COPIES</td>
                <td>
                    <asp:TextBox ID="txt4" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">EDITION</td>
                <td class="auto-style1">
                    <asp:TextBox ID="txt5" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">PRICE</td>
                <td class="auto-style2">
                    <asp:TextBox ID="txt6" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>RATING</td>
                <td>
                    <asp:TextBox ID="txt7" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="btn1" runat="server" OnClick="btn1_Click" Text="SUBMIT"/>
                    <asp:Label ID="lbl1" runat="server" Text="Label"></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
        </table> 
         </div>
        </form>
</body>
</html>