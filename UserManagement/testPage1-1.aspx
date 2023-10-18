<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="testPage1-1.aspx.cs" Inherits="UserManagement.testPage1_1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            testPage1-1
        </div>
        <asp:ListBox ID="ListBox1" runat="server"></asp:ListBox>
        <asp:Literal ID="Literal1" runat="server"></asp:Literal>
        <asp:MultiView ID="MultiView1" runat="server">
        </asp:MultiView>
        <asp:Substitution ID="Substitution1" runat="server" />
        <asp:DataList ID="DataList1" runat="server">
        </asp:DataList>
        <asp:TreeView ID="TreeView1" runat="server" DataSourceID="SiteMapDataSource1">
        </asp:TreeView>
        <asp:SiteMapDataSource ID="SiteMapDataSource1" runat="server" />
    </form>
</body>
</html>
