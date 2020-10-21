<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Oppgaver.aspx.cs" Inherits="Oppgaver" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Pengebeløp:
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <br />
            Antall år:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;   
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            <br />
            Rente:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            <br />
            <asp:Button ID="btnKnapp" runat="server" Text="Regn ut" OnClick="btnKnapp_Click" />
            <br />
            <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
        </div>
    </form>
</body>
</html>
