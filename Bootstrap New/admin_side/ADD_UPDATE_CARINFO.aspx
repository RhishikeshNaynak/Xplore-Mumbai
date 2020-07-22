<%@ Page Title="" Language="C#" MasterPageFile="~/admin_side/Site1.Master" AutoEventWireup="true" CodeBehind="ADD_UPDATE_CARINFO.aspx.cs" Inherits="botstrap.admin_side.ADD_UPDATE_CARINFO" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
       <p style="font-family: Arial, Helvetica, sans-serif; font-size: 25px; text-transform: uppercase; color: #000000; font-weight: bolder; vertical-align: middle;" >
        YOU CAN INSERT,UPDATE AND DELETE CAR INFORMATION HERE BY SELECTING THE LINKS GIVEN IN GRIDVIEW CONTROL.
   
    </p>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="car_id" DataSourceID="SqlDataSource1" ShowFooter="True">
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
            <asp:TemplateField HeaderText="car_id" InsertVisible="False" SortExpression="car_id">
                <EditItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("car_id") %>'></asp:Label>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("car_id") %>'></asp:Label>
                </ItemTemplate>
                 <FooterTemplate>
                        <asp:LinkButton ValidationGroup="Insert" OnClick="lbInsert_Click" ID="lbInsert" runat="server">Insert</asp:LinkButton>
                    </FooterTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="car_name" SortExpression="car_name">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("car_name") %>'></asp:TextBox>
                     <asp:RequiredFieldValidator ID="rfvInsertName" runat="server" 
                            ErrorMessage="Name is a required field" 
                            ControlToValidate="TextBox1" Text="*" ForeColor="Red">
                       </asp:RequiredFieldValidator>
                </EditItemTemplate>          
                <ItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("car_name") %>'></asp:Label>
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
            <asp:TemplateField HeaderText="specification" SortExpression="specification">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("specification") %>'></asp:TextBox>
                     <asp:RequiredFieldValidator ID="rfvInsertspeci" runat="server" 
                            ErrorMessage="specification is a required field" 
                            ControlToValidate="TextBox2" Text="*" ForeColor="Red">
                       </asp:RequiredFieldValidator>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label3" runat="server" Text='<%# Bind("specification") %>'></asp:Label>
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
                    <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("seats") %>'></asp:TextBox>
                      <asp:RequiredFieldValidator ID="rfvInsertseats" runat="server" 
                            ErrorMessage="seats is a required field" 
                            ControlToValidate="TextBox3" Text="*" ForeColor="Red">
                          
                       </asp:RequiredFieldValidator>
                </EditItemTemplate>

                <ItemTemplate>
                    <asp:Label ID="Label4" runat="server" Text='<%# Bind("seats") %>'></asp:Label>
                </ItemTemplate>
                <FooterTemplate>
                        <asp:TextBox ID="txtseats" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvInsertseats" runat="server" 
                            ErrorMessage="seats is a required field" 
                            ControlToValidate="txtseats" Text="*" ForeColor="Red"
                            ValidationGroup="Insert">
                       </asp:RequiredFieldValidator>
                    </FooterTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="price" SortExpression="price">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("price") %>'></asp:TextBox>
                     <asp:RequiredFieldValidator ID="rfvInsertprice" runat="server" 
                            ErrorMessage="price is a required field" 
                            ControlToValidate="TextBox4" Text="*" ForeColor="Red">
                          
                       </asp:RequiredFieldValidator>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label5" runat="server" Text='<%# Bind("price") %>'></asp:Label>
                </ItemTemplate>
                 <FooterTemplate>
                        <asp:TextBox ID="txtprice" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvInsertprice" runat="server" 
                            ErrorMessage="price a required field" 
                            ControlToValidate="txtprice" Text="*" ForeColor="Red"
                            ValidationGroup="Insert">
                       </asp:RequiredFieldValidator>
                    </FooterTemplate>
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
     <asp:ValidationSummary ID="ValidationSummary1"  ValidationGroup="Insert" ForeColor="red" runat="server" />
        <asp:ValidationSummary ID="ValidationSummary2" runat="server" />

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:projectConnectionString %>" DeleteCommand="DELETE FROM [Car_details] WHERE [car_id] = @car_id" InsertCommand="INSERT INTO [Car_details] ([car_name], [specification], [seats], [price]) VALUES (@car_name, @specification, @seats, @price)" SelectCommand="SELECT * FROM [Car_details]" UpdateCommand="UPDATE [Car_details] SET [car_name] = @car_name, [specification] = @specification, [seats] = @seats, [price] = @price WHERE [car_id] = @car_id">
        <DeleteParameters>
            <asp:Parameter Name="car_id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="car_name" Type="String" />
            <asp:Parameter Name="specification" Type="String" />
            <asp:Parameter Name="seats" Type="String" />
            <asp:Parameter Name="price" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="car_name" Type="String" />
            <asp:Parameter Name="specification" Type="String" />
            <asp:Parameter Name="seats" Type="String" />
            <asp:Parameter Name="price" Type="String" />
            <asp:Parameter Name="car_id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
       <p style="font-family: Arial, Helvetica, sans-serif; font-size: 25px; text-transform: uppercase; color: #000000; font-weight: bolder; vertical-align: middle;" >
        YOU CAN INSERT,UPDATE AND DELETE INFORMATION HERE BY SELECTING THE LINKS GIVEN IN GRIDVIEW CONTROL.
        PLZZZ ENTER THE VALID INFORMATION IN EACH COLUMS ELSE YOU GET AN ERROR.
    </p>
</asp:Content>
