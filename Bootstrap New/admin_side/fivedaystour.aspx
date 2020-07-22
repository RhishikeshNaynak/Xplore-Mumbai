<%@ Page Title="" Language="C#" MasterPageFile="~/admin_side/Site1.Master" AutoEventWireup="true" CodeBehind="fivedaystour.aspx.cs" Inherits="botstrap.admin_side.fivedaystour" %>
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
                            ErrorMessage="tour is a required field" 
                            ControlToValidate="txttour" Text="*" ForeColor="Red"
                            ValidationGroup="Insert">
                       </asp:RequiredFieldValidator>
                    </FooterTemplate>
            </asp:TemplateField>

            <asp:TemplateField HeaderText="first" SortExpression="first">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("day1") %>'></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvInsertfirst" runat="server" 
                            ErrorMessage="first is a required field" 
                            ControlToValidate="TextBox2" Text="*" ForeColor="Red">
                       </asp:RequiredFieldValidator>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label3" runat="server" Text='<%# Bind("day1") %>'></asp:Label>
                </ItemTemplate>
                <FooterTemplate>
                        <asp:TextBox ID="txtfirst" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvInsertfirst" runat="server" 
                            ErrorMessage="first is a required field" 
                            ControlToValidate="txtfirst" Text="*" ForeColor="Red"
                            ValidationGroup="Insert">
                       </asp:RequiredFieldValidator>
                    </FooterTemplate>
            </asp:TemplateField>

            <asp:TemplateField HeaderText="firsta" SortExpression="firsta">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("day11") %>'></asp:TextBox>
                     <asp:RequiredFieldValidator ID="rfvInsertfirsta" runat="server" 
                            ErrorMessage="firsta is a required field" 
                            ControlToValidate="TextBox3" Text="*" ForeColor="Red">
                       </asp:RequiredFieldValidator>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label4" runat="server" Text='<%# Bind("day11") %>'></asp:Label>
                </ItemTemplate>
                <FooterTemplate>
                        <asp:TextBox ID="txtfirsta" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvInsertfirsta" runat="server" 
                            ErrorMessage="firsat is a required field" 
                            ControlToValidate="txtfirsta" Text="*" ForeColor="Red"
                            ValidationGroup="Insert">
                       </asp:RequiredFieldValidator>
                    </FooterTemplate>
            </asp:TemplateField>

            <asp:TemplateField HeaderText="second" SortExpression="second">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("day2") %>'></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvInsertsecond" runat="server" 
                            ErrorMessage="second is a required field" 
                            ControlToValidate="TextBox4" Text="*" ForeColor="Red">
                       </asp:RequiredFieldValidator>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label5" runat="server" Text='<%# Bind("day2") %>'></asp:Label>
                </ItemTemplate>
                  <FooterTemplate>
                        <asp:TextBox ID="txtsecond" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvInsertsecond" runat="server" 
                            ErrorMessage="second is a required field" 
                            ControlToValidate="txtsecond" Text="*" ForeColor="Red"
                            ValidationGroup="Insert">
                       </asp:RequiredFieldValidator>
                    </FooterTemplate>
            </asp:TemplateField>

            <asp:TemplateField HeaderText="seconda" SortExpression="seconda">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("day22") %>'></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvInsertseconda" runat="server" 
                            ErrorMessage="seconda is a required field" 
                            ControlToValidate="TextBox5" Text="*" ForeColor="Red">
                       </asp:RequiredFieldValidator>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label6" runat="server" Text='<%# Bind("day22") %>'></asp:Label>
                </ItemTemplate>
                 <FooterTemplate>
                        <asp:TextBox ID="txtseconda" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvInsertseconda" runat="server" 
                            ErrorMessage="seconda is a required field" 
                            ControlToValidate="txtseconda" Text="*" ForeColor="Red"
                            ValidationGroup="Insert">
                       </asp:RequiredFieldValidator>
                    </FooterTemplate>
            </asp:TemplateField>

            <asp:TemplateField HeaderText="third" SortExpression="third">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("day3") %>'></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvInsertthird" runat="server" 
                            ErrorMessage="third is a required field" 
                            ControlToValidate="TextBox6" Text="*" ForeColor="Red">
                       </asp:RequiredFieldValidator>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label7" runat="server" Text='<%# Bind("day3") %>'></asp:Label>
                </ItemTemplate>
                 <FooterTemplate>
                        <asp:TextBox ID="txtthird" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvInsertthird" runat="server" 
                            ErrorMessage="third is a required field" 
                            ControlToValidate="txtthird" Text="*" ForeColor="Red"
                            ValidationGroup="Insert">
                       </asp:RequiredFieldValidator>
                    </FooterTemplate>
            </asp:TemplateField>

            <asp:TemplateField HeaderText="thirda" SortExpression="thirda">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox7" runat="server" Text='<%# Bind("day33") %>'></asp:TextBox>
                     <asp:RequiredFieldValidator ID="rfvInsertthirda" runat="server" 
                            ErrorMessage="thirda is a required field" 
                            ControlToValidate="TextBox7" Text="*" ForeColor="Red">
                       </asp:RequiredFieldValidator>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label8" runat="server" Text='<%# Bind("day33") %>'></asp:Label>
                </ItemTemplate>
                <FooterTemplate>
                        <asp:TextBox ID="txtthirda" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvInsertthirda" runat="server" 
                            ErrorMessage="thirda is a required field" 
                            ControlToValidate="txtthirda" Text="*" ForeColor="Red"
                            ValidationGroup="Insert">
                       </asp:RequiredFieldValidator>
                    </FooterTemplate>
            </asp:TemplateField>

            <asp:TemplateField HeaderText="fourth" SortExpression="fourth">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox8" runat="server" Text='<%# Bind("day4") %>'></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvInsertfourth" runat="server" 
                            ErrorMessage="fourth is a required field" 
                            ControlToValidate="TextBox8" Text="*" ForeColor="Red">
                       </asp:RequiredFieldValidator>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label9" runat="server" Text='<%# Bind("day4") %>'></asp:Label>
                </ItemTemplate>
                <FooterTemplate>
                        <asp:TextBox ID="txtfourth" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvInsertfourth" runat="server" 
                            ErrorMessage="thirda is a required field" 
                            ControlToValidate="txtfourth" Text="*" ForeColor="Red"
                            ValidationGroup="Insert">
                       </asp:RequiredFieldValidator>
                    </FooterTemplate>
            </asp:TemplateField>

            <asp:TemplateField HeaderText="fourtha" SortExpression="fourtha">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox9" runat="server" Text='<%# Bind("day44") %>'></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvInsertfourtha" runat="server" 
                            ErrorMessage="fourtha is a required field" 
                            ControlToValidate="TextBox9" Text="*" ForeColor="Red">
                       </asp:RequiredFieldValidator>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label10" runat="server" Text='<%# Bind("day44") %>'></asp:Label>
                </ItemTemplate>
                  <FooterTemplate>
                        <asp:TextBox ID="txtfourtha" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvInsertfourtha" runat="server" 
                            ErrorMessage="fourtha is a required field" 
                            ControlToValidate="txtfourtha" Text="*" ForeColor="Red"
                            ValidationGroup="Insert">
                       </asp:RequiredFieldValidator>
                    </FooterTemplate>
            </asp:TemplateField>

            <asp:TemplateField HeaderText="fifth" SortExpression="fifth">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox10" runat="server" Text='<%# Bind("day5") %>'></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvInsertfifth" runat="server" 
                            ErrorMessage="fifth is a required field" 
                            ControlToValidate="TextBox10" Text="*" ForeColor="Red">
                       </asp:RequiredFieldValidator>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label11" runat="server" Text='<%# Bind("day5") %>'></asp:Label>
                </ItemTemplate>
                <FooterTemplate>
                        <asp:TextBox ID="txtfifth" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvInsertfifth" runat="server" 
                            ErrorMessage="fifth is a required field" 
                            ControlToValidate="txtfifth" Text="*" ForeColor="Red"
                            ValidationGroup="Insert">
                       </asp:RequiredFieldValidator>
                    </FooterTemplate>
            </asp:TemplateField>

            <asp:TemplateField HeaderText="fiftha" SortExpression="fiftha">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox11" runat="server" Text='<%# Bind("day55") %>'></asp:TextBox>
                     <asp:RequiredFieldValidator ID="rfvInsertfiftha" runat="server" 
                            ErrorMessage="fiftha is a required field" 
                            ControlToValidate="TextBox11" Text="*" ForeColor="Red">
                       </asp:RequiredFieldValidator>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label12" runat="server" Text='<%# Bind("day55") %>'></asp:Label>
                </ItemTemplate>
                 <FooterTemplate>
                        <asp:TextBox ID="txtfiftha" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvInsertfiftha" runat="server" 
                            ErrorMessage="fiftha is a required field" 
                            ControlToValidate="txtfiftha" Text="*" ForeColor="Red"
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

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:projectConnectionString %>" DeleteCommand="DELETE FROM [fivedaystour] WHERE [id] = @id" InsertCommand="INSERT INTO [fivedaystour] ([tour], [day1], [day11], [day2], [day22], [day3], [day33], [day4], [day44], [day5], [day55]) VALUES (@tour, @day1, @day11, @day2, @day32, @day3, @day33, @day4, @day44, @day5, @day55)" SelectCommand="SELECT * FROM [fivedaystour]" UpdateCommand="UPDATE [fivedaystour] SET [tour] = @tour, [day1] = @day1, [day11] = @day11, [day2] = @day2, [day22] = @day22, [day3] = @day3, [day33] = @day33, [day4] = @day4, [day44] = @day44, [day5] = @day5, [day55] = @day55 WHERE [id] = @id">
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
            <asp:Parameter Name="day5" Type="String" />
            <asp:Parameter Name="day55" Type="String" />
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
            <asp:Parameter Name="day5" Type="String" />
            <asp:Parameter Name="day55" Type="String" />
            <asp:Parameter Name="id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <p style="font-family: Arial, Helvetica, sans-serif; font-size: 25px; text-transform: uppercase; color: #000000; font-weight: bolder; vertical-align: middle;" >
        YOU CAN INSERT,UPDATE AND DELETE itenary HERE BY SELECTING THE LINKS GIVEN IN GRIDVIEW CONTROL.
        PLZZZ ENTER THE VALID INFORMATION IN EACH COLUMS ELSE YOU GET AN ERROR.
    </p>

</asp:Content>
