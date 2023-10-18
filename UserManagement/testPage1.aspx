<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="testPage1.aspx.cs" Inherits="UserManagement.WebForm1" %>
<%@ Import Namespace="System.Threading" %>
<%@ Import Namespace="System.Globalization" %>

<!DOCTYPE html>

<script runat="server">
    protected override void InitializeCulture()
    {
        if (Request.QueryString["culture"] != null)
        {
            Thread.CurrentThread.CurrentCulture = CultureInfo.CreateSpecificCulture(Request.QueryString["culture"].ToString());
            Thread.CurrentThread.CurrentUICulture = new CultureInfo(Request.QueryString["culture"].ToString());
        }
        else
        {
            Thread.CurrentThread.CurrentCulture = CultureInfo.CreateSpecificCulture("zh-CN");
            Thread.CurrentThread.CurrentUICulture = new CultureInfo("zh-CN");
        }
        base.InitializeCulture();
    }
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <asp:DropDownList ID="DropDownList1" runat="server">
                <asp:ListItem>insert</asp:ListItem>
                <asp:ListItem>delete</asp:ListItem>
                <asp:ListItem>update</asp:ListItem>
                <asp:ListItem>select</asp:ListItem>
            </asp:DropDownList>
            <asp:Button ID="Button1" runat="server" Text="<%$ Resources:tgw,test %>" />
        </div>
    </form>
</body>
</html>
