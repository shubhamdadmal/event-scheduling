<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="db.aspx.cs" Inherits="db" %>

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
            <td class="style2">
                <asp:Label ID="Label1" runat="server" Font-Size="X-Large" Text="Update Block"></asp:Label>
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
                        <asp:BoundField DataField="id" HeaderText="Block ID" InsertVisible="False" 
                            ReadOnly="True" SortExpression="id" />
                        <asp:BoundField DataField="category" HeaderText="Block Type" 
                            SortExpression="category" />
                        <asp:BoundField DataField="num" HeaderText="Block Number" 
                            SortExpression="num" />
                        <asp:BoundField DataField="capcity" HeaderText="Seating Capacity" 
                            SortExpression="capcity" />
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
                    DeleteCommand="DELETE FROM [block] WHERE [id] = @id" 
                    InsertCommand="INSERT INTO [block] ([category], [num], [capcity]) VALUES (@category, @num, @capcity)" 
                    SelectCommand="SELECT * FROM [block]" 
                    UpdateCommand="UPDATE [block] SET [category] = @category, [num] = @num, [capcity] = @capcity WHERE [id] = @id">
                    <DeleteParameters>
                        <asp:ControlParameter ControlID="GridView1" Name="id" 
                            PropertyName="SelectedValue" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="category" Type="String" />
                        <asp:Parameter Name="num" Type="Decimal" />
                        <asp:Parameter Name="capcity" Type="Decimal" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:ControlParameter ControlID="GridView1" Name="category" 
                            PropertyName="SelectedValue" Type="String" />
                        <asp:ControlParameter ControlID="GridView1" Name="num" 
                            PropertyName="SelectedValue" Type="Decimal" />
                        <asp:ControlParameter ControlID="GridView1" Name="capcity" 
                            PropertyName="SelectedValue" Type="Decimal" />
                        <asp:ControlParameter ControlID="GridView1" Name="id" 
                            PropertyName="SelectedValue" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
    </table>
</asp:Content>

