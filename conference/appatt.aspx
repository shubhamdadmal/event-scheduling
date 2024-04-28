<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="appatt.aspx.cs" Inherits="appatt" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 50%;
        }
        .style2
        {
            height: 50px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" class="style1">
        <tr>
            <td class="style2" colspan="2" style="text-align: center">
                <asp:Label ID="Label1" runat="server" Font-Size="XX-Large" 
                    Text="Applicant Attendance"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label2" runat="server" Text="Uname"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="TextBox1" ErrorMessage="RequiredFieldValidator" 
                    ForeColor="#CC0000">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
                    Text="Add Attendance" />
            </td>
            <td>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:constr %>" 
                    DeleteCommand="DELETE FROM [attendance] WHERE [id] = @id" 
                    InsertCommand="INSERT INTO [attendance] ([attendee], [d]) VALUES (@attendee, @d)" 
                    SelectCommand="SELECT * FROM [attendance]" 
                    UpdateCommand="UPDATE [attendance] SET [attendee] = @attendee, [d] = @d WHERE [id] = @id">
                    <DeleteParameters>
                        <asp:Parameter Name="id" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:ControlParameter ControlID="TextBox1" Name="attendee" PropertyName="Text" 
                            Type="String" />
                        <asp:Parameter DefaultValue="DateTime.Now.ToShortDateString()" Name="d" 
                            Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="attendee" Type="String" />
                        <asp:Parameter Name="d" Type="String" />
                        <asp:Parameter Name="id" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
    </table>
</asp:Content>

