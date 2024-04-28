<%@ Page Title="Login" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="project.login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server"> 
    <br />
    </asp:Content> 

    <asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <table class="w-100">
        <tr>
            <td style="height: 38px; width: 306px;">&nbsp;</td>
            <td style="height: 38px"></td>
            <td style="height: 38px; width: 228px;"></td>
            <td style="height: 38px">&nbsp;</td>
        </tr>
        <tr>
            <td class="text-end" colspan="2" style="height: 56px"><span class="text-uppercase" style="font-family: 'Arial Black'; font-size: x-large; text-decoration: blink; color: #0000FF;">Welcome</span><span class="text-uppercase" style="font-family: Cambria, Cochin, Georgia, Times, 'Times New Roman', serif; font-size: x-large; text-decoration: blink">.</span> <span style="font-family: 'Monotype Corsiva'; font-size: large">Please fill your details </span> </td>
            <td style="height: 56px; width: 228px"></td>
            <td style="height: 56px"></td>
        </tr>
        <tr>
            <td class="text-end" colspan="2" style="height: 56px">&nbsp;</td>
            <td style="height: 56px; width: 228px">&nbsp;</td>
            <td style="height: 56px">&nbsp;</td>
        </tr>
        <tr>
            <td class="text-end" style="font-size: large; width: 306px">&nbsp;</td>
            <td class="text-start" style="font-size: large">User ID</td>
            <td style="width: 228px">
                <asp:TextBox ID="TextBox1" runat="server" style="font-size: large"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Field Cannot Be Empty" ForeColor="#CC3300" style="font-size: large"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Number Only" ForeColor="#CC3300" ValidationExpression="^[0-9]*$"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="text-end" style="font-size: large; width: 306px">&nbsp;</td>
            <td class="text-start" style="font-size: large">PassPassword</td>
            <td style="width: 228px">
                <asp:TextBox ID="TextBox2" runat="server" style="font-size: large" TextMode="Password"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Field Cannot Be Empty" ForeColor="#CC3300" style="font-size: large"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="text-end" style="font-size: large; width: 306px">&nbsp;</td>
            <td class="text-end" style="font-size: large">&nbsp;</td>
            <td class="text-center" style="width: 228px">
                <asp:Button ID="Button1" runat="server" Text="log in " BackColor="#FFCC66" BorderColor="#FFCC66" CssClass="auto-style22" ForeColor="#333333" OnClick="Button1_Click" style="font-size: large" />
            </td>
            <td >
                <a href="addnewuser.aspx" class="nav-item nav-link" style="font-size: medium; color: #999999">Forgot Password/Add new user?

            </td>
        </tr>
        <tr>
            <td class="text-end" style="font-size: large; width: 306px">&nbsp;</td>
            <td class="text-end" style="font-size: large">&nbsp;</td>
            <td style="width: 228px">
                <asp:Label ID="Label1" runat="server" Text="Label" ForeColor="#CC3300" style="font-size: large" Visible="False"></asp:Label>
            </td>
            <td style="font-size: large">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="text-end" style="font-size: large; width: 306px">&nbsp;</td>
            <td class="text-end" style="font-size: large">&nbsp;</td>
            <td style="width: 228px">
                &nbsp;</td>
            <td style="font-size: large">
                &nbsp;</td>
        </tr>
    </table>
&nbsp;
</asp:Content>
