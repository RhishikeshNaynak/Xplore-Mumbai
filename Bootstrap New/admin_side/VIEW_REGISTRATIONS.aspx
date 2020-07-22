<%@ Page Title="" Language="C#" MasterPageFile="~/admin_side/Site1.Master" AutoEventWireup="true" CodeBehind="VIEW_REGISTRATIONS.aspx.cs" Inherits="botstrap.admin_side.VIEW_REGISTRATIONS" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
       <p style="font-family: Arial, Helvetica, sans-serif; font-size: 25px; text-transform: uppercase; color: #000000; font-weight: bolder; vertical-align: middle;" >
        YOU CAN VEIW AND DELETE INFORMATION OF CUSTOMERS WHO SUCCEFFULLY REGISTED INTO THE WEBSITEHERE BY SELECTING THE LINKS GIVEN IN GRIDVIEW CONTROL.
       
    </p>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="register_id" DataSourceID="SqlDataSource1" Height="186px" Width="584px">
    <Columns>
        <asp:TemplateField ShowHeader="False">
            <ItemTemplate>
                <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete"></asp:LinkButton>
            </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="register_id" InsertVisible="False" SortExpression="register_id">
            <EditItemTemplate>
                <asp:Label ID="Label1" runat="server" Text='<%# Eval("register_id") %>'></asp:Label>
            </EditItemTemplate>
            <ItemTemplate>
                <asp:Label ID="Label1" runat="server" Text='<%# Bind("register_id") %>'></asp:Label>
            </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="username" SortExpression="username">
            <EditItemTemplate>
                <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("username") %>'></asp:TextBox>
            </EditItemTemplate>
            <ItemTemplate>
                <asp:Label ID="Label2" runat="server" Text='<%# Bind("username") %>'></asp:Label>
            </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="passward" SortExpression="passward">
            <EditItemTemplate>
                <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("passward") %>'></asp:TextBox>
            </EditItemTemplate>
            <ItemTemplate>
                <asp:Label ID="Label4" runat="server" Text='<%# Bind("passward") %>'></asp:Label>
            </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="email" SortExpression="email">
            <EditItemTemplate>
                <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("email") %>'></asp:TextBox>
            </EditItemTemplate>
            <ItemTemplate>
                <asp:Label ID="Label3" runat="server" Text='<%# Bind("email") %>'></asp:Label>
            </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="phone" SortExpression="phone">
            <EditItemTemplate>
                <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("phone") %>'></asp:TextBox>
            </EditItemTemplate>
            <ItemTemplate>
                <asp:Label ID="Label5" runat="server" Text='<%# Bind("phone") %>'></asp:Label>
            </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="age" SortExpression="age">
            <EditItemTemplate>
                <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("age") %>'></asp:TextBox>
            </EditItemTemplate>
            <ItemTemplate>
                <asp:Label ID="Label6" runat="server" Text='<%# Bind("age") %>'></asp:Label>
            </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="question" SortExpression="question">
            <EditItemTemplate>
                <asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("question") %>'></asp:TextBox>
            </EditItemTemplate>
            <ItemTemplate>
                <asp:Label ID="Label7" runat="server" Text='<%# Bind("question") %>'></asp:Label>
            </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="answer" SortExpression="answer">
            <EditItemTemplate>
                <asp:TextBox ID="TextBox7" runat="server" Text='<%# Bind("answer") %>'></asp:TextBox>
            </EditItemTemplate>
            <ItemTemplate>
                <asp:Label ID="Label8" runat="server" Text='<%# Bind("answer") %>'></asp:Label>
            </ItemTemplate>
        </asp:TemplateField>
    </Columns>
    <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
    <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
    <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
    <RowStyle BackColor="White" ForeColor="#003399" />
    <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
    <SortedAscendingCellStyle BackColor="#EDF6F6" />
    <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
    <SortedDescendingCellStyle BackColor="#D6DFDF" />
    <SortedDescendingHeaderStyle BackColor="#002876" />
</asp:GridView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:projectConnectionString %>" DeleteCommand="DELETE FROM [registration] WHERE [register_id] = @register_id" InsertCommand="INSERT INTO [registration] ([username], [passward], [email], [phone], [age], [question], [answer]) VALUES (@username, @passward, @email, @phone, @age, @question, @answer)" SelectCommand="SELECT * FROM [registration]" UpdateCommand="UPDATE [registration] SET [username] = @username, [passward] = @passward, [email] = @email, [phone] = @phone, [age] = @age, [question] = @question, [answer] = @answer WHERE [register_id] = @register_id">
    <DeleteParameters>
        <asp:Parameter Name="register_id" Type="Int32" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="username" Type="String" />
        <asp:Parameter Name="passward" Type="String" />
        <asp:Parameter Name="email" Type="String" />
        <asp:Parameter Name="phone" Type="Int32" />
        <asp:Parameter Name="age" Type="Int32" />
        <asp:Parameter Name="question" Type="String" />
        <asp:Parameter Name="answer" Type="String" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="username" Type="String" />
        <asp:Parameter Name="passward" Type="String" />
        <asp:Parameter Name="email" Type="String" />
        <asp:Parameter Name="phone" Type="Int32" />
        <asp:Parameter Name="age" Type="Int32" />
        <asp:Parameter Name="question" Type="String" />
        <asp:Parameter Name="answer" Type="String" />
        <asp:Parameter Name="register_id" Type="Int32" />
    </UpdateParameters>
</asp:SqlDataSource>
       <p style="font-family: Arial, Helvetica, sans-serif; font-size: 25px; text-transform: uppercase; color: #000000; font-weight: bolder; vertical-align: middle;" >
        YOU CAN VIEW AND DELETE INFORMATION HERE BY SELECTING THE LINKS GIVEN IN GRIDVIEW CONTROL.
       
    </p>
</asp:Content>
