<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DANGNHAP.aspx.cs" Inherits="Detaicuachan.DANGNHAP" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Trang đăng nhập</title>
</head>
<body>
    <form id="form1" runat="server">
                <div align="center">
                         <h3>ĐĂNG NHẬP</h3>
                    </div>
                        <tr>
                            <td>
                                <table style="width: 100%;" align="center" cellpadding="4px;">
                                    <tr>
                                        <td  align="right">Tài khoản:
                                        </td>
                                        <td align="left">
                                            <asp:TextBox ID="txtTaikhoan" runat="server" Style="width: 170px;"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Tên tài khoản không được trống" Text="*" ControlToValidate="txtTaikhoan" ForeColor="Red"></asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="right">Mật khẩu:
                                        </td>
                                        <td style="width: 60%" align="left">
                                            <asp:TextBox ID="txtMatKhau" runat="server"  TextMode="Password" Width="170px"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Mật khẩu không đc trống" Text="*" ForeColor="Red" ControlToValidate="txtMatKhau"></asp:RequiredFieldValidator>

                                        </td>
                                    </tr>
                                    
                                    <tr>
                                        <td colspan="2" align="center">
                                            <asp:Button ID="btndangnhap" runat="server" OnClick="btndangnhap_Click" Text="đăng nhập" />
                                        <asp:Label ID="lblthongbao" runat="server" Text=""></asp:Label></td>
                                    </tr>
                                    <tr>
                                        <td colspan="2" align="center">
                                        <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/Dang-Ky">Chưa có tài khoản?    </asp:HyperLink>
        |
                                        <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/Quen-Mat-Khau">  Quên mật khẩu?</asp:HyperLink>
                                            </td>
                                    </tr>
                                    
                                </table>
                            </td>
                        </tr>
                    
    </form>
</body>
</html>
