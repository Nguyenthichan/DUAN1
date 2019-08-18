<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="QUANLY.aspx.cs" Inherits="QUANLYSINHVIEN.QUANLY" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <head runat="server">
    <title>Đăng kí</title>
</head>
    <form id="form1" runat="server">
    <div align="left">
        <h3>QUẢN LÝ SINH VIÊN</h3>
    </div>
    <div>
            <label>Mã sinh viên:&nbsp;&nbsp;&nbsp; </label>
            &nbsp;<asp:TextBox ID="txtmasv" runat="server" ></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Mã sinh viên không được bỏ trống" ForeColor="Blue" ControlToValidate="txtmasv"></asp:RequiredFieldValidator>
        </div>
    <div>
     Tên sinh viên:&nbsp;&nbsp;&nbsp; </label>
            &nbsp;<asp:TextBox ID="txttensv" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Tên không được bỏ trống" ForeColor="Blue" ControlToValidate="txttensv"></asp:RequiredFieldValidator>
        </div>
    <div>
            <label>Giới tính:bel>Giới&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtgioitinh" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Giới tính không được bỏ trống" ForeColor="Blue" ControlToValidate="txtgioitinh"></asp:RequiredFieldValidator>
        </div>
    <div>
            <label>Ngày sinh:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </label>
            &nbsp;<asp:TextBox ID="txtngaysinh" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Ngày sinh không được bỏ trống" ForeColor="Blue" ControlToValidate="txtngaysinh"></asp:RequiredFieldValidator>
        </div>
    <div>
            <label>Lớp:   <labe&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtlop" runat="server" ></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="lớp không được bỏ trống" ForeColor="Blue" ControlToValidate="txtlop"></asp:RequiredFieldValidator>
        </div>
         <div>
            <label>Khoa:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </label>&nbsp;<asp:TextBox ID="txtkhoa" runat="server" ></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="khoa không được bỏ trống" ForeColor="Blue" ControlToValidate="txtkhoa"></asp:RequiredFieldValidator>
        </div>
        <div>
            <asp:Button ID="btnthem" runat="server" OnClick="btnthem_Click" Text="Thêm sinh viên" />
            <asp:Button ID="btnxoa" runat="server" OnClick="btnxoa_Click" Text="Xóa sinh viên" />
            <asp:Button ID="btncapnhat" runat="server" OnClick="btncapnhat_Click" Text="cập nhật sinh viên" />
            <asp:Button ID="btntim" runat="server" OnClick="btntim_Click" Text="tìm kiếm sinh viên" />
            <br />
            <div>
                <div>
                    <div>
            <br />
        |
                        <asp:Label ID="Label1" runat="server" Text="Danh sách sinh viên :"></asp:Label>
                        <br />
                        <asp:GridView ID="GridView1" runat="server" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                        </asp:GridView>
    </div>
    </form>
</body>
</html>
