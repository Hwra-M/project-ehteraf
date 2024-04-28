<%@ Page Title="Corporate Partnership" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="partnership.aspx.cs" Inherits="project.partnership" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <table class="w-100">
        <tr>
            <td style="width: 118px">&nbsp;</td>
            <td colspan="2" style="font-family: 'Arial Black'; font-size: x-large">Corporate Partnership</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 118px">&nbsp;</td>
            <td colspan="2" style="font-family: 'Arial Black'; font-size: large">Fill the following details </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 118px">&nbsp;</td>
            <td colspan="2">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 118px">&nbsp;</td>
            <td style="width: 475px">Corporation Name</td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Field Required" ForeColor="#CC3300"></asp:RequiredFieldValidator>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 118px">&nbsp;</td>
            <td style="width: 475px">Email</td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Field Required" ForeColor="#CC3300"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox2" ErrorMessage="Wrong Email Format" ForeColor="#CC3300" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 118px">&nbsp;</td>
            <td style="width: 475px">Phone Number </td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="Field Required" ForeColor="#CC3300"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox3" ErrorMessage="Please Enter a Valid Phone Number" ForeColor="#CC3300" ValidationExpression="(?:|968)[279]\d{7}$"></asp:RegularExpressionValidator>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 118px">&nbsp;</td>
            <td style="width: 475px">Type of Documents </td>
            <td>
                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox4" ErrorMessage="Field Required" ForeColor="#CC3300"></asp:RequiredFieldValidator>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 118px">&nbsp;</td>
            <td colspan="2">
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit" BackColor="#FFCC66" ForeColor="White" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 118px">&nbsp;</td>
            <td colspan="2" style="color: #999999">you will be contacted by our employees to discuss futrher details </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 118px">&nbsp;</td>
            <td style="width: 475px">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 118px">&nbsp;</td>
            <td style="width: 475px">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
    <br />
</asp:Content>
