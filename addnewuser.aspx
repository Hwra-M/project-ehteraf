<%@ Page Title="New User" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="addnewuser.aspx.cs" Inherits="project.addnewuser" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        <table class="w-100">
            <tr>
                <td style="width: 171px">&nbsp;</td>
                <td colspan="2" style="font-family: 'Arial Black'; font-size: x-large; color: #0000FF;">&nbsp;</td>
                <td style="font-family: 'Arial Black'; font-size: medium">&nbsp;</td>
                
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 171px">&nbsp;</td>
                <td colspan="2" style="font-family: 'Arial Black'; font-size: x-large; color: #0000FF;">&nbsp;</td>
                <td style="font-family: 'Arial Black'; font-size: medium">&nbsp;</td>
                
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 171px">&nbsp;</td>
                <td colspan="2" style="font-family: 'Arial Black'; font-size: x-large; color: #0000FF;"><b>Creating New User</b></td>
                <td style="font-family: 'Arial Black'; font-size: medium"><a href="newpass.aspx">Forgot password?</a></td>
                
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 171px">&nbsp;</td>
                <td style="width: 216px">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 171px">&nbsp;</td>
                <td class="text-end" style="width: 216px; text-align: justify !important">Enter your user ID</td>
                <td colspan="2">
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Field Cannot be Empty" ForeColor="#CC3300"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox1" ErrorMessage="Number Only" ForeColor="#CC3300" ValidationExpression="^[0-9]*$"></asp:RegularExpressionValidator>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 171px">&nbsp;</td>
                <td class="text-end" style="width: 216px; text-align: justify !important">Create a password </td>
                <td colspan="2">
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Field Cannot be Empty" ForeColor="#CC3300"></asp:RequiredFieldValidator>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 171px; height: 32px"></td>
                <td class="text-start" style="width: 216px; text-align: justify; height: 32px">Rewrite password </td>
                <td style="height: 32px" colspan="2">
                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                    <asp:CompareValidator ID="CompareValidator2" runat="server" ControlToCompare="TextBox2" ControlToValidate="TextBox3" ErrorMessage="Password Should Match" ForeColor="#CC3300"></asp:CompareValidator>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox3" ErrorMessage="Field Cannot be Empty" ForeColor="#CC3300"></asp:RequiredFieldValidator>
                </td>
                <td style="height: 32px"></td>
            </tr>
            <tr>
                <td style="width: 171px; height: 32px">&nbsp;</td>
                <td class="text-start" style="width: 216px; text-align: justify; height: 32px">Enter your Email</td>
                <td style="height: 32px" colspan="2">
                    <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox4" ErrorMessage="RegularExpressionValidator" ForeColor="#CC3300" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox4" ErrorMessage="Field Cannot be Empty" ForeColor="#CC3300"></asp:RequiredFieldValidator>
                </td>
                <td style="height: 32px">&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 171px; height: 32px">&nbsp;</td>
                <td class="text-start" style="width: 216px; text-align: justify; height: 32px">&nbsp;</td>
                <td style="height: 32px" colspan="2">
                    &nbsp;</td>
                <td style="height: 32px">&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 171px; height: 43px;"></td>
                <td class="text-end" style="width: 216px; text-align: justify; height: 43px;"></td>
                <td style="height: 43px">
                    <asp:Button ID="Button1" runat="server" BackColor="#FFCC66" ForeColor="White" Text="Submit" OnClick="Button1_Click" />
                </td>
                <td style="height: 43px"></td>
                <td style="height: 43px"></td>
            </tr>
            <tr>
                <td style="width: 171px">&nbsp;</td>
                <td class="text-end" style="width: 216px; text-align: justify !important">&nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 171px">&nbsp;</td>
                <td class="text-end" style="width: 216px; text-align: justify !important">&nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 171px">&nbsp;</td>
                <td class="text-end" style="width: 216px; text-align: justify !important">&nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <br />
    </p> 
</asp:Content>
