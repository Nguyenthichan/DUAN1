<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="QUANLYSINHVIEN.aspx.cs" Inherits="NET3951050040.QUANLYSINHVIEN" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <h1>QUẢN LÝ SINH VIÊN</h1>
    <table style="width: 669px">
    
            <tr>

                <td colspan="2" align="left" class="tieude">

                    <asp:Label ID="Label3" runat="server" Text="Thông tin sinh viên :"></asp:Label>

                </td>

            </tr>

            <tr>

                <td>

                     <asp:Label ID="Label1" runat="server" Text="Mã sinh viên:"></asp:Label>

                </td>

                <td>

                     <input id="txtmasv" type="text" runat="server" />

                </td>

            </tr>

            <tr>

                <td>

                    <asp:Label ID="Label2" runat="server" Text="Tên sinh viên:"></asp:Label></td>

                <td><input id="txttensv" type="text" runat="server" /></td>

            </tr>
            <tr>

                <td>

                    <asp:Label ID="Label4" runat="server" Text="Giới tính:"></asp:Label></td>

                <td>
                    <asp:DropDownList ID="ddlgioitinh" runat="server">
                    </asp:DropDownList>
                </td>

            </tr>
            <tr>

                <td>

                    <asp:Label ID="Label5" runat="server" Text="Địa chỉ:"></asp:Label></td>

                <td><input id="txtdiachi" type="text" runat="server" /></td>

            </tr>
            <tr>

                <td>

                    <asp:Label ID="Label6" runat="server" Text="Ngày sinh:"></asp:Label></td>

                <td><input id="txtngaysinh" type="text" runat="server" /></td>

            </tr>
            <tr>

                <td>

                    <asp:Label ID="Label7" runat="server" Text="Lớp:"></asp:Label></td>

                <td><input id="txtlop" type="text" runat="server" /></td>

            </tr>
            <tr>

                <td>

                    <asp:Label ID="Label8" runat="server" Text="Khoa:"></asp:Label></td>

                <td><input id="txtkhoa" type="text" runat="server" /></td>

            </tr>
         <tr>

                
                <td colspan="2" align="center">

                    <asp:Button class="btn" ID="btnthem" runat="server"  OnClick="btnthem_Click" Text="Thêm" Height="40px" Width="80px" />
                    <asp:Button class="btn" ID="btnsua" runat="server"  OnClick="btnsua_Click" Text="Sửa" Height="40px" Width="80px" />
                    <asp:Button class="btn" ID="btnxoa" runat="server"  OnClick="btnxoa_Click" Text="Xóa" Height="40px" Width="80px" />
                    <asp:Button class="btn" ID="btnthoat" runat="server"  OnClick="btnthoat_Click" Text="Thoát" Height="40px" Width="80px" />

                    <asp:Label ID="lbthongbao" runat="server"></asp:Label>
                    <br />
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False">
                        <Columns>
                            <asp:BoundField HeaderText="Mã sinh viên" />
                            <asp:BoundField HeaderText="Tên sinh viên" />
                            <asp:BoundField HeaderText="Giới tính" />
                            <asp:BoundField HeaderText="Địa chỉ" />
                            <asp:BoundField HeaderText="Ngày sinh" />
                            <asp:BoundField HeaderText="Lớp" />
                            <asp:BoundField HeaderText="Khoa" />
                            <asp:BoundField />
                        </Columns>
                    </asp:GridView>

                </td>


            </tr>
        
      </table>     
    </div>
    </form>
</body>
</html>
