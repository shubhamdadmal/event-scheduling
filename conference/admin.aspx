<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="admin.aspx.cs" Inherits="admin" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 50%;
        }
        .style2
        {
            height: 26px;
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" class="style1">
        <tr>
            <td class="style2" colspan="2">
                <asp:Label ID="Label1" runat="server" Font-Size="X-Large" Text="Add Block"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label2" runat="server" Text="Enter Category"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server" Height="21px" Width="189px">
                    <asp:ListItem>--Select--</asp:ListItem>
                    <asp:ListItem>Classroom</asp:ListItem>
                    <asp:ListItem>Seminar Hall</asp:ListItem>
                    <asp:ListItem>Labs</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label3" runat="server" Text="Block Number"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" Width="188px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="TextBox1" ErrorMessage="RequiredFieldValidator" 
                    ForeColor="#CC0000">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label4" runat="server" Text="Seating Capacity"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server" Width="188px"></asp:TextBox>
                <cc1:FilteredTextBoxExtender ID="TextBox2_FilteredTextBoxExtender" 
                    runat="server" Enabled="True" TargetControlID="TextBox2" 
                    ValidChars="0123456789">
                </cc1:FilteredTextBoxExtender>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="TextBox2" ErrorMessage="RequiredFieldValidator" 
                    ForeColor="#CC0000">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
                    Text="Add Block" />
            </td>
            <td>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:constr %>" 
                    DeleteCommand="DELETE FROM [block] WHERE [id] = @id" 
                    InsertCommand="INSERT INTO [block] ([category], [num], [capcity]) VALUES (@category, @num, @capcity)" 
                    SelectCommand="SELECT * FROM [block]" 
                    UpdateCommand="UPDATE [block] SET [category] = @category, [num] = @num, [capcity] = @capcity WHERE [id] = @id">
                    <DeleteParameters>
                        <asp:Parameter Name="id" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:ControlParameter ControlID="DropDownList1" Name="category" 
                            PropertyName="SelectedValue" Type="String" />
                        <asp:ControlParameter ControlID="TextBox1" Name="num" PropertyName="Text" 
                            Type="Decimal" />
                        <asp:ControlParameter ControlID="TextBox2" Name="capcity" PropertyName="Text" 
                            Type="Decimal" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="category" Type="String" />
                        <asp:Parameter Name="num" Type="Decimal" />
                        <asp:Parameter Name="capcity" Type="Decimal" />
                        <asp:Parameter Name="id" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
    </table>
</asp:Content>

