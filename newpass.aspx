<%@ Page Title="New Password" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="newpass.aspx.cs" Inherits="project.newpass" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    &nbsp;<table class="w-100">
        <tr>
            <td style="height: 39px"></td>
            <td style="width: 102px; height: 39px;"></td>
            <td colspan="3" style="height: 39px"></td>
            <td style="height: 39px"></td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td style="font-family: 'Arial Black'; color: #0000FF; width: 102px">&nbsp;</td>
            <td colspan="2" style="font-family: 'Arial Black'; color: #0000FF; width: 300px">Update your password</td>
            <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</td>
            <td style="font-family: 'Arial Black'; font-size: medium"><a href="addnewuser.aspx">create new user?</a></td>
            <td>&nbsp;</td>
            <td></td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td style="width: 102px">&nbsp;</td>
            <td colspan="4">&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td style="width: 102px">&nbsp;</td>
            <td>Enter Your ID</td>
            <td colspan="3">
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Field Required" ForeColor="#CC3300"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Number Only" ForeColor="#CC3300" ValidationExpression="^[0-9]*$"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td style="width: 102px">&nbsp;</td>
            <td>Reset Your Password</td>
            <td colspan="3">
                <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Field Required" ForeColor="#CC3300"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td style="width: 102px">&nbsp;</td>
            <td>Conform Password </td>
            <td colspan="3">
                <asp:TextBox ID="TextBox3" runat="server" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="Field Required" ForeColor="#CC3300"></asp:RequiredFieldValidator>
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox2" ControlToValidate="TextBox3" ErrorMessage="password should match" ForeColor="#CC3300"></asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td style="width: 102px">&nbsp;</td>
            <td>&nbsp;</td>
            <td colspan="2">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="height: 40px"></td>
            <td style="width: 102px; height: 40px;"></td>
            <td style="height: 40px">
                <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" BackColor="#FFCC66" ForeColor="White" Height="43px" Width="109px" />
            </td>
            <td colspan="2" style="height: 40px"></td>
            <td style="height: 40px">
                &nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td style="width: 102px">&nbsp;</td>
            <td>&nbsp;</td>
            <td colspan="2">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td style="width: 102px">&nbsp;</td>
            <td>&nbsp;</td>
            <td colspan="2">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
