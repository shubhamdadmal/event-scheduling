<%@ Page Language="C#" AutoEventWireup="true" CodeFile="home.aspx.cs" Inherits="home" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 50%;
        }
    </style>
</head>
<body style="background-image:url('background-design-trends.jpg')">
    <form id="form1" runat="server">
    <div>
    
        <table align="center" class="style1">
            <tr>
                <td style="text-align: center">
                    <asp:Label ID="Label1" runat="server" Font-Size="X-Large" 
                        Text="Conference Time Table"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="text-align: center">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                        CellPadding="4" DataKeyNames="id" DataSourceID="SqlDataSource1" 
                        ForeColor="#333333" GridLines="None">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:BoundField DataField="id" HeaderText="Conference ID" InsertVisible="False" 
                                ReadOnly="True" SortExpression="id" />
                            <asp:BoundField DataField="subject" HeaderText="Conference Subjects" 
                                SortExpression="subject" />
                            <asp:BoundField DataField="conf_date" HeaderText="Conference Date" 
                                SortExpression="conf_date" />
                            <asp:BoundField DataField="about" HeaderText="About Conference" 
                                SortExpression="about" />
                            <asp:BoundField DataField="s_date" HeaderText="Start Date" 
                                SortExpression="s_date" />
                            <asp:BoundField DataField="d_date" HeaderText="Deadline" 
                                SortExpression="d_date" />
                            <asp:BoundField DataField="mail" HeaderText="Mail Id" SortExpression="mail" />
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
                        SelectCommand="SELECT * FROM [conference] ORDER BY [conf_date]" 
                        UpdateCommand="UPDATE [conference] SET [subject] = @subject, [conf_date] = @conf_date, [about] = @about, [s_date] = @s_date, [d_date] = @d_date, [mail] = @mail, [cp] = @cp, [charges] = @charges, [block] = @block WHERE [id] = @id">
                        <DeleteParameters>
                            <asp:Parameter Name="id" Type="Int32" />
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
                    <asp:Button ID="Button1" runat="server" PostBackUrl="~/login.aspx" 
                        Text="Go to Login" />
                </td>
            </tr>
            </table>
    
    </div>
    </form>
</body>
</html>
