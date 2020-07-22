<%@ Page Title="" Language="C#" MasterPageFile="~/admin_side/Site1.Master" AutoEventWireup="true" CodeBehind="Temples_add_update.aspx.cs" Inherits="botstrap.admin_side.Beach_add_update1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
        <p style="font-family: Arial, Helvetica, sans-serif; font-size: 25px; text-transform: uppercase; color: #000000; font-weight: bolder; vertical-align: middle;" >
        INSERT UPDATE AND DELETE TEMPLES INFORMATION HERE:- 
    </p>
    <div style="vertical-align: middle; text-align: center"  >
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="place_id" DataSourceID="SqlDataSource1" ShowFooter="True">
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
                <asp:TemplateField HeaderText="place_id" InsertVisible="False" SortExpression="place_id">
                    <EditItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("place_id") %>'></asp:Label>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("place_id") %>'></asp:Label>
                    </ItemTemplate>
                      <FooterTemplate>
                        <asp:LinkButton ValidationGroup="Insert" OnClick="lbInsert_Click" ID="lbInsert" runat="server">Insert</asp:LinkButton>
                    </FooterTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="place" SortExpression="place">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("place") %>'></asp:TextBox>
                         <asp:RequiredFieldValidator ID="rfvInsertName" runat="server" 
                            ErrorMessage="Place is a required field" 
                            ControlToValidate="TextBox1" Text="*" ForeColor="Red">
                       </asp:RequiredFieldValidator>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label2" runat="server" Text='<%# Bind("place") %>'></asp:Label>
                    </ItemTemplate>
                     <FooterTemplate>
                        <asp:TextBox ID="txtplace" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvInsertName" runat="server" 
                            ErrorMessage="Place is a required field" 
                            ControlToValidate="txtplace" Text="*" ForeColor="Red"
                            ValidationGroup="Insert">
                       </asp:RequiredFieldValidator>
                    </FooterTemplate>
                </asp:TemplateField>

                <asp:TemplateField HeaderText="first_line" SortExpression="first_line">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("first_line") %>'></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvInserttype" runat="server" 
                            ErrorMessage="First_line is a required field" 
                            ControlToValidate="TextBox2" Text="*" ForeColor="Red">
                       </asp:RequiredFieldValidator>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label3" runat="server" Text='<%# Bind("first_line") %>'></asp:Label>
                    </ItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox ID="txtfirst" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvInserttype" runat="server" 
                            ErrorMessage="First_line is a required field" 
                            ControlToValidate="txtfirst" Text="*" ForeColor="Red"
                            ValidationGroup="Insert">
                       </asp:RequiredFieldValidator>
                    </FooterTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="second_line" SortExpression="second_line">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("second_line") %>'></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvInsertspeci" runat="server" 
                            ErrorMessage="Second_line is a required field" 
                            ControlToValidate="TextBox3" Text="*" ForeColor="Red">
                          
                       </asp:RequiredFieldValidator>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label4" runat="server" Text='<%# Bind("second_line") %>'></asp:Label>
                    </ItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox ID="txtsecond" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvInsertspeci" runat="server" 
                            ErrorMessage="Second_line is a required field" 
                            ControlToValidate="txtsecond" Text="*" ForeColor="Red"
                            ValidationGroup="Insert">
                       </asp:RequiredFieldValidator>
                    </FooterTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="third_line" SortExpression="third_line">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("third_line") %>'></asp:TextBox>
                         <asp:RequiredFieldValidator ID="rfvInsertseats" runat="server" 
                            ErrorMessage="Third_line is a required field" 
                            ControlToValidate="TextBox4" Text="*" ForeColor="Red">
                          
                       </asp:RequiredFieldValidator>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label5" runat="server" Text='<%# Bind("third_line") %>'></asp:Label>
                    </ItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox ID="txtthird" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvInsertseats" runat="server" 
                            ErrorMessage="Third_lineis a required field" 
                            ControlToValidate="txtthird" Text="*" ForeColor="Red"
                            ValidationGroup="Insert">
                       </asp:RequiredFieldValidator>
                    </FooterTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="fourth_line" SortExpression="fourth_line">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("fourth_line") %>'></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvInsertprice" runat="server" 
                            ErrorMessage="Fourth_line is a required field" 
                            ControlToValidate="TextBox5" Text="*" ForeColor="Red">
                       </asp:RequiredFieldValidator>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label6" runat="server" Text='<%# Bind("fourth_line") %>'></asp:Label>
                    </ItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox ID="txtfourth" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvInsertprice" runat="server" 
                            ErrorMessage="Fourth_line is a required field" 
                            ControlToValidate="txtfourth" Text="*" ForeColor="Red"
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:projectConnectionString %>" DeleteCommand="DELETE FROM [temples_info] WHERE [place_id] = @place_id" InsertCommand="INSERT INTO [temples_info] ([place], [first_line], [second_line], [third_line], [fourth_line]) VALUES (@place, @first_line, @second_line, @third_line, @fourth_line)" SelectCommand="SELECT * FROM [temples_info]" UpdateCommand="UPDATE [temples_info] SET [place] = @place, [first_line] = @first_line, [second_line] = @second_line, [third_line] = @third_line, [fourth_line] = @fourth_line WHERE [place_id] = @place_id">
            <DeleteParameters>
                <asp:Parameter Name="place_id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="place" Type="String" />
                <asp:Parameter Name="first_line" Type="String" />
                <asp:Parameter Name="second_line" Type="String" />
                <asp:Parameter Name="third_line" Type="String" />
                <asp:Parameter Name="fourth_line" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="place" Type="String" />
                <asp:Parameter Name="first_line" Type="String" />
                <asp:Parameter Name="second_line" Type="String" />
                <asp:Parameter Name="third_line" Type="String" />
                <asp:Parameter Name="fourth_line" Type="String" />
                <asp:Parameter Name="place_id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </div>

     <p style="font-family: Arial, Helvetica, sans-serif; font-size: 25px; text-transform: uppercase; color: #000000; font-weight: bolder; vertical-align: middle;" >
        YOU CAN INSERT,UPDATE AND DELETE INFORMATION HERE BY SELECTING THE LINKS GIVEN IN GRIDVIEW CONTROL.
        PLZZZ ENTER THE VALID INFORMATION IN EACH COLUMS ELSE YOU GET AN ERROR.
    </p>
</asp:Content>
