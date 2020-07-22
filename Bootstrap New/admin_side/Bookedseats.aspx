<%@ Page Title="" Language="C#" MasterPageFile="~/admin_side/Site1.Master" AutoEventWireup="true" CodeBehind="Bookedseats.aspx.cs" Inherits="botstrap.admin_side.BookingInformation" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <p style="font-family: Arial, Helvetica, sans-serif; font-size: 25px; text-transform: uppercase; color: #000000; font-weight: bolder; vertical-align: middle;" >
        INSERT UPDATE AND DELETE SEATS BOOKING INFORMATION HERE:- 
    </p>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="id" DataSourceID="SqlDataSource1" Width="517px">
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
            <asp:TemplateField HeaderText="vehicle_name" SortExpression="vehicle_id">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("vehicle_name") %>'></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvInsertid" runat="server" 
                            ErrorMessage="vehicle_name is a required field" 
                            ControlToValidate="TextBox1" Text="*" ForeColor="Red">
                       </asp:RequiredFieldValidator>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("vehicle_name") %>'></asp:Label>
                </ItemTemplate>
                <FooterTemplate>
                        <asp:TextBox ID="txtid" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvInsertid" runat="server" 
                            ErrorMessage="vehicle_name is a required field" 
                            ControlToValidate="txtid" Text="*" ForeColor="Red"
                            ValidationGroup="Insert">
                       </asp:RequiredFieldValidator>
                    </FooterTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="seat_no" SortExpression="seat_no">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("seat_no") %>'></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvInsertseat" runat="server" 
                            ErrorMessage="seat_no is a required field" 
                            ControlToValidate="TextBox2" Text="*" ForeColor="Red">
                       </asp:RequiredFieldValidator>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label3" runat="server" Text='<%# Bind("seat_no") %>'></asp:Label>
                </ItemTemplate>
                <FooterTemplate>
                        <asp:TextBox ID="txtseat" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvInsertseat" runat="server" 
                            ErrorMessage="seat_no is a required field" 
                            ControlToValidate="txtseat" Text="*" ForeColor="Red"
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
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:projectConnectionString %>" DeleteCommand="DELETE FROM [booked_seats] WHERE [id] = @id" InsertCommand="INSERT INTO [booked_seats] ([vehicle_name], [seat_no]) VALUES (@vehicle_name, @seat_no)" SelectCommand="SELECT * FROM [booked_seats]" UpdateCommand="UPDATE [booked_seats] SET [vehicle_name] = @vehicle_name, [seat_no] = @seat_no WHERE [id] = @id">
        <DeleteParameters>
            <asp:Parameter Name="id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="vehicle_name" Type="Int32" />
            <asp:Parameter Name="seat_no" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="vehicle_name" Type="Int32" />
            <asp:Parameter Name="seat_no" Type="String" />
            <asp:Parameter Name="id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
     <p style="font-family: Arial, Helvetica, sans-serif; font-size: 25px; text-transform: uppercase; color: #000000; font-weight: bolder; vertical-align: middle;" >
        YOU CAN INSERT,UPDATE AND DELETE INFORMATION HERE BY SELECTING THE LINKS GIVEN IN GRIDVIEW CONTROL.
        PLZZZ ENTER THE VALID INFORMATION IN EACH COLUMS ELSE YOU GET AN ERROR.
    </p>
</asp:Content>
