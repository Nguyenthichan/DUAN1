<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="QUANLY.aspx.cs" Inherits="QUANLYSINHVIEN.QUANLY" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Trang quản lý sinh viên</title>
    <style type="text/css">
        .table {}
    </style>
</head>
<body>
    <head runat="server">
    <title>Đăng ký</title>
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
        <label>Tên sinh viên:&nbsp;&nbsp;&nbsp; </label>
            &nbsp;<asp:TextBox ID="txttensv" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Tên không được bỏ trống" ForeColor="Blue" ControlToValidate="txttensv"></asp:RequiredFieldValidator>
        </div>
        <div>
            <label>Giới tính:<label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtgioitinh" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Giới tính không được bỏ trống" ForeColor="Blue" ControlToValidate="txtgioitinh"></asp:RequiredFieldValidator>
        </div>
        <div>
            <label>Ngày sinh:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </label>
            &nbsp;<asp:TextBox ID="txtngaysinh" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Ngày sinh không được bỏ trống" ForeColor="Blue" ControlToValidate="txtngaysinh"></asp:RequiredFieldValidator>
        </div>
        <div>
            <label>Địa chỉ:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="txtdiachi" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="Địa chỉ không được bỏ trống" ForeColor="Blue" ControlToValidate="txtdiachi"></asp:RequiredFieldValidator>
        </div>
        <div>
            <label>Lớp:</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtlop" runat="server" ></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Lớp không được bỏ trống" ForeColor="Blue" ControlToValidate="txtlop"></asp:RequiredFieldValidator>
        </div>
         <div>
            <label>Khoa:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </label>&nbsp;<asp:TextBox ID="txtkhoa" runat="server" ></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Khoa không được bỏ trống" ForeColor="Blue" ControlToValidate="txtkhoa"></asp:RequiredFieldValidator>
        </div>
        <div>
            <asp:Button ID="btnthem" runat="server" OnClick="btnthem_Click" Text="Thêm sinh viên" />
            <asp:Button ID="btntim" runat="server" OnClick="btntim_Click" Text="tìm kiếm sinh viên" />
            <br />
            <div>
                <div>
                    <div>
            <br />
        |
                        <asp:Label ID="Label1" runat="server" Text="Danh sách sinh viên :"></asp:Label>
                        <br />
                       <asp:GridView ID="data" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" CssClass="table" AllowPaging="True" OnPageIndexChanging="data_PageIndexChanging" OnRowCommand="data_RowCommand" Width="749px">
                        <Columns>
                            <asp:TemplateField>
                                <ItemTemplate>
                                    <asp:CheckBox ID="ckbChon" runat="server" />
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:BoundField HeaderText="Mã SV" DataField="masv" />
                            <asp:BoundField HeaderText="Tên SV" DataField="tensv" HeaderStyle-Width="100px" />
                            <asp:BoundField HeaderText="Giới tính" DataField="gioitinh" />    
                            <asp:BoundField HeaderText="Ngày sinh" DataField="ngaysinh" />
                            <asp:BoundField HeaderText="Địa chỉ" DataField="diachi" />
                            <asp:BoundField HeaderText="Lớp" DataField="lop" />
                            <asp:BoundField HeaderText="Khoa" DataField="khoa" />
                            <asp:TemplateField HeaderText="Tùy chọn">
                                <ItemTemplate>
                                    <asp:Button ID="btnsua" runat="server" CommandName="Sua" CommandArgument='<%# Eval("masv") %>' Text="Sửa"/> 
                                    <asp:Button ID="btnxoa" runat="server" CommandName="Xoa" CommandArgument='<%# Eval("masv") %>' CausesValidation="false" OnClientClick='return confirm("Bạn chắc chắn muốn xóa chứ?");' Text="Xóa"/>
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                        <PagerStyle HorizontalAlign = "Right" CssClass ="pagging" />
                    </asp:GridView>
    </div>
    </form>
</body>
</html>
