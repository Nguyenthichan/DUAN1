<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DANGNHAP.aspx.cs" Inherits="NET3951050040.DANGNHAP" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <table>

            <tr>

                <td colspan="2" align="center" class="tieude">

                    <asp:Label ID="Label3" runat="server" Text="ĐĂNG NHẬP"></asp:Label>

                </td>

            </tr>

            <tr>

                <td>

                     <asp:Label ID="Label1" runat="server" Text="Tài khoản:"></asp:Label>

                </td>

                <td>

                     <input id="txtTaiKhoan" type="text" runat="server" />

                </td>

            </tr>

            <tr>

                <td>

        <asp:Label ID="Label2" runat="server" Text="Mật khẩu:"></asp:Label></td>

                <td><input id="txtMatKhau" type="password" runat="server" /></td>

            </tr>

            <tr>

                
                <td colspan="2" align="center">

                    <asp:Button class="btn" ID="btnLogin" runat="server"  OnClick="btndangnhap_Click" Text="Đăng nhập" Height="40px" Width="80px" />

                    <asp:Button class="btn" ID="btnExit" runat="server"  OnClick="btnexit_Click" Text="Exit" Height="40px" Width="80px" />

                    <asp:Label ID="lbthongbao" runat="server"></asp:Label>

                </td>
                <td align="center">

                    &nbsp;</td>

            </tr>

        </table>
    </div>
    </form>
</body>
</html>
