<%@ Page Language="C#" AutoEventWireup="true" CodeFile="signup.aspx.cs" Inherits="signup" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="cc1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 50%;
        }
        .style2
        {
            height: 42px;
        }
    </style>
</head>
<body style="background-image:url('background-design-trends.jpg')">
    <form id="form1" runat="server">
    <div>
    
        <table align="center" class="style1">
            <tr>
                <td colspan="2" style="text-align: center">
                    <asp:Label ID="Label1" runat="server" Font-Size="X-Large" 
                        Text="Registration Form"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="text-align: center">
                    <asp:Label ID="Label2" runat="server" Text="Name"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" Width="450px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="TextBox1" ErrorMessage="RequiredFieldValidator" 
                        ForeColor="#CC0000">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="text-align: center">
                    <asp:Label ID="Label3" runat="server" Text="Father's Name"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" Width="450px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="TextBox2" ErrorMessage="RequiredFieldValidator" 
                        ForeColor="#CC0000">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="text-align: center">
                    <asp:Label ID="Label4" runat="server" Text="Phone Number"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server" Width="450px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                        ControlToValidate="TextBox3" ErrorMessage="RequiredFieldValidator" 
                        ForeColor="#CC0000">*</asp:RequiredFieldValidator>
                    <cc1:FilteredTextBoxExtender ID="TextBox3_FilteredTextBoxExtender" 
                        runat="server" Enabled="True" TargetControlID="TextBox3" 
                        ValidChars="1234567890">
                    </cc1:FilteredTextBoxExtender>
                </td>
            </tr>
            <tr>
                <td style="text-align: center">
                    <asp:Label ID="Label5" runat="server" Text="Email ID"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox4" runat="server" Width="450px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                        ControlToValidate="TextBox4" ErrorMessage="RequiredFieldValidator" 
                        ForeColor="#CC0000">*</asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                        ControlToValidate="TextBox4" ErrorMessage="RegularExpressionValidator" 
                        ForeColor="#CC0000" 
                        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">Invalid Email</asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td style="text-align: center">
                    <asp:Label ID="Label6" runat="server" Text="Date of Birth"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox5" runat="server" Width="450px"></asp:TextBox>
                    <cc1:CalendarExtender ID="TextBox5_CalendarExtender" runat="server" 
                        Enabled="True" TargetControlID="TextBox5">
                    </cc1:CalendarExtender>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                        ControlToValidate="TextBox5" ErrorMessage="RequiredFieldValidator" 
                        ForeColor="#CC0000">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="text-align: center">
                    <asp:Label ID="Label9" runat="server" Text="Address"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox6" runat="server" Width="450px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                        ControlToValidate="TextBox6" ErrorMessage="RequiredFieldValidator" 
                        ForeColor="#CC0000">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="text-align: center">
                    <asp:Label ID="Label8" runat="server" Text="Conference Name"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server" Height="36px" Width="450px">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td style="text-align: center">
                    <asp:Label ID="Label10" runat="server" Text="Security Question"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox7" runat="server" Width="450px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                        ControlToValidate="TextBox7" ErrorMessage="RequiredFieldValidator" 
                        ForeColor="#CC0000">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="text-align: center">
                    <asp:Label ID="Label11" runat="server" Text="Security Answer"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox8" runat="server" Width="450px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                        ControlToValidate="TextBox8" ErrorMessage="RequiredFieldValidator" 
                        ForeColor="#CC0000">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="text-align: center">
                    <asp:Label ID="Label12" runat="server" Text="User Name"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox9" runat="server" Width="450px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                        ControlToValidate="TextBox9" ErrorMessage="RequiredFieldValidator" 
                        ForeColor="#CC0000">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="text-align: center; margin-left: 200px;">
                    <asp:Label ID="Label13" runat="server" Text="Password"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox10" runat="server" Width="450px" TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
                        ControlToValidate="TextBox10" ErrorMessage="RequiredFieldValidator" 
                        ForeColor="#CC0000">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="text-align: center">
                    <asp:Label ID="Label14" runat="server" Text="ConfrmPassword"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox11" runat="server" Width="450px" TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" 
                        ControlToValidate="TextBox11" ErrorMessage="RequiredFieldValidator" 
                        ForeColor="#CC0000">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="text-align: center" class="style2">
                    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
                        Text="Register for Conference" />
                </td>
                <td class="style2">
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:constr %>" 
                        DeleteCommand="DELETE FROM [login] WHERE [uname] = @uname" 
                        InsertCommand="INSERT INTO [login] ([name], [f_name], [phone], [email], [dob], [address], [conf], [ques], [ans], [uname], [pass]) VALUES (@name, @f_name, @phone, @email, @dob, @address, @conf, @ques, @ans, @uname, @pass)" 
                        SelectCommand="SELECT * FROM [login]" 
                        UpdateCommand="UPDATE [login] SET [name] = @name, [f_name] = @f_name, [phone] = @phone, [email] = @email, [dob] = @dob, [address] = @address, [conf] = @conf, [ques] = @ques, [ans] = @ans, [pass] = @pass WHERE [uname] = @uname">
                        <DeleteParameters>
                            <asp:Parameter Name="uname" Type="String" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:ControlParameter ControlID="TextBox1" Name="name" PropertyName="Text" 
                                Type="String" />
                            <asp:ControlParameter ControlID="TextBox2" Name="f_name" PropertyName="Text" 
                                Type="String" />
                            <asp:ControlParameter ControlID="TextBox3" Name="phone" PropertyName="Text" 
                                Type="String" />
                            <asp:ControlParameter ControlID="TextBox4" Name="email" PropertyName="Text" 
                                Type="String" />
                            <asp:ControlParameter ControlID="TextBox5" Name="dob" PropertyName="Text" 
                                Type="String" />
                            <asp:ControlParameter ControlID="TextBox6" Name="address" PropertyName="Text" 
                                Type="String" />
                            <asp:ControlParameter ControlID="TextBox7" Name="conf" PropertyName="Text" 
                                Type="String" />
                            <asp:ControlParameter ControlID="TextBox8" Name="ques" PropertyName="Text" 
                                Type="String" />
                            <asp:ControlParameter ControlID="TextBox9" Name="ans" PropertyName="Text" 
                                Type="String" />
                            <asp:ControlParameter ControlID="TextBox10" Name="uname" PropertyName="Text" 
                                Type="String" />
                            <asp:ControlParameter ControlID="TextBox11" Name="pass" PropertyName="Text" 
                                Type="String" />
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="name" Type="String" />
                            <asp:Parameter Name="f_name" Type="String" />
                            <asp:Parameter Name="phone" Type="String" />
                            <asp:Parameter Name="email" Type="String" />
                            <asp:Parameter Name="dob" Type="String" />
                            <asp:Parameter Name="address" Type="String" />
                            <asp:Parameter Name="conf" Type="String" />
                            <asp:Parameter Name="ques" Type="String" />
                            <asp:Parameter Name="ans" Type="String" />
                            <asp:Parameter Name="pass" Type="String" />
                            <asp:Parameter Name="uname" Type="String" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td style="text-align: center" class="style2">
                    &nbsp;</td>
                <td class="style2">
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:constr %>" 
                        DeleteCommand="DELETE FROM [reg] WHERE [id] = @id" 
                        InsertCommand="INSERT INTO [reg] ([uname], [conference]) VALUES (@uname, @conference)" 
                        SelectCommand="SELECT * FROM [reg]" 
                        
                        UpdateCommand="UPDATE [reg] SET [uname] = @uname, [conference] = @conference WHERE [id] = @id">
                        <DeleteParameters>
                            <asp:Parameter Name="id" Type="Int32" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:ControlParameter ControlID="TextBox9" Name="uname" PropertyName="Text" 
                                Type="String" />
                            <asp:ControlParameter ControlID="DropDownList1" Name="conference" 
                                PropertyName="SelectedValue" Type="String" />
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="uname" Type="String" />
                            <asp:Parameter Name="conference" Type="String" />
                            <asp:Parameter Name="id" Type="Int32" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                    <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:constr %>" 
                        SelectCommand="SELECT * FROM [conference] WHERE ([conf_date] &gt; @conf_date)">
                        <SelectParameters>
                            <asp:Parameter DefaultValue="DateTime.Now.ToShortDateString()" Name="conf_date" 
                                Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                    <cc1:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
                    </cc1:ToolkitScriptManager>
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
