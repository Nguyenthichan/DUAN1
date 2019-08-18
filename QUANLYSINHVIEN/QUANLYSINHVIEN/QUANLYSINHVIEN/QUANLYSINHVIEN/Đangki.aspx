<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Đangki.aspx.cs" Inherits="QUANLYSINHVIEN.Đangki" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Đăng kí</title>
</head>
<body>
    <form id="form1" runat="server">
    <div align="left">
        <h2 style="margin-left: 120px">ĐĂNG KÝ</h2>
    </div>
    <div>
            <p style="margin-left: 120px">
            <label>Họ và tên:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </label>&nbsp;<asp:TextBox ID="txtHoTen" runat="server" ></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Họ tên không được bỏ trống" ForeColor="Blue" ControlToValidate="txtHoTen"></asp:RequiredFieldValidator>
            </p>
        </div>
    <div>
            <p style="margin-left: 120px">
            <label>Email:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Email không được bỏ trống" ForeColor="Blue" ControlToValidate="txtEmail"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Email không đúng định dạng" ControlToValidate="txtEmail" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ForeColor="Red"></asp:RegularExpressionValidator>
            </p>
            <p style="margin-left: 120px">
                <label>
                Tên đăng nhập:</label>
                <asp:TextBox ID="txtTenDangNhap" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Tên đăng nhập không được bỏ trống" ForeColor="Blue" ControlToValidate="txtTenDangNhap"></asp:RequiredFieldValidator>
            </p>
            <p style="margin-left: 120px">
                <label>
                Mật khẩu:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </label>&nbsp;<asp:TextBox ID="txtMatKhau" runat="server" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Mật khẩu không được bỏ trống" ForeColor="Blue" ControlToValidate="txtMatKhau"></asp:RequiredFieldValidator>
            </p>
        </div>
    <div>
            <p style="margin-left: 120px">
            <label>Nhập laị mật khẩu:</label>
            <asp:TextBox ID="txtNhapLaiMK" runat="server" TextMode="Password"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Mật khẩu chưa được nhập lại" ForeColor="Blue" ControlToValidate="txtNhapLaiMK"></asp:RequiredFieldValidator>
            <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Mật khẩu không không khớp" ControlToCompare="txtMatKhau" ControlToValidate="txtNhapLaiMK" ForeColor="Red"></asp:CompareValidator>
            </p>
        </div>
        <div style="margin-left: 240px">
            <asp:Button ID="btndangky" runat="server" OnClick="btndangky_Click" Text="Đăng ký" /><asp:Label ID="lblThongBao" runat="server" ForeColor="Blue"></asp:Label>
            <br />
        <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/Dang-Nhap">Đã có tài khoản?    </asp:HyperLink>
        |
        <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/Quen-Mat-Khau">  Quên mật khẩu?</asp:HyperLink>
    </div>
    </form>
</body>
</html>
