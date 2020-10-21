<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Loop.aspx.cs" Inherits="Loop" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:TextBox ID="txtSlutt" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="btnLoop" runat="server" Text="For løkke" OnClick="btnLoop_Click" />
            <br />
            <br />
            <asp:TextBox ID="txtTall" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="btnWhile" runat="server" Text="Mens løkke" OnClick="btnWhile_Click" />
            <br />
            <br />
            <asp:Label ID="labUt" runat="server"></asp:Label>
        </div>
    </form>
</body>
</html>
