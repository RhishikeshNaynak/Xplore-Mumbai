<%@ Page Title="" Language="C#" MasterPageFile="~/admin_side/Site1.Master" AutoEventWireup="true" CodeBehind="vahicle_info_add_update.aspx.cs" Inherits="botstrap.admin_side.vahicle_info_add_update" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <p style="font-family: Arial, Helvetica, sans-serif; font-size: 25px; text-transform: uppercase; color: #000000; font-weight: bolder; vertical-align: middle;" >
        only&nbsp;UPDATE AND DELETE TOUR INFORMATION HERE:- 
    </p>
    <div>
               <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="vehicle_id" DataSourceID="SqlDataSource1" ShowFooter="True" Height="216px" Width="1118px">
            <Columns>
                <asp:TemplateField ShowHeader="False">
                    <EditItemTemplate>
                        <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="True" CommandName="Update" Text="Update"></asp:LinkButton>
                        &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel"></asp:LinkButton>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit"></asp:LinkButton>
                        &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete"></asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="vehicle_id" InsertVisible="False" SortExpression="vehicle_id">
                    <EditItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("vehicle_id") %>'></asp:Label>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("vehicle_id") %>'></asp:Label>
                    </ItemTemplate>
                    <FooterTemplate>
                        <asp:LinkButton ValidationGroup="Insert" OnClick="lbInsert_Click" ID="lbInsert" runat="server">Insert</asp:LinkButton>
                    </FooterTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="vehicle_name" SortExpression="vehicle_name">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("vehicle_name") %>'></asp:TextBox>
                         <asp:RequiredFieldValidator ID="rfvInsertName" runat="server" 
                            ErrorMessage="Name is a required field" 
                            ControlToValidate="TextBox1" Text="*" ForeColor="Red">
                       </asp:RequiredFieldValidator>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label2" runat="server" Text='<%# Bind("vehicle_name") %>'></asp:Label>
                    </ItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox ID="txtname" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvInsertName" runat="server" 
                            ErrorMessage="Name is a required field" 
                            ControlToValidate="txtname" Text="*" ForeColor="Red"
                            ValidationGroup="Insert">
                       </asp:RequiredFieldValidator>
                    </FooterTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="vehicle_type" SortExpression="vehicle_type">
                    <EditItemTemplate>
                         <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("vehicle_type") %>'></asp:TextBox> 
                        <asp:RequiredFieldValidator ID="rfvInserttype" runat="server" 
                            ErrorMessage="type is a required field" 
                            ControlToValidate="TextBox2" Text="*" ForeColor="Red">
                       </asp:RequiredFieldValidator>
                    </EditItemTemplate>

                    <ItemTemplate>
                        <asp:Label ID="Label3" runat="server" Text='<%# Bind("vehicle_type") %>'></asp:Label>
                    </ItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox ID="txttype" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvInserttype" runat="server" 
                            ErrorMessage="type is a required field" 
                            ControlToValidate="txttype" Text="*" ForeColor="Red"
                            ValidationGroup="Insert">
                       </asp:RequiredFieldValidator>
                    </FooterTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="specification" SortExpression="specification">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("specification") %>'></asp:TextBox>
                         <asp:RequiredFieldValidator ID="rfvInsertspeci" runat="server" 
                            ErrorMessage="specification is a required field" 
                            ControlToValidate="TextBox3" Text="*" ForeColor="Red">
                          
                       </asp:RequiredFieldValidator>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label4" runat="server" Text='<%# Bind("specification") %>'></asp:Label>
                    </ItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox ID="txtspeci" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvInsertspeci" runat="server" 
                            ErrorMessage="specification is a required field" 
                            ControlToValidate="txtspeci" Text="*" ForeColor="Red"
                            ValidationGroup="Insert">
                       </asp:RequiredFieldValidator>
                    </FooterTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="seats" SortExpression="seats">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("seats") %>'></asp:TextBox>

                          
                       
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label5" runat="server" Text='<%# Bind("seats") %>'></asp:Label>
                    </ItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox ID="txtseats" runat="server"></asp:TextBox>
                       
                    </FooterTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="price" SortExpression="price">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("price") %>'></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvInsertprice" runat="server" 
                            ErrorMessage="Price is a required field" 
                            ControlToValidate="TextBox5" Text="*" ForeColor="Red">
                       </asp:RequiredFieldValidator>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label6" runat="server" Text='<%# Bind("price") %>'></asp:Label>
                    </ItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox ID="txtpice" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvInsertprice" runat="server" 
                            ErrorMessage="price is a required field" 
                            ControlToValidate="txtpice" Text="*" ForeColor="Red"
                            ValidationGroup="Insert">
                       </asp:RequiredFieldValidator>
                    </FooterTemplate>
                </asp:TemplateField>
            </Columns>
            <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
            <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
            <PagerStyle ForeColor="#003399" HorizontalAlign="Left" BackColor="#99CCCC" />
            <RowStyle BackColor="White" ForeColor="#003399" />
            <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
            <SortedAscendingCellStyle BackColor="#EDF6F6" />
            <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
            <SortedDescendingCellStyle BackColor="#D6DFDF" />
            <SortedDescendingHeaderStyle BackColor="#002876" />
        </asp:GridView>

        <asp:ValidationSummary ID="ValidationSummary1"  ValidationGroup="Insert" ForeColor="red" runat="server" />
    
          <asp:ValidationSummary ID="ValidationSummary2" runat="server" />

         <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:projectConnectionString %>" DeleteCommand="DELETE FROM [vehicle_info] WHERE [vehicle_id] = @vehicle_id" InsertCommand="INSERT INTO [vehicle_info] ([vehicle_name], [vehicle_type], [specification], [seats], [price]) VALUES (@vehicle_name, @vehicle_type, @specification, @seats, @price)" SelectCommand="SELECT * FROM [vehicle_info]" UpdateCommand="UPDATE [vehicle_info] SET [vehicle_name] = @vehicle_name, [vehicle_type] = @vehicle_type, [specification] = @specification, [seats] = @seats, [price] = @price WHERE [vehicle_id] = @vehicle_id">
            <DeleteParameters>
                <asp:Parameter Name="vehicle_id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="vehicle_name" Type="String" />
                <asp:Parameter Name="vehicle_type" Type="String" />
                <asp:Parameter Name="specification" Type="String" />
                <asp:Parameter Name="seats" Type="String" />
                <asp:Parameter Name="price" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="vehicle_name" Type="String" />
                <asp:Parameter Name="vehicle_type" Type="String" />
                <asp:Parameter Name="specification" Type="String" />
                <asp:Parameter Name="seats" Type="String" />
                <asp:Parameter Name="price" Type="Int32" />
                <asp:Parameter Name="vehicle_id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        
    </div>
    <p style="font-family: Arial, Helvetica, sans-serif; font-size: 25px; text-transform: uppercase; color: #000000; font-weight: bolder; vertical-align: middle;" >
        YOU CAN UPDATE AND DELETE INFORMATION HERE BY SELECTING THE LINKS GIVEN IN GRIDVIEW CONTROL.
        PLZZZ ENTER THE VALID INFORMATION IN EACH COLUMS ELSE YOU GET AN ERROR.
    </p>
    <p style="font-family: Arial, Helvetica, sans-serif; font-size: 25px; text-transform: uppercase; color: #000000; font-weight: bolder; vertical-align: middle;" >
        &nbsp;</p>
    <p style="font-family: Arial, Helvetica, sans-serif; font-size: 25px; text-transform: uppercase; color: #000000; font-weight: bolder; vertical-align: middle;" >
        for adding the vehicle click here:-<asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/admin_side/Add_vehicle.aspx">add vehicle</asp:HyperLink>
    </p>


</asp:Content>
