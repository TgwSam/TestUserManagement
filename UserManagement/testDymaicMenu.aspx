<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="testDymaicMenu.aspx.cs" Inherits="UserManagement.testDymaicMenu" %>

<!DOCTYPE html>

<script type="text/javascript">
    alert(${user.LoginName});
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>统计</title>
    <link rel="shortcut icon" href="favicon.ico">
    <link href="../static/css/bootstrap.min.css" th:href="@{/css/bootstrap.min.css}" rel="stylesheet" />
    <link href="../static/css/font-awesome.min.css" th:href="@{/css/font-awesome.min.css}" rel="stylesheet" />
    <link href="../static/css/main/animate.min.css" th:href="@{/css/main/animate.min.css}" rel="stylesheet" />
    <link href="../static/css/main/style.min862f.css" th:href="@{/css/main/style.min862f.css}" rel="stylesheet" />
    <style type="text/css">
        li{
            width:30px;
            height:30px;
            text-align:center;
            padding:6px 0;
            font-size:12px;
            line-height:1.42851429;
            border-radius:15px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <ul>
                <li><a href="testIndex.aspx">testIndex.aspx</a>
                    <ul><li><a href="testErrorPage.aspx">testErrorPage.aspx</a></li></ul>
                </li>
                <li><a href="">跳转2</a></li>
                <li><a href="">跳转3</a></li>
                <li><a href="">跳转4</a></li>
            </ul>
            <ul id="test1">
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />
                <li></li>
            </ul>
        </div>
        <p>
            <a href="testIndex.aspx">
            
            </a>
                    </p>
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
         <br />
         <br />
        <asp:Menu ID="Menu1" runat="server">
            <Items>
                <asp:MenuItem NavigateUrl="testIndex.aspx" Text="index" Value="index">
                    <asp:MenuItem NavigateUrl="testErrorPage.aspx" Text="error" Value="error"></asp:MenuItem>
                    <asp:MenuItem NavigateUrl="testPage1.aspx" Text="testPage1" Value="testPage1">
                        <asp:MenuItem NavigateUrl="testPage1-1.aspx" Text="testPage1-1" Value="testPage1-1"></asp:MenuItem>
                    </asp:MenuItem>
                </asp:MenuItem>
            </Items>
        </asp:Menu>
        <div id="csdiv1" runat="server"></div>
        <!--<div><ul><li>li1</li><li>li2</li><li>li3</li></ul></div>
        <div><ul><li>li1</li><li>li2</li><li>li3</li></ul>-->
    </form>
</body>
</html>
