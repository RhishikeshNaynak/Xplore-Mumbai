<%@ Page Title="" Language="C#" MasterPageFile="~/admin_side/Site1.Master" AutoEventWireup="true" CodeBehind="Addimage.aspx.cs" Inherits="botstrap.admin_side.Addimage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <h style="color:white; font-size:40px; font-weight:bolder; text-align:center;">ADD IMAGE PAGE</h>
<table>
    <tr>
        <td style="color:white; font-size:30px; font-weight:bolder; text-align:center;">image Name</td>
        <td>
            <asp:TextBox ID="t1" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td style="color:white; font-size:30px; font-weight:bolder; text-align:center;">Image</td>
        <td>
            <asp:FileUpload ID="f1" runat="server" />
        </td>
    </tr>
    <tr>
        <td colspan="2">
            <asp:Button ID="b1" runat="server" OnClick="b1_Click" Text="Upload" />
            <br />
            <br />
        </td>
    </tr>
</table>

    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataSourceID="SqlDataSource1" GridLines="Horizontal">
        <AlternatingRowStyle BackColor="#F7F7F7" />
        <Columns>
            <asp:TemplateField HeaderText="image_images">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Eval("image_images") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Image ID="Image1" runat="server" Height="123px" ImageUrl='<%# Eval("image_images") %>' Width="258px" />
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
        <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
        <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
        <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
        <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
        <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
        <SortedAscendingCellStyle BackColor="#F4F4FD" />
        <SortedAscendingHeaderStyle BackColor="#5A4C9D" />
        <SortedDescendingCellStyle BackColor="#D8D8F0" />
        <SortedDescendingHeaderStyle BackColor="#3E3277" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:projectConnectionString %>" SelectCommand="SELECT [image_images] FROM [upload]"></asp:SqlDataSource>
<br />

</asp:Content>

