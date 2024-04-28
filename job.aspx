<%@ Page Title="Job Application" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="job.aspx.cs" Inherits="project.job" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <p style="font-family: 'Arial Black'; font-size: x-large; color: #3333CC">
        &nbsp;</p>
    <p style="font-family: 'Arial Black'; font-size: x-large; color: #3333CC" class="text-center">
        JOB APPLICATION FORM </p>
    <p style="font-family: 'Arial Black'; font-size: medium; color: #808080" class="text-center">
        you will be contacted within two days after submitting the form</p>
    <p>
    </p>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="w-100">
        <tr>
            <td>&nbsp;</td>
            <td style="width: 29px">&nbsp;</td>
            <td style="width: 222px">&nbsp;</td>
            <td style="width: 222px">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td style="width: 29px">&nbsp;</td>
            <td colspan="4"><b>Enter Your Full Name <span style="color: #CC3300">*</span></b></td>
            <td>&nbsp;</td>
            <td><b>Phone NO <span style="color: #CC3300">*</span></b></td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td style="width: 29px">&nbsp;</td>
            <td style="width: 222px">
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                <br />
                <span style="color: #999999">First Name&nbsp; </span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
            <td colspan="3">
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                <br />
                <span style="color: #999999">Second Name</span></td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Field required" ForeColor="#CC3300"></asp:RequiredFieldValidator>
            </td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBox3" ErrorMessage="Field Required" ForeColor="#CC3300"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox3" ErrorMessage="please make sure number entered is accurate" ValidationExpression="(?:|968)[279]\d{7}$" ForeColor="#CC3300"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td style="width: 29px">&nbsp;</td>
            <td colspan="4"><b>Birth Date <span style="color: #CC3300">*</span></b></td>
            <td>&nbsp;</td>
            <td><b>Email </b></td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="height: 38px"></td>
            <td style="height: 38px; width: 29px;">&nbsp;</td>
            <td colspan="4" style="height: 38px">
                <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
                <br />
                <span style="color: #999999">dd/mm/yyyy</span></td>
            <td style="height: 38px">
                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="TextBox9" ErrorMessage="follow format dd/mm/YYYY" ForeColor="#CC3300" ValidationExpression="^(?:(?:31(\/|-|\.)(?:0?[13578]|1[02]|(?:Jan|Mar|May|Jul|Aug|Oct|Dec)))\1|(?:(?:29|30)(\/|-|\.)(?:0?[1,3-9]|1[0-2]|(?:Jan|Mar|Apr|May|Jun|Jul|Aug|Sep|Oct|Nov|Dec))\2))(?:(?:1[6-9]|[2-9]\d)?\d{2})$|^(?:29(\/|-|\.)(?:0?2|(?:Feb))\3(?:(?:(?:1[6-9]|[2-9]\d)?(?:0[48]|[2468][048]|[13579][26])|(?:(?:16|[2468][048]|[3579][26])00))))$|^(?:0?[1-9]|1\d|2[0-8])(\/|-|\.)(?:(?:0?[1-9]|(?:Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sep))|(?:1[0-2]|(?:Oct|Nov|Dec)))\4(?:(?:1[6-9]|[2-9]\d)?\d{2})$"></asp:RegularExpressionValidator>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox9" ErrorMessage="Field Required" ForeColor="#CC3300"></asp:RequiredFieldValidator>
            </td>
            <td style="height: 38px">
                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
            </td>
            <td style="height: 38px">
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox4" ErrorMessage="follow format name@example.com" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ForeColor="#CC3300"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td style="width: 29px">&nbsp;</td>
            <td colspan="4"><b>Gender <span style="color: #CC3300">*</span></b></td>
            <td>&nbsp;</td>
            <td><b>Native Language </b></td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td style="width: 29px">&nbsp;</td>
            <td colspan="4">
                <asp:DropDownList ID="DropDownList4" runat="server">
                    <asp:ListItem>Female</asp:ListItem>
                    <asp:ListItem>male</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="DropDownList4" ErrorMessage="Field Required" ForeColor="#CC3300"></asp:RequiredFieldValidator>
            </td>
            <td>
                <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="height: 38px"></td>
            <td style="height: 38px; width: 29px;">&nbsp;</td>
            <td colspan="4" style="height: 38px"><b>I Can Undertake&nbsp; <span style="color: #CC3300">*</span></b></td>
            <td style="height: 38px">&nbsp;</td>
            <td style="height: 38px"><b>I Specialize on Translations of the Following Subjects</b></td>
            <td style="height: 38px"></td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td style="width: 29px">&nbsp;</td>
            <td colspan="4">
                <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                <br />
                <span style="color: #999999">Translation from (language)</span></td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox6" ErrorMessage="Field Required" ForeColor="#CC3300"></asp:RequiredFieldValidator>
            </td>
            <td>
                <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td style="width: 29px">&nbsp;</td>
            <td colspan="4">
                <asp:TextBox ID="TextBox10" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox10" ErrorMessage="Field Required" ForeColor="#CC3300"></asp:RequiredFieldValidator>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td style="width: 29px">&nbsp;</td>
            <td colspan="4" style="color: #999999">Tranaslation to </td>
            <td>&nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" BackColor="#FFCC00" ForeColor="White" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td style="width: 29px">&nbsp;</td>
            <td colspan="4" style="color: #999999">&nbsp;</td>
            <td>&nbsp;</td>
            <td>
                &nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
    </asp:Content>

