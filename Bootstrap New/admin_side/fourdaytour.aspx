<%@ Page Title="" Language="C#" MasterPageFile="~/admin_side/Site1.Master" AutoEventWireup="true" CodeBehind="fourdaytour.aspx.cs" Inherits="botstrap.admin_side.fourdaytour" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <p style="font-family: Arial, Helvetica, sans-serif; font-size: 25px; text-transform: uppercase; color: #000000; font-weight: bolder; vertical-align: middle;" >
        INSERT UPDATE AND DELETE TOUR ITERNARY INFORMATION HERE:- 
    </p>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="id" DataSourceID="SqlDataSource1" ShowFooter="True">
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
            <asp:TemplateField HeaderText="id" InsertVisible="False" SortExpression="id">
                <EditItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("id") %>'></asp:Label>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("id") %>'></asp:Label>
                </ItemTemplate>
                <FooterTemplate>
                        <asp:LinkButton ValidationGroup="Insert" OnClick="lbInsert_Click" ID="lbInsert" runat="server">Insert</asp:LinkButton>
                    </FooterTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="tour" SortExpression="tour">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("tour") %>'></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvInserttour" runat="server" 
                            ErrorMessage="tour is a required field" 
                            ControlToValidate="TextBox1" Text="*" ForeColor="Red">
                       </asp:RequiredFieldValidator>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("tour") %>'></asp:Label>
                </ItemTemplate>
                <FooterTemplate>
                        <asp:TextBox ID="txttour" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvInserttour" runat="server" 
                            ErrorMessage=" day1 is a required field" 
                            ControlToValidate="txttour" Text="*" ForeColor="Red"
                            ValidationGroup="Insert">
                       </asp:RequiredFieldValidator>
                    </FooterTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="day1" SortExpression="day1">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("day1") %>'></asp:TextBox>
                     <asp:RequiredFieldValidator ID="rfvInsertday" runat="server" 
                            ErrorMessage="Place is a required field" 
                            ControlToValidate="TextBox2" Text="*" ForeColor="Red">
                       </asp:RequiredFieldValidator>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label3" runat="server" Text='<%# Bind("day1") %>'></asp:Label>
                </ItemTemplate>
                <FooterTemplate>
                        <asp:TextBox ID="txtday" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvInsertday" runat="server" 
                            ErrorMessage=" day1 is a required field" 
                            ControlToValidate="txtday" Text="*" ForeColor="Red"
                            ValidationGroup="Insert">
                       </asp:RequiredFieldValidator>
                    </FooterTemplate>

            </asp:TemplateField>
            <asp:TemplateField HeaderText="day11" SortExpression="day11">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("day11") %>'></asp:TextBox>
                     <asp:RequiredFieldValidator ID="rfvInsertdaya" runat="server" 
                            ErrorMessage="day11 is a required field" 
                            ControlToValidate="TextBox3" Text="*" ForeColor="Red">
                       </asp:RequiredFieldValidator>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label4" runat="server" Text='<%# Bind("day11") %>'></asp:Label>
                </ItemTemplate>
                <FooterTemplate>
                        <asp:TextBox ID="txtdaya" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvInsertdaya" runat="server" 
                            ErrorMessage=" day11 is a required field" 
                            ControlToValidate="txtdaya" Text="*" ForeColor="Red"
                            ValidationGroup="Insert">
                       </asp:RequiredFieldValidator>
                    </FooterTemplate>

            </asp:TemplateField>
            <asp:TemplateField HeaderText="day2" SortExpression="day2">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("day2") %>'></asp:TextBox>                  
                     <asp:RequiredFieldValidator ID="rfvInsertdayb" runat="server" 
                            ErrorMessage="day2 is a required field" 
                            ControlToValidate="TextBox4" Text="*" ForeColor="Red">
                       </asp:RequiredFieldValidator>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label5" runat="server" Text='<%# Bind("day2") %>'></asp:Label>
                </ItemTemplate>
                 <FooterTemplate>
                        <asp:TextBox ID="txtdayb" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvInsertdayb" runat="server" 
                            ErrorMessage=" day2 is a required field" 
                            ControlToValidate="txtdayb" Text="*" ForeColor="Red"
                            ValidationGroup="Insert">
                       </asp:RequiredFieldValidator>
                    </FooterTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="day22" SortExpression="day22">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("day22") %>'></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvInsertdayc" runat="server" 
                            ErrorMessage="day22 is a required field" 
                            ControlToValidate="TextBox5" Text="*" ForeColor="Red">
                       </asp:RequiredFieldValidator>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label6" runat="server" Text='<%# Bind("day22") %>'></asp:Label>
                </ItemTemplate>
                <FooterTemplate>
                        <asp:TextBox ID="txtdayc" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvInsertdayc" runat="server" 
                            ErrorMessage=" day22 is a required field" 
                            ControlToValidate="txtdayc" Text="*" ForeColor="Red"
                            ValidationGroup="Insert">
                       </asp:RequiredFieldValidator>
                    </FooterTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="day3" SortExpression="day3">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("day3") %>'></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvInsertdayd" runat="server" 
                            ErrorMessage="day3 is a required field" 
                            ControlToValidate="TextBox6" Text="*" ForeColor="Red">
                       </asp:RequiredFieldValidator>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label7" runat="server" Text='<%# Bind("day3") %>'></asp:Label>
                </ItemTemplate>
                  <FooterTemplate>
                        <asp:TextBox ID="txtdayd" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvInsertdayd" runat="server" 
                            ErrorMessage=" day3 is a required field" 
                            ControlToValidate="txtdayd" Text="*" ForeColor="Red"
                            ValidationGroup="Insert">
                       </asp:RequiredFieldValidator>
                    </FooterTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="day33" SortExpression="day33">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox7" runat="server" Text='<%# Bind("day33") %>'></asp:TextBox>
                     <asp:RequiredFieldValidator ID="rfvInsertdaye" runat="server" 
                            ErrorMessage="day33 is a required field" 
                            ControlToValidate="TextBox7" Text="*" ForeColor="Red">
                       </asp:RequiredFieldValidator>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label8" runat="server" Text='<%# Bind("day33") %>'></asp:Label>
                </ItemTemplate>
                <FooterTemplate>
                        <asp:TextBox ID="txtdaye" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvInsertdaye" runat="server" 
                            ErrorMessage=" day33 is a required field" 
                            ControlToValidate="txtdaye" Text="*" ForeColor="Red"
                            ValidationGroup="Insert">
                       </asp:RequiredFieldValidator>
                    </FooterTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="day4" SortExpression="day4">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox8" runat="server" Text='<%# Bind("day4") %>'></asp:TextBox>
                     <asp:RequiredFieldValidator ID="rfvInsertdayf" runat="server" 
                            ErrorMessage="day4 is a required field" 
                            ControlToValidate="TextBox8" Text="*" ForeColor="Red">
                       </asp:RequiredFieldValidator>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label9" runat="server" Text='<%# Bind("day4") %>'></asp:Label>
                </ItemTemplate>
                <FooterTemplate>
                        <asp:TextBox ID="txtdayf" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvInsertdayf" runat="server" 
                            ErrorMessage=" day4 is a required field" 
                            ControlToValidate="txtdayf" Text="*" ForeColor="Red"
                            ValidationGroup="Insert">
                       </asp:RequiredFieldValidator>
                    </FooterTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="day44" SortExpression="day44">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox9" runat="server" Text='<%# Bind("day44") %>'></asp:TextBox>
                     <asp:RequiredFieldValidator ID="rfvInsertdayg" runat="server" 
                            ErrorMessage="day4 is a required field" 
                            ControlToValidate="TextBox9" Text="*" ForeColor="Red">
                       </asp:RequiredFieldValidator>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label10" runat="server" Text='<%# Bind("day44") %>'></asp:Label>
                </ItemTemplate>
                <FooterTemplate>
                        <asp:TextBox ID="txtdayg" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvInsertdayg" runat="server" 
                            ErrorMessage=" day44 is a required field" 
                            ControlToValidate="txtdayg" Text="*" ForeColor="Red"
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

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:projectConnectionString %>" DeleteCommand="DELETE FROM [fourdaytour] WHERE [id] = @id" InsertCommand="INSERT INTO [fourdaytour] ([tour], [day1], [day11], [day2], [day22], [day3], [day33], [day4], [day44]) VALUES (@tour, @day1, @day11, @day2, @day22, @day3, @day33, @day4, @day44)" SelectCommand="SELECT * FROM [fourdaytour]" UpdateCommand="UPDATE [fourdaytour] SET [tour] = @tour, [day1] = @day1, [day11] = @day11, [day2] = @day2, [day22] = @day22, [day3] = @day3, [day33] = @day33, [day4] = @day4, [day44] = @day44 WHERE [id] = @id">
        <DeleteParameters>
            <asp:Parameter Name="id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="tour" Type="String" />
            <asp:Parameter Name="day1" Type="String" />
            <asp:Parameter Name="day11" Type="String" />
            <asp:Parameter Name="day2" Type="String" />
            <asp:Parameter Name="day22" Type="String" />
            <asp:Parameter Name="day3" Type="String" />
            <asp:Parameter Name="day33" Type="String" />
            <asp:Parameter Name="day4" Type="String" />
            <asp:Parameter Name="day44" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="tour" Type="String" />
            <asp:Parameter Name="day1" Type="String" />
            <asp:Parameter Name="day11" Type="String" />
            <asp:Parameter Name="day2" Type="String" />
            <asp:Parameter Name="day22" Type="String" />
            <asp:Parameter Name="day3" Type="String" />
            <asp:Parameter Name="day33" Type="String" />
            <asp:Parameter Name="day4" Type="String" />
            <asp:Parameter Name="day44" Type="String" />
            <asp:Parameter Name="id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <p style="font-family: Arial, Helvetica, sans-serif; font-size: 25px; text-transform: uppercase; color: #000000; font-weight: bolder; vertical-align: middle;" >
        YOU CAN INSERT,UPDATE AND DELETE itenary HERE BY SELECTING THE LINKS GIVEN IN GRIDVIEW CONTROL.
        PLZZZ ENTER THE VALID INFORMATION IN EACH COLUMS ELSE YOU GET AN ERROR.
    </p>
</asp:Content>
