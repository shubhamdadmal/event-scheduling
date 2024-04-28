<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="cedit.aspx.cs" Inherits="cedit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" class="style1">
        <tr>
            <td class="style2">
                <asp:Label ID="Label1" runat="server" Font-Size="X-Large" 
                    Text="Update Conference"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    CellPadding="4" DataKeyNames="id" DataSourceID="SqlDataSource1" 
                    ForeColor="#333333" GridLines="None">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                        <asp:BoundField DataField="id" HeaderText="Conference ID" InsertVisible="False" 
                            ReadOnly="True" SortExpression="id" />
                        <asp:BoundField DataField="subject" HeaderText="Conference Subject" 
                            SortExpression="subject" />
                        <asp:BoundField DataField="conf_date" HeaderText="Conference Date" 
                            SortExpression="conf_date" />
                        <asp:BoundField DataField="about" HeaderText="About Conference" 
                            SortExpression="about" />
                        <asp:BoundField DataField="s_date" 
                            HeaderText="Starting Date of Paper Submission" SortExpression="s_date" />
                        <asp:BoundField DataField="d_date" HeaderText="Deadline to Submit Paper" 
                            SortExpression="d_date" />
                        <asp:BoundField DataField="mail" HeaderText="Mail ID" SortExpression="mail" />
                        <asp:BoundField DataField="cp" HeaderText="Contact Person" 
                            SortExpression="cp" />
                        <asp:BoundField DataField="charges" HeaderText="Charges" 
                            SortExpression="charges" />
                        <asp:BoundField DataField="block" HeaderText="Block Number" 
                            SortExpression="block" />
                    </Columns>
                    <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                    <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                    <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                    <SortedAscendingCellStyle BackColor="#FDF5AC" />
                    <SortedAscendingHeaderStyle BackColor="#4D0000" />
                    <SortedDescendingCellStyle BackColor="#FCF6C0" />
                    <SortedDescendingHeaderStyle BackColor="#820000" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:constr %>" 
                    DeleteCommand="DELETE FROM [conference] WHERE [id] = @id" 
                    InsertCommand="INSERT INTO [conference] ([subject], [conf_date], [about], [s_date], [d_date], [mail], [cp], [charges], [block]) VALUES (@subject, @conf_date, @about, @s_date, @d_date, @mail, @cp, @charges, @block)" 
                    SelectCommand="SELECT * FROM [conference]" 
                    UpdateCommand="UPDATE [conference] SET [subject] = @subject, [conf_date] = @conf_date, [about] = @about, [s_date] = @s_date, [d_date] = @d_date, [mail] = @mail, [cp] = @cp, [charges] = @charges, [block] = @block WHERE [id] = @id">
                    <DeleteParameters>
                        <asp:ControlParameter ControlID="GridView1" Name="id" 
                            PropertyName="SelectedValue" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="subject" Type="String" />
                        <asp:Parameter Name="conf_date" Type="String" />
                        <asp:Parameter Name="about" Type="String" />
                        <asp:Parameter Name="s_date" Type="String" />
                        <asp:Parameter Name="d_date" Type="String" />
                        <asp:Parameter Name="mail" Type="String" />
                        <asp:Parameter Name="cp" Type="String" />
                        <asp:Parameter Name="charges" Type="String" />
                        <asp:Parameter Name="block" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:ControlParameter ControlID="GridView1" Name="subject" 
                            PropertyName="SelectedValue" Type="String" />
                        <asp:ControlParameter ControlID="GridView1" Name="conf_date" 
                            PropertyName="SelectedValue" Type="String" />
                        <asp:ControlParameter ControlID="GridView1" Name="about" 
                            PropertyName="SelectedValue" Type="String" />
                        <asp:ControlParameter ControlID="GridView1" Name="s_date" 
                            PropertyName="SelectedValue" Type="String" />
                        <asp:ControlParameter ControlID="GridView1" Name="d_date" 
                            PropertyName="SelectedValue" Type="String" />
                        <asp:ControlParameter ControlID="GridView1" Name="mail" 
                            PropertyName="SelectedValue" Type="String" />
                        <asp:ControlParameter ControlID="GridView1" Name="cp" 
                            PropertyName="SelectedValue" Type="String" />
                        <asp:ControlParameter ControlID="GridView1" Name="charges" 
                            PropertyName="SelectedValue" Type="String" />
                        <asp:ControlParameter ControlID="GridView1" Name="block" 
                            PropertyName="SelectedValue" Type="String" />
                        <asp:Parameter Name="id" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
    </table>
</asp:Content>

