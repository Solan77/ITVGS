<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Oppgave2.aspx.cs" Inherits="Oppgave2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="stilark.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Oppgave 2</h1>
        </div>
        <asp:DropDownList ID="ddlArrangement" runat="server">
            <asp:ListItem>-- velg arrangement --</asp:ListItem>
            <asp:ListItem>Trondheim kammermusikkfestival: Fabelaktig formiddag</asp:ListItem>
            <asp:ListItem>Spill opp!</asp:ListItem>
            <asp:ListItem>Onsdagskonsert</asp:ListItem>
            <asp:ListItem>Juiogat: Joik for folk</asp:ListItem>
        </asp:DropDownList>
        <br />
        <br />
        Antall voksne: <asp:TextBox ID="txtVoksne" runat="server"></asp:TextBox>
        <br />
        Antall barn:
        <asp:TextBox ID="txtBarn" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="btnKnapp" runat="server" OnClick="btnKnapp_Click" Text="Regn ut" />
        <br />
        <br />
        <asp:Label ID="labSvar" runat="server"></asp:Label>
    </form>
</body>
</html>
