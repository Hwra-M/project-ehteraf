<%@ Page Title="Manage Partnership Request" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="userpartner.aspx.cs" Inherits="project.userpartner" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="w-100">
        <tr>
            <td style="width: 188px">&nbsp;</td>
            <td style="width: 237px">&nbsp;</td>
            <td style="width: 396px">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td colspan="5">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="name" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <Columns>
                        <asp:BoundField DataField="name" HeaderText="Company Name" ReadOnly="True" SortExpression="name" />
                        <asp:BoundField DataField="email" HeaderText="Email" SortExpression="email" />
                        <asp:BoundField DataField="phoneno" HeaderText="Phone Number" SortExpression="phoneno" />
                        <asp:BoundField DataField="doctype" HeaderText="Document Type" SortExpression="doctype" />
                    </Columns>
                    <EditRowStyle BackColor="#999999" />
                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#E9E7E2" />
                    <SortedAscendingHeaderStyle BackColor="#506C8C" />
                    <SortedDescendingCellStyle BackColor="#FFFDF8" />
                    <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:tiger %>" SelectCommand="SELECT * FROM [partner]"></asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td style="width: 188px">&nbsp;</td>
            <td style="width: 237px">&nbsp;</td>
            <td style="width: 396px">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 188px">&nbsp;</td>
            <td style="width: 237px">Company Name</td>
            <td style="width: 396px">
                <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource3" DataTextField="phoneno" DataValueField="phoneno" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:tiger %>" SelectCommand="SELECT [phoneno] FROM [partner]"></asp:SqlDataSource>
            </td>
            <td>
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Update" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 188px">&nbsp;</td>
            <td style="width: 237px">&nbsp;</td>
            <td style="width: 396px">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 188px">&nbsp;</td>
            <td style="width: 237px">name</td>
            <td style="width: 396px">
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Required Field" ForeColor="#CC3300"></asp:RequiredFieldValidator>
            </td>
            <td>
                <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Delete" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 188px">&nbsp;</td>
            <td style="width: 237px">Phone Number</td>
            <td style="width: 396px">
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Required Field" ForeColor="#CC3300"></asp:RequiredFieldValidator>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 188px">&nbsp;</td>
            <td style="width: 237px">Documents Type </td>
            <td style="width: 396px">
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="Required Field" ForeColor="#CC3300"></asp:RequiredFieldValidator>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 188px; height: 38px"></td>
            <td style="width: 237px; height: 38px">email</td>
            <td style="width: 396px; height: 38px">
                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox4" ErrorMessage="Required Field" ForeColor="#CC3300"></asp:RequiredFieldValidator>
            </td>
            <td style="height: 38px"></td>
            <td style="height: 38px"></td>
        </tr>
        <tr>
            <td style="width: 188px">&nbsp;</td>
            <td style="width: 237px">&nbsp;</td>
            <td style="width: 396px">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 188px">&nbsp;</td>
            <td style="width: 237px">&nbsp;</td>
            <td style="width: 396px">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 188px">&nbsp;</td>
            <td style="width: 237px">&nbsp;</td>
            <td style="width: 396px">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 188px">&nbsp;</td>
            <td style="width: 237px">&nbsp;</td>
            <td style="width: 396px">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 188px">&nbsp;</td>
            <td style="width: 237px">&nbsp;</td>
            <td style="width: 396px">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
&nbsp;
</asp:Content>
