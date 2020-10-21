<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Oppgave_3.aspx.cs" Inherits="Oppgave_3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Button ID="btn1" runat="server" Text="Spill lyd" OnClick="btn1_Click" />
            <asp:Button ID="btn2" runat="server" Text="Spill igjen" OnClick="btn2_Click" />
            <br />
            <asp:ImageButton ID="imb1" runat="server" OnClick="imb1_Click" ImageUrl="~/Bilder/fagott.jpg" />
            <asp:ImageButton ID="imb2" runat="server" OnClick="imb2_Click" ImageUrl="~/Bilder/floyte.gif" />
            <asp:ImageButton ID="imb3" runat="server" OnClick="imb3_Click" ImageUrl="~/Bilder/klarinett.jpg" />
            <asp:ImageButton ID="imb4" runat="server" OnClick="imb4_Click" ImageUrl="~/Bilder/obo.jpg" />
            <asp:ImageButton ID="imb5" runat="server" OnClick="imb5_Click" ImageUrl="~/Bilder/valthorn.jpg" />
            <br />
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
        </div>
    </form>
</body>
</html>
