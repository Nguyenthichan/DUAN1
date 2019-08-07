<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Dangkyphong.aspx.cs" Inherits="baithuchanh.Dangkyphong" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 91px;
        }
        .auto-style2 {
            width: 353px;
        }
        .auto-style3 {
            width: 91px;
            height: 30px;
        }
        .auto-style4 {
            width: 353px;
            height: 30px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div style="margin-left: 240px">
    
        ĐĂNG KÝ PHÒNG</div>
        <table style="width: 84%;">
            <tr>
                <td class="auto-style1">
                    <asp:Label ID="lbhoten" runat="server" Text="Họ tên"></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:TextBox ID="txthoten" runat="server" Width="272px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvhoten" runat="server" ErrorMessage="&quot;nhập họ tên&quot;" ControlToValidate="txthoten">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:Label ID="lbcoquan" runat="server" Text="Cơ quan"></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:TextBox ID="txtcoquan" runat="server" Width="271px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvcoquan" runat="server" ErrorMessage="&quot;nhập cơ quan&quot;" ControlToValidate="txtcoquan">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:Label ID="lbemail" runat="server" Text="Email"></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:TextBox ID="txtemail" runat="server" Width="270px"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="revemail" runat="server" ErrorMessage="&quot;nhập địa chỉ Email&quot;" ControlToValidate="txtemail" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">**</asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:Label ID="lbmatkhau" runat="server" Text="Mật khẩu"></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:TextBox ID="txtmatkhau" runat="server" Width="272px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvmatkhau" runat="server" ErrorMessage="&quot;nhập mật khẩu&quot;" ControlToValidate="txtmatkhau">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="lbnhaplaimatkhau" runat="server" Text="Nhập lại mật khẩu"></asp:Label>
                </td>
                <td class="auto-style4">
                    <asp:TextBox ID="txtnhaplaimatkhau" runat="server" Width="270px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvnhaplaimatkhau" runat="server" ErrorMessage="&quot;nhập mật khẩu lần hai&quot;" ControlToValidate="txtnhaplaimatkhau">*</asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="cvmatkhaukhongkhop" runat="server" ErrorMessage="&quot;mật khẩu không khớp&quot;" ControlToCompare="txtmatkhau" ControlToValidate="txtnhaplaimatkhau">***</asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:Label ID="lbngaycheckin" runat="server" Text="Ngày check in"></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:TextBox ID="txtngaycheckin" runat="server" Width="270px"></asp:TextBox>
                    <asp:CompareValidator ID="cvngaycheckin" runat="server" ErrorMessage="&quot;nhập ngày check in&quot;" ControlToValidate="txtngaycheckin" Operator="DataTypeCheck">***</asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:Label ID="lbsongayo" runat="server" Text="Số ngày ở"></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:TextBox ID="txtsongayo" runat="server" Width="271px"></asp:TextBox>
                    <asp:CompareValidator ID="cvsongayo" runat="server" ErrorMessage="&quot;nhập con số ngày&quot;" ControlToValidate="txtsongayo" Operator="DataTypeCheck">***</asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:Label ID="lbloaiphong" runat="server" Text="Loại phòng"></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:DropDownList ID="DropDownListloaiphong" runat="server" Height="17px" Width="278px">
                        <asp:ListItem Value="1">phòng đơn</asp:ListItem>
                        <asp:ListItem Value="2">Phòng đôi</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td class="auto-style2">
                    <asp:Button ID="btndangky" runat="server" OnClick="btndangky_Click" Text="Đăng ký" Width="79px" />
                    <asp:Label ID="lbthongbao" runat="server"></asp:Label>
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
