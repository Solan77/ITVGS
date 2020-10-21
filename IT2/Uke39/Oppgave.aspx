<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Oppgave.aspx.cs" Inherits="Oppgave" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Oppgaven</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" />
            <asp:Button ID="Button2" runat="server" Text="Button" OnClick="Button2_Click" />
            <asp:Button ID="Button3" runat="server" Text="Button" OnClick="Button3_Click" />
            <asp:Button ID="Button4" runat="server" Text="Button" OnClick="Button4_Click" />
            <asp:Button ID="Button5" runat="server" Text="Button" OnClick="Button5_Click" />
            <br />
            <br />
            <asp:Label ID="lab1" runat="server" Text=""></asp:Label>
        </div>
    </form>
</body>
</html>
