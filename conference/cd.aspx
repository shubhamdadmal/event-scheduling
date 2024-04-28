<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="cd.aspx.cs" Inherits="cd" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 50%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" class="style1">
        <tr>
            <td style="text-align: center">
                <asp:Label ID="Label1" runat="server" Font-Size="XX-Large" 
                    style="text-align: center" Text="Passed Conference"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    CellPadding="4" DataKeyNames="id" DataSourceID="SqlDataSource1" 
                    ForeColor="#333333" GridLines="None">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="id" HeaderText="Conference ID" InsertVisible="False" 
                            ReadOnly="True" SortExpression="id" />
                        <asp:BoundField DataField="subject" HeaderText="Subjects" 
                            SortExpression="subject" />
                        <asp:BoundField DataField="conf_date" HeaderText="Conference Date" 
                            SortExpression="conf_date" />
                        <asp:BoundField DataField="about" HeaderText="About Conference" 
                            SortExpression="about" />
                        <asp:BoundField DataField="s_date" HeaderText="Start Date" 
                            SortExpression="s_date" />
                        <asp:BoundField DataField="d_date" HeaderText="Deadline" 
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
                    SelectCommand="SELECT * FROM [conference] WHERE ([conf_date] &lt; @conf_date)">
                    <SelectParameters>
                        <asp:Parameter DefaultValue="DateTime.Now.ToShortDateString()" Name="conf_date" 
                            Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
    </table>
</asp:Content>

