<%@ Page Title="Manage Job Applications" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="userjob.aspx.cs" Inherits="project.userjob" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    &nbsp;<table class="w-100">
        <tr>
            <td style="width: 214px">&nbsp;</td>
            <td style="width: 525px">&nbsp;</td>
            <td style="width: 525px">&nbsp;</td>
            <td>&nbsp;</td>
            <td style="width: 10px">&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 214px">&nbsp;</td>
            <td style="width: 525px">&nbsp;</td>
            <td style="width: 525px">&nbsp;</td>
            <td>&nbsp;</td>
            <td style="width: 10px">&nbsp;</td>
        </tr>
        <tr>
            <td colspan="5">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="phoneno" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <Columns>
                        <asp:BoundField DataField="fname" HeaderText="First Name" SortExpression="fname" />
                        <asp:BoundField DataField="sname" HeaderText="Last Name" SortExpression="sname" />
                        <asp:BoundField DataField="gender" HeaderText="Gender" SortExpression="gender" />
                        <asp:BoundField DataField="tfrom" HeaderText="Translate From" SortExpression="tfrom" />
                        <asp:BoundField DataField="tto" HeaderText="Translatr To" SortExpression="tto" />
                        <asp:BoundField DataField="phoneno" HeaderText="Phone Number" ReadOnly="True" SortExpression="phoneno" />
                        <asp:BoundField DataField="email" HeaderText="Email" SortExpression="email" />
                        <asp:BoundField DataField="nlanguage" HeaderText="Native Language " SortExpression="nlanguage" />
                        <asp:BoundField DataField="tsubj" HeaderText="Translation Subject" SortExpression="tsubj" />
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
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:tiger %>" SelectCommand="SELECT [fname], [sname], [gender], [tfrom], [tto], [phoneno], [email], [nlanguage], [tsubj] FROM [jobapp]"></asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td colspan="2" rowspan="2"></td>
            <td style="width: 525px; height: 38px;"></td>
            <td style="height: 38px"></td>
            <td style="height: 38px; width: 10px"></td>
        </tr>
        <tr>
            <td style="width: 525px">&nbsp;</td>
            <td>&nbsp;</td>
            <td style="width: 10px">&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 214px">&nbsp;</td>
            <td style="width: 525px">
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:tiger %>" SelectCommand="SELECT [phoneno] FROM [jobapp]"></asp:SqlDataSource>
            </td>
            <td style="width: 525px">
                &nbsp;</td>
            <td>&nbsp;</td>
            <td style="width: 10px">&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 214px">Phone Number</td>
            <td style="width: 525px">
                <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="phoneno" DataValueField="phoneno" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                </asp:DropDownList>
            </td>
            <td style="width: 525px">
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Update" />
            </td>
            <td>
                <asp:Button ID="Button2" runat="server" Text="Delete" OnClick="Button2_Click" />
            </td>
            <td style="width: 10px">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 214px">&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 214px">First Name</td>
            <td style="width: 525px">
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Required Field" ForeColor="#CC3300"></asp:RequiredFieldValidator>
            </td>
            <td style="width: 525px">
                Translate To</td>
            <td>
                <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
            </td>
            <td style="width: 10px">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBox6" ErrorMessage="Required Field" ForeColor="#CC3300"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 214px">Second Name</td>
            <td style="width: 525px">
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Required Field" ForeColor="#CC3300"></asp:RequiredFieldValidator>
            </td>
            <td style="width: 525px">
                Phone Number</td>
            <td>
                <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
            </td>
            <td style="width: 10px">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TextBox7" ErrorMessage="Required Field" ForeColor="#CC3300"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 214px">Birthdate</td>
            <td style="width: 525px">
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="Required Field" ForeColor="#CC3300"></asp:RequiredFieldValidator>
            </td>
            <td style="width: 525px">
                Email</td>
            <td>
                <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
            </td>
            <td style="width: 10px">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="TextBox8" ErrorMessage="Required Field" ForeColor="#CC3300"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 214px">gender</td>
            <td style="width: 525px">
                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox4" ErrorMessage="Required Field" ForeColor="#CC3300"></asp:RequiredFieldValidator>
            </td>
            <td style="width: 525px">
                Native Language</td>
            <td>
                <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
            </td>
            <td style="width: 10px">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="TextBox9" ErrorMessage="Required Field" ForeColor="#CC3300"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 214px">Translate From</td>
            <td style="width: 525px">
                <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox5" ErrorMessage="Required Field" ForeColor="#CC3300"></asp:RequiredFieldValidator>
            </td>
            <td style="width: 525px">
                Translation Subject</td>
            <td>
                <asp:TextBox ID="TextBox10" runat="server"></asp:TextBox>
            </td>
            <td style="width: 10px">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="TextBox10" ErrorMessage="Required Field" ForeColor="#CC3300"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 214px">&nbsp;</td>
            <td style="width: 525px">&nbsp;</td>
            <td style="width: 525px">&nbsp;</td>
            <td>&nbsp;</td>
            <td style="width: 10px">&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 214px">&nbsp;</td>
            <td style="width: 525px">&nbsp;</td>
            <td style="width: 525px">&nbsp;</td>
            <td>&nbsp;</td>
            <td style="width: 10px">&nbsp;</td>
        </tr>
    </table>
</asp:Content>
