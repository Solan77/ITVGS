<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Oppg1B.aspx.cs" Inherits="Oppg1B" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="StyleSheet.css" rel="stylesheet" />
</head>
<body>
    <div class="nav">
        <a href="Indez.html">Hjem</a>
        <a href="Oppg1T.html">Oppgave 1A</a>
        <a class="aktiv" href="Oppg1B.aspx">Oppgave 1B</a>
        <a href="Oppg2.aspx">Oppgave 2</a>
    </div>
    <div class="neste">
        <a href="Oppg1T.html">Oppgave 1A</a>
    </div>
    <form id="form1" runat="server">
        <div class="boks">
            <div class="bokst">
                Bredde:
                <asp:TextBox ID="txtB" CssClass="txt" runat="server"></asp:TextBox>
                <br />
                Høyde:
                <asp:TextBox ID="txtH" CssClass="txt" runat="server"></asp:TextBox>
            </div>
            <div class="bokss">
                <asp:Button ID="btn1" CssClass="btn" runat="server" Text="Regn ut" OnClick="btn1_Click" />
                <br />
                <asp:Image ID="img1" CssClass="img" runat="server" />
                <br />
                <asp:Label ID="labS" CssClass="tekst" runat="server"></asp:Label>
            </div>
        </div>
        <div class="bilde">
            <img src="flytdiagram.jpg" />
        </div>
    </form>
</body>
</html>
