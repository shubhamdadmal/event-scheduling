<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="conference.aspx.cs" Inherits="conference" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style2
    {
        height: 29px;
    }
        .style3
        {
            height: 34px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" class="style1">
        <tr>
            <td class="style2" colspan="2">
                <asp:Label ID="Label1" runat="server" Font-Size="X-Large" Text="Add Conference"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label2" runat="server" Text="Enter Name"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" Width="188px" 
                    ontextchanged="TextBox1_TextChanged"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="TextBox1" ErrorMessage="RequiredFieldValidator" 
                    ForeColor="#CC0000">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style3">
                <asp:Label ID="Label4" runat="server" Text="Conference Date"></asp:Label>
            </td>
            <td class="style3">
                <asp:TextBox ID="TextBox2" runat="server" Width="188px"></asp:TextBox>
                <cc1:CalendarExtender ID="TextBox2_CalendarExtender" runat="server" 
                    Enabled="True" TargetControlID="TextBox2">
                </cc1:CalendarExtender>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="TextBox2" ErrorMessage="RequiredFieldValidator" 
                    ForeColor="#CC0000">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label5" runat="server" Text="About Conference"></asp:Label>
            </td>
            <td style="margin-left: 40px">
                <asp:TextBox ID="TextBox4" runat="server" Width="188px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="TextBox4" ErrorMessage="RequiredFieldValidator" 
                    ForeColor="#CC0000">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label6" runat="server" Text="Paper Submission Starting"></asp:Label>
            </td>
            <td style="margin-left: 40px">
                <asp:TextBox ID="TextBox5" runat="server" Width="188px"></asp:TextBox>
                <cc1:CalendarExtender ID="TextBox5_CalendarExtender" runat="server" 
                    Enabled="True" TargetControlID="TextBox5">
                </cc1:CalendarExtender>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="TextBox5" ErrorMessage="RequiredFieldValidator" 
                    ForeColor="#CC0000">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style2">
                <asp:Label ID="Label7" runat="server" Text="Last Date of Paper Submission"></asp:Label>
            </td>
            <td style="margin-left: 40px" class="style2">
                <asp:TextBox ID="TextBox6" runat="server" Width="188px"></asp:TextBox>
                <cc1:CalendarExtender ID="TextBox6_CalendarExtender" runat="server" 
                    Enabled="True" TargetControlID="TextBox6">
                </cc1:CalendarExtender>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                    ControlToValidate="TextBox6" ErrorMessage="RequiredFieldValidator" 
                    ForeColor="#CC0000">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label8" runat="server" Text="Mail Id"></asp:Label>
            </td>
            <td style="margin-left: 40px">
                <asp:TextBox ID="TextBox7" runat="server" Width="188px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                    ControlToValidate="TextBox7" ErrorMessage="RequiredFieldValidator" 
                    ForeColor="#CC0000">*</asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="TextBox7" ErrorMessage="RegularExpressionValidator" 
                    ForeColor="#CC0000" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">Invalid Email</asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="style3">
                <asp:Label ID="Label9" runat="server" Text="Contact Person"></asp:Label>
            </td>
            <td style="margin-left: 40px" class="style3">
                <asp:TextBox ID="TextBox8" runat="server" Width="188px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                    ControlToValidate="TextBox8" ErrorMessage="RequiredFieldValidator" 
                    ForeColor="#CC0000">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label11" runat="server" Text="Charges"></asp:Label>
            </td>
            <td style="margin-left: 40px">
                <asp:TextBox ID="TextBox10" runat="server" Width="188px"></asp:TextBox>
                <cc1:FilteredTextBoxExtender ID="TextBox10_FilteredTextBoxExtender" 
                    runat="server" Enabled="True" TargetControlID="TextBox10" 
                    ValidChars="0123456789">
                </cc1:FilteredTextBoxExtender>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                    ControlToValidate="TextBox10" ErrorMessage="RequiredFieldValidator" 
                    ForeColor="#CC0000">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label12" runat="server" Text="Select Block"></asp:Label>
            </td>
            <td style="margin-left: 40px">
                <asp:DropDownList ID="DropDownList1" runat="server" 
                    DataSourceID="SqlDataSource2" DataTextField="num" DataValueField="id" 
                    Height="20px" Width="190px">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:constr %>" 
                    SelectCommand="SELECT * FROM [block]"></asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
                    Text="Add Conference" />
            </td>
            <td style="margin-left: 40px">
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:constr %>" 
                    DeleteCommand="DELETE FROM [conference] WHERE [id] = @id" 
                    InsertCommand="INSERT INTO [conference] ([subject], [conf_date], [about], [s_date], [d_date], [mail], [cp], [charges], [block]) VALUES (@subject, @conf_date, @about, @s_date, @d_date, @mail, @cp, @charges, @block)" 
                    SelectCommand="SELECT * FROM [conference]" 
                    UpdateCommand="UPDATE [conference] SET [subject] = @subject, [conf_date] = @conf_date, [about] = @about, [s_date] = @s_date, [d_date] = @d_date, [mail] = @mail, [cp] = @cp, [charges] = @charges, [block] = @block WHERE [id] = @id">
                    <DeleteParameters>
                        <asp:Parameter Name="id" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:ControlParameter ControlID="TextBox1" Name="subject" PropertyName="Text" 
                            Type="String" />
                        <asp:ControlParameter ControlID="TextBox2" Name="conf_date" PropertyName="Text" 
                            Type="String" />
                        <asp:ControlParameter ControlID="TextBox4" Name="about" PropertyName="Text" 
                            Type="String" />
                        <asp:ControlParameter ControlID="TextBox5" Name="s_date" PropertyName="Text" 
                            Type="String" />
                        <asp:ControlParameter ControlID="TextBox6" Name="d_date" PropertyName="Text" 
                            Type="String" />
                        <asp:ControlParameter ControlID="TextBox7" Name="mail" PropertyName="Text" 
                            Type="String" />
                        <asp:ControlParameter ControlID="TextBox8" Name="cp" PropertyName="Text" 
                            Type="String" />
                        <asp:ControlParameter ControlID="TextBox10" Name="charges" PropertyName="Text" 
                            Type="String" />
                        <asp:ControlParameter ControlID="DropDownList1" Name="block" 
                            PropertyName="SelectedValue" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="subject" Type="String" />
                        <asp:Parameter Name="conf_date" Type="String" />
                        <asp:Parameter Name="about" Type="String" />
                        <asp:Parameter Name="s_date" Type="String" />
                        <asp:Parameter Name="d_date" Type="String" />
                        <asp:Parameter Name="mail" Type="String" />
                        <asp:Parameter Name="cp" Type="String" />
                        <asp:Parameter Name="charges" Type="String" />
                        <asp:Parameter Name="block" Type="String" />
                        <asp:Parameter Name="id" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
    </table>
</asp:Content>

