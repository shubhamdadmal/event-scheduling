<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

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
                <td colspan="2" style="text-align: center">
                    <asp:Label ID="Label1" runat="server" Font-Size="X-Large" 
                        Text="Login Form"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="text-align: center">
                    <asp:Label ID="Label12" runat="server" Text="User Name"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox9" runat="server" Width="450px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="TextBox9" ErrorMessage="RequiredFieldValidator" 
                        ForeColor="#CC0000" ValidationGroup="a">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="text-align: center; margin-left: 200px;">
                    <asp:Label ID="Label13" runat="server" Text="Password"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox10" runat="server" Width="450px" TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="TextBox10" ErrorMessage="RequiredFieldValidator" 
                        ForeColor="#CC0000" ValidationGroup="a">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="text-align: center">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="text-align: center">
                    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
                        Text="Login" ValidationGroup="a" />
                </td>
                <td>
                    <asp:Button ID="Button2" runat="server"  
                        Text="Sign Up" onclick="Button2_Click" />
                    <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/fpass.aspx">Forget Password</asp:LinkButton>
                </td>
            </tr>
        </table>
    
    </div>
    <asp:Label ID="Label14" 
        style="position :absolute; top: 251px; left: 242px; height: 23px; width: 109px;" 
        runat="server" Text="Developed By"></asp:Label>
        <asp:Label ID="Label2" 
        style="position :absolute; top: 350px; left: 242px; height: 23px; width: 109px;" 
        runat="server" Text="Label"></asp:Label>
        <asp:Label ID="Label3" 
        style="position :absolute; top: 425px; left: 242px; height: 23px; width: 109px;" 
        runat="server" Text="Label"></asp:Label>
    </form>
</body>
</html>
