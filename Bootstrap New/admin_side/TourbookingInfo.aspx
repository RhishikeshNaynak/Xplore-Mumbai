<%@ Page Title="" Language="C#" MasterPageFile="~/admin_side/Site1.Master" AutoEventWireup="true" CodeBehind="TourbookingInfo.aspx.cs" Inherits="botstrap.admin_side.TourbookingInfo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
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
            <asp:TemplateField HeaderText="tour_name" SortExpression="tour_name">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("tour_name") %>'></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvInsertName" runat="server" 
                            ErrorMessage="Name is a required field" 
                            ControlToValidate="TextBox1" Text="*" ForeColor="Red">
                       </asp:RequiredFieldValidator>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("tour_name") %>'></asp:Label>
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
            <asp:TemplateField HeaderText="holder_name" SortExpression="holder_name">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("holder_name") %>'></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvInserthName" runat="server" 
                            ErrorMessage="H_Name is a required field" 
                            ControlToValidate="TextBox2" Text="*" ForeColor="Red">
                       </asp:RequiredFieldValidator>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label3" runat="server" Text='<%# Bind("holder_name") %>'></asp:Label>
                </ItemTemplate>
                <FooterTemplate>
                        <asp:TextBox ID="txthname" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvInserthName" runat="server" 
                            ErrorMessage="H_Name is a required field" 
                            ControlToValidate="txthname" Text="*" ForeColor="Red"
                            ValidationGroup="Insert">
                       </asp:RequiredFieldValidator>
                    </FooterTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="email" SortExpression="email">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("email") %>' ControlToValidate="TextBox3"></asp:TextBox>
                      <asp:RequiredFieldValidator ID="rfvInsertemail" runat="server" 
                            ErrorMessage="Email is a required field" 
                            ControlToValidate="TextBox3" Text="*" ForeColor="Red">
                       </asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server"
                         ErrorMessage="Enter valid id" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
                           ControlToValidate="TextBox3" Text="*" ForeColor="Red" >

                    </asp:RegularExpressionValidator>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label4" runat="server" Text='<%# Bind("email") %>'></asp:Label>
                </ItemTemplate>
                 <FooterTemplate>
                        <asp:TextBox ID="txtemail" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvInsertemail" runat="server" 
                            ErrorMessage="Email is a required field" 
                            ControlToValidate="txtemail" Text="*" ForeColor="Red"
                            ValidationGroup="Insert">
                       </asp:RequiredFieldValidator>
                       <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server"
                         ErrorMessage="Enter valid id" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
                           ControlToValidate="txtemail" Text="*" ForeColor="Red" >
                             </asp:RegularExpressionValidator>
                    </FooterTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="phone" SortExpression="phone">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("phone") %>'></asp:TextBox>
                     <asp:RequiredFieldValidator ID="rfvInsertphone" runat="server" 
                            ErrorMessage="Phone is a required field" 
                            ControlToValidate="TextBox4" Text="*" ForeColor="Red">
                       </asp:RequiredFieldValidator>
                       <asp:CompareValidator ID="CompareValidator3" runat="server" ErrorMessage="Enter a number"
                            ControlToValidate="TextBox4" Text="*" ForeColor="Red"
                            ValidationGroup="Insert" ValueToCompare="Integer" Type="Integer"
                          Operator="DataTypeCheck">
                      </asp:CompareValidator>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label5" runat="server" Text='<%# Bind("phone") %>'></asp:Label>
                </ItemTemplate>
                  <FooterTemplate>
                        <asp:TextBox ID="txtphone" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvInsertphone" runat="server" 
                            ErrorMessage="Phone is a required field" 
                            ControlToValidate="txtphone" Text="*" ForeColor="Red"
                            ValidationGroup="Insert">
                       </asp:RequiredFieldValidator>
                       <asp:CompareValidator ID="CompareValidator3" runat="server" ErrorMessage="Enter a number"
                            ControlToValidate="txtphone" Text="*" ForeColor="Red"
                            ValidationGroup="Insert" ValueToCompare="Integer" Type="Integer"
                          Operator="DataTypeCheck">
                      </asp:CompareValidator>
                    </FooterTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="date" SortExpression="date">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("date") %>'></asp:TextBox>
                     <asp:RequiredFieldValidator ID="rfvInsertdate" runat="server" 
                            ErrorMessage="Date is a required field" 
                            ControlToValidate="TextBox5" Text="*" ForeColor="Red">
                       </asp:RequiredFieldValidator>
                     <asp:CompareValidator ID="CompareValidator4" runat="server" ErrorMessage="Enter a date"
                            ControlToValidate="TextBox5" Text="*" ForeColor="Red"
                            ValidationGroup="Insert" ValueToCompare="date" Type="date"
                          Operator="DataTypeCheck">
                      </asp:CompareValidator>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label6" runat="server" Text='<%# Bind("date") %>'></asp:Label>
                </ItemTemplate>
                 <FooterTemplate>
                        <asp:TextBox ID="txtdate" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvInsertdate" runat="server" 
                            ErrorMessage="Date is a required field" 
                            ControlToValidate="txtdate" Text="*" ForeColor="Red"
                            ValidationGroup="Insert">
                       </asp:RequiredFieldValidator>
                       <asp:CompareValidator ID="CompareValidator4" runat="server" ErrorMessage="Enter a date"
                            ControlToValidate="txtdate" Text="*" ForeColor="Red"
                            ValidationGroup="Insert" ValueToCompare="date" Type="date"
                          Operator="DataTypeCheck">
                      </asp:CompareValidator>
                    </FooterTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="no_person" SortExpression="no_person">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("no_person") %>'></asp:TextBox>
                     <asp:RequiredFieldValidator ID="rfvInsertperson" runat="server" 
                            ErrorMessage="Number is a required field" 
                            ControlToValidate="TextBox6" Text="*" ForeColor="Red">
                       </asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="CompareValidator5" runat="server" ErrorMessage="Enter a number"
                            ControlToValidate="TextBox6" Text="*" ForeColor="Red"
                            ValidationGroup="Insert" ValueToCompare="Integer" Type="Integer"
                          Operator="DataTypeCheck">
                      </asp:CompareValidator>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label7" runat="server" Text='<%# Bind("no_person") %>'></asp:Label>
                </ItemTemplate>
                 <FooterTemplate>
                        <asp:TextBox ID="txtnumber" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvInsertperson" runat="server" 
                            ErrorMessage="Number is a required field" 
                            ControlToValidate="txtnumber" Text="*" ForeColor="Red"
                            ValidationGroup="Insert">
                       </asp:RequiredFieldValidator>
                     <asp:CompareValidator ID="CompareValidator5" runat="server" ErrorMessage="Enter a number"
                            ControlToValidate="txtnumber" Text="*" ForeColor="Red"
                            ValidationGroup="Insert" ValueToCompare="Integer" Type="Integer"
                          Operator="DataTypeCheck">
                      </asp:CompareValidator>
                    </FooterTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="price" SortExpression="price">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox7" runat="server" Text='<%# Bind("price") %>'></asp:TextBox>
                     <asp:RequiredFieldValidator ID="rfvInsertprice" runat="server" 
                            ErrorMessage="Price is a required field" 
                            ControlToValidate="TextBox7" Text="*" ForeColor="Red">
                       </asp:RequiredFieldValidator>
                     <asp:CompareValidator ID="CompareValidator2" runat="server" ErrorMessage="Enter a number"
                            ControlToValidate="TextBox7" Text="*" ForeColor="Red"
                            ValidationGroup="Insert" ValueToCompare="Integer" Type="Integer"
                          Operator="DataTypeCheck">
                      </asp:CompareValidator>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label8" runat="server" Text='<%# Bind("price") %>'></asp:Label>
                </ItemTemplate>
                 <FooterTemplate>
                        <asp:TextBox ID="txtprice" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvInsertprice" runat="server" 
                            ErrorMessage="Price is a required field" 
                            ControlToValidate="txtprice" Text="*" ForeColor="Red"
                            ValidationGroup="Insert">

                       </asp:RequiredFieldValidator>
                      <asp:CompareValidator ID="CompareValidator2" runat="server" ErrorMessage="Enter a number"
                            ControlToValidate="txtprice" Text="*" ForeColor="Red"
                            ValidationGroup="Insert" ValueToCompare="Integer" Type="Integer"
                          Operator="DataTypeCheck">
                      </asp:CompareValidator>
                    </FooterTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="tprice" SortExpression="tprice">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox8" runat="server" Text='<%# Bind("tprice") %>'></asp:TextBox>
                     <asp:RequiredFieldValidator ID="rfvInserttprice" runat="server" 
                            ErrorMessage="tPrice is a required field" 
                            ControlToValidate="TextBox8" Text="*" ForeColor="Red">
                       </asp:RequiredFieldValidator>
                     <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Enter a number"
                            ControlToValidate="TextBox8" Text="*" ForeColor="Red"
                            ValidationGroup="Insert" ValueToCompare="Integer" Type="Integer" Operator="DataTypeCheck">
                      </asp:CompareValidator>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label9" runat="server" Text='<%# Bind("tprice") %>'></asp:Label>
                </ItemTemplate>
                  <FooterTemplate>
                        <asp:TextBox ID="txttprice" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvInserttprice" runat="server" 
                            ErrorMessage="tPrice is a required field" 
                            ControlToValidate="txttprice" Text="*" ForeColor="Red"
                            ValidationGroup="Insert">
                       </asp:RequiredFieldValidator>
                      <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Enter a number"
                            ControlToValidate="txttprice" Text="*" ForeColor="Red"
                            ValidationGroup="Insert" ValueToCompare="Integer" Type="Integer"
                          Operator="DataTypeCheck">
                      </asp:CompareValidator>

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

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:projectConnectionString %>" DeleteCommand="DELETE FROM [book_tour] WHERE [id] = @id" InsertCommand="INSERT INTO [book_tour] ([tour_name], [holder_name], [email], [phone], [date], [no_person], [price], [tprice]) VALUES (@tour_name, @holder_name, @email, @phone, @date, @no_person, @price, @tprice)" SelectCommand="SELECT * FROM [book_tour]" UpdateCommand="UPDATE [book_tour] SET [tour_name] = @tour_name, [holder_name] = @holder_name, [email] = @email, [phone] = @phone, [date] = @date, [no_person] = @no_person, [price] = @price, [tprice] = @tprice WHERE [id] = @id">
        <DeleteParameters>
            <asp:Parameter Name="id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="tour_name" Type="String" />
            <asp:Parameter Name="holder_name" Type="String" />
            <asp:Parameter Name="email" Type="String" />
            <asp:Parameter Name="phone" Type="Int32" />
            <asp:Parameter DbType="Date" Name="date" />
            <asp:Parameter Name="no_person" Type="Int32" />
            <asp:Parameter Name="price" Type="Int32" />
            <asp:Parameter Name="tprice" Type="Int32" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="tour_name" Type="String" />
            <asp:Parameter Name="holder_name" Type="String" />
            <asp:Parameter Name="email" Type="String" />
            <asp:Parameter Name="phone" Type="Int32" />
            <asp:Parameter DbType="Date" Name="date" />
            <asp:Parameter Name="no_person" Type="Int32" />
            <asp:Parameter Name="price" Type="Int32" />
            <asp:Parameter Name="tprice" Type="Int32" />
            <asp:Parameter Name="id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>
