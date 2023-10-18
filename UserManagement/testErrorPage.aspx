<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="testErrorPage.aspx.cs" Inherits="UserManagement.testErrorPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Error</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <br />
            <br />
            errorPage
            <br />
            <br />
            <asp:Menu ID="Menu1" runat="server" OnMenuItemClick="Menu1_MenuItemClick">
                <Items>
                    <asp:MenuItem NavigateUrl="testIndex.aspx" Text="Mindex" Value="Mindex">
                        <asp:MenuItem NavigateUrl="testPage1.aspx" Text="MtestPage1" Value="MtestPage1">
                            <asp:MenuItem NavigateUrl="testPage1-1.aspx" Text="MtestPage1-1" Value="MtestPage1-1"></asp:MenuItem>
                        </asp:MenuItem>
                        <asp:MenuItem NavigateUrl="testErrorPage.aspx" Text="MErrorPage" Value="MErrorPage"></asp:MenuItem>
                    </asp:MenuItem>
                </Items>
            </asp:Menu>
&nbsp;<asp:TreeView ID="TreeView1" runat="server" DataSourceID="SiteMapDataSource1">
            </asp:TreeView>
            <asp:SiteMapDataSource ID="SiteMapDataSource1" runat="server" />
            <asp:SiteMapPath ID="SiteMapPath1" runat="server">
            </asp:SiteMapPath>
            <br />
            <asp:Button ID="Button1" runat="server" Text="Button" />
        </div>
    </form>
</body>
</html>
