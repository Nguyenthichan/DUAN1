<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SANPHAMKEO.aspx.cs" Inherits="baithuchanhso2.SANPHAMKEO" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div class="main">
        <table style="width: 100%;" border="1">
            <tr>
                <td colspan="3" style="background-color:#F5DA81; font-weight:bold">CHỌN CÁC SẢN PHẨM BẠN THÍCH</td>
            </tr>
            <tr style="font-weight:bold; color:#0026ff">
                <td class="auto-style1">Danh sách sản phẩm</td>
                <td class="auto-style3">Số lượng</td>
                <td>Sản phẩm được chọn</td>
            </tr>
            <tr style="background-color:#F5DA81">
                <td class="auto-style2">
                    <asp:CheckBox ID="chkTCTC" runat="server" Text="Kẹo trái cây thập cẩm" OnCheckedChanged="chkTCTC_CheckedChanged" /><br />
                    <asp:CheckBox ID="chkNho" runat="server" Text="Kẹo nho" /><br />
                    <asp:CheckBox ID="chkTao" runat="server" Text="Kẹo táo" /><br />
                    <asp:CheckBox ID="chkSTao" runat="server" Text="Sôcôla táo" /><br />
                    <asp:CheckBox ID="chkSDau" runat="server" Text="Kẹo sôcôla đậu phộng" /><br />
                    <asp:CheckBox ID="chkCSua" runat="server" Text="Kẹo coffe sữa" /><br />
                    <asp:CheckBox ID="chkSTC" runat="server" Text="Sôcôla thập cẩm có nhân" />
                </td>
                <td class="auto-style3">
                    <asp:Label ID="lblSLuong" runat="server"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtDSSP" runat="server" TextMode="MultiLine" Rows="6" Height="169px" Width="332px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td colspan="3" style="background-color:#F5DA81">
                    <asp:Button ID="btnReset" runat="server" Text="Bắt đầu chọn lại" />
                </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
