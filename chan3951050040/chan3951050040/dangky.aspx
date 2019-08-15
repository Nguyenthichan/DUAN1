<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="dangky.aspx.cs" Inherits="chan3951050040.dangky" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Form đăng ký</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Label ID="lbdangky" runat="server" Text="ĐĂNG KÝ TÀI KHOẢN"></asp:Label>
        <br />
        <table style="width:100%;">
            <tr>
                <td>
                    <asp:Label ID="lbtaikhoan" runat="server" Text="Tài khoản"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txttaikhoan" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvtaikhoan" runat="server" ControlToValidate="txttaikhoan" ErrorMessage="Nhập tên tài khoản"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lbmatkhau" runat="server" Text="Mật khẩu"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtmatkhau" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvmatkhau" runat="server" ControlToValidate="txtmatkhau" ErrorMessage="Nhập mật khẩu"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lbnhaplaimatkhau" runat="server" Text="Nhập lại mật khẩu"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtnhaplaimatkhau" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvnhaplaimatkhau" runat="server" ControlToValidate="txtnhaplaimatkhau" ErrorMessage="Nhập lại mật khẩu"></asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="cmvhaplaimatkhau" runat="server" ControlToValidate="txtnhaplaimatkhau" ErrorMessage="Mật khẩu không khớp" Operator="DataTypeCheck" SetFocusOnError="True"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lbemail" runat="server" Text="Email"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtemail" runat="server"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="revemail" runat="server" ControlToValidate="txtemail" ErrorMessage="Nhập địa chỉ Email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lbhoten" runat="server" Text="Họ và tên"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txthovaten" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvhovaten" runat="server" ControlToValidate="txthovaten" ErrorMessage="Nhập họ và tên"></asp:RequiredFieldValidator>
                </td>
            </tr>
            
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    <asp:Button ID="btndangky" runat="server" Text="Đăng ký" OnClick="btndangky_Click" />
                    <asp:Label ID="lbthongbao" runat="server"></asp:Label>
                </td>
            </tr>
           
        </table>
    </div>
    </form>
</body>
</html>
