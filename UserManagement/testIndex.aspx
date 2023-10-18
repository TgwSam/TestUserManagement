<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="testIndex.aspx.cs" Inherits="UserManagement.testWebFormPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Index</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <asp:CheckBox ID="CheckBox1" runat="server" />
            <asp:DropDownList ID="DropDownList1" runat="server">
                <asp:ListItem>insert</asp:ListItem>
                <asp:ListItem>delete</asp:ListItem>
                <asp:ListItem>update</asp:ListItem>
                <asp:ListItem>select</asp:ListItem>
            </asp:DropDownList>
            <asp:RadioButton ID="RadioButton1" runat="server" Text="singleRadio" />
            <asp:RadioButtonList ID="RadioButtonList1" runat="server">
                <asp:ListItem>en-US</asp:ListItem>
                <asp:ListItem>zh-CN</asp:ListItem>
            </asp:RadioButtonList>
            <asp:Button ID="Button1" runat="server" Text="MultiLan" OnClick="Button1_Click" />
            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Login" />
        </div>
        <ul>
            <%--<li><a href="testErrorPage.aspx">1</a></li>--%>
            <ul>
                <li>1</li>
                <li>2</li>
                <li>3</li>
            </ul>
            <li><a href="testErrorPage.aspx">2</a></li>
        </ul>
    </form>
</body>
</html>
