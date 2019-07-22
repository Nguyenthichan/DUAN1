<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebApplication1.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Đăng nhập tài khoản</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Label ID="Label1" runat="server" Text="Email"></asp:Label>
        <br />
        <input id="txtemail" type="text" runat="server"/>
        <br />
        <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label>
        <br />
        <input id="txtpass" type="password" runat="server"/>
        <br />
        <input id="btnLogin" runat="server" type="submit" value="sign in now!" onserverclick="Button_Click" />
        <br />
        <div id="divInfo" runat="server"></div>
    </div>
    </form>
</body>
</html>
