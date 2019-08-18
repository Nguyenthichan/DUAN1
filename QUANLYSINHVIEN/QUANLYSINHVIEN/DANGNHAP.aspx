<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DANGNHAP.aspx.cs" Inherits="QUANLYSINHVIEN.DANGNHAP" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>trang đang nhập</title>
</head>
<body>
    <form id="form1" runat="server">
    <table id="Login1" cellspacing="0" cellpadding="0" border="0" style="width: 408px; border-collapse: collapse;">
            
                <div align="center">
                    <h4>ĐĂNG NHẬP</h4>
                </div>
              <tr>
                            <td>
                                <table style="width: 100%;" align="center" cellpadding="4px;">
                                    <tr>
                                        <td class="auto-style1" align="right">Tên đăng nhập:
                                        </td>
                                        <td align="left" class="auto-style2">
                                            <asp:TextBox ID="txtUserName" runat="server" Style="width: 170px;"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Tên đăng nhập không được trống" Text="*" ControlToValidate="txtUserName" ForeColor="Red"></asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="width: 40%;" class="textinput" align="right">Mật khẩu:
                                        </td>
                                        <td style="width: 60%" align="left">
                                            <asp:TextBox ID="txtMatKhau" runat="server" class="login-pw" Style="width: 170px;" TextMode="Password"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Mật khẩu không đc trống" Text="*" ForeColor="Red" ControlToValidate="txtMatKhau"></asp:RequiredFieldValidator>

                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="2" align="center" class="auto-style3">
                                            <asp:CheckBox ID="ckbhien" runat="server" AutoPostBack="True" OnCheckedChanged="ckbhien_CheckedChanged" /><a class="textlink">Hiện mật khẩu</a> |
                                        <asp:HyperLink ID="Forgotpassword" runat="server" class="textlink">Quên mật khẩu?</asp:HyperLink>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="2" align="center">
                                            <asp:Button ID="btnDangNhap" runat="server" Text="Đăng nhập" class="stylebtn" OnClick="btnDangNhap_Click" />
                                        <asp:Label ID="lblthongbao" runat="server" Text=""></asp:Label></td>
                                    </tr>
                                    
                                </table>
                            </td>
                        </tr>
                    </table>
                </form>
           
</body>
    </form>
</body>
</html>
