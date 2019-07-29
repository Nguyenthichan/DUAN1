<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="chan39a.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:Label ID="lbLGUESTBOOK" runat="server" ForeColor="#FF3300" Text="GUESTBOOK"></asp:Label>
    <div>
    
        <asp:Label ID="lbltieude" runat="server" Text="Tiêu đề:"></asp:Label>
        <asp:TextBox ID="txttieude" runat="server" style="margin-left: 61px"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="lblhoten" runat="server" Text="Họ tên:"></asp:Label>
        <asp:TextBox ID="txthoten" runat="server" style="margin-left: 63px"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="lblemail" runat="server" Text="Email:"></asp:Label>
        <asp:TextBox ID="txtemail" runat="server" style="margin-left: 70px"></asp:TextBox>
        <br />
        <asp:Label ID="lblnoidung" runat="server" Text="Nội dung:"></asp:Label>
        <asp:TextBox ID="txtnoidung" runat="server" style="margin-left: 47px"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="btngnd" runat="server" style="margin-left: 265px" Text="Gửi nội dung" Width="233px" OnClick="btngnd_Click" />
        <br />
        <asp:Button ID="btndscm" runat="server" Text="DANH SÁCH COMMENT" Width="772px" />
    
        <br />
        <Span id="EntryComment" runat="server"/>
    
    </div>
    </form>
</body>
</html>
