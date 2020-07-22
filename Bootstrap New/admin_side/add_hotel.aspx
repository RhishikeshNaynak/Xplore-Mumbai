<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="add_hotel.aspx.cs" Inherits="botstrap.admin_side.add_hotel" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 23px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        add&nbsp; hotel&#39;s&nbsp; information</div>

        <div>
            
            <table style="width:100%;">
                <tr>
                    <td class="auto-style1">hotel name</td>
                    <td class="auto-style1"> 
                        <asp:TextBox ID="txt1" runat="server" Height="60px" Width="300px" TextMode="MultiLine"  text-transform="uppercase"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>first_line</td>
                    <td>
                        <asp:TextBox ID="txt2" runat="server" Height="60px" Width="300px" TextMode="MultiLine"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>second_line</td>
                    <td>
                        <asp:TextBox ID="txt3" runat="server" Height="60px" Width="300px" TextMode="MultiLine"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>third_line</td>
                    <td>
                        <asp:TextBox ID="txt4" runat="server" Height="60px" Width="300px" TextMode="MultiLine"></asp:TextBox>
                    </td>
                </tr>

                <tr>
                    <td>fourth_line</td>
                    <td>
                        <asp:TextBox ID="txt5" runat="server" Height="60px" Width="300px" TextMode="MultiLine"></asp:TextBox>
                    </td>
                </tr>

                <tr>
                    <td>fifth_line</td>
                    <td>
                        <asp:TextBox ID="txt6" runat="server" Height="60px" Width="300px" TextMode="MultiLine"></asp:TextBox>
                    </td>
                </tr>

                <tr>
                    <td colspan="2">
                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" style="height: 26px" Text="Button" />
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:Label ID="lbl" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>


            </table>
            
        </div>
    </form>
</body>
</html>
