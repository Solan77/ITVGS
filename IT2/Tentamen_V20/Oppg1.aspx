<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Oppg1.aspx.cs" Inherits="Oppg1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Konkurranser</title>
    <link href="StyleSheet.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="nav">
            <a class="aktiv" href="Oppg1.aspx">Oppgave 1</a>
            <a href="Oppg2.aspx">Oppgave 2</a>
            <a href="Oppg3.aspx">Oppgave 3</a>
        </div>
        <div class="boks">
            Hva er alderen din?: 
            <asp:TextBox ID="txt1" runat="server" AutoCompleteType="Disabled"></asp:TextBox>
            <br />
            <br />
            Hvilken konkuranse vil du delta i?: 
            <asp:DropDownList ID="ddl1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddl1_SelectedIndexChanged">
                <asp:ListItem>---Velg en konkuranse---</asp:ListItem>
                <asp:ListItem Value="11">Barnesanger</asp:ListItem>
                <asp:ListItem Value="11">Ville dyr - lykkehjul</asp:ListItem>
                <asp:ListItem Value="17">Pop &amp; Rock</asp:ListItem>
                <asp:ListItem Value="17">Bilmerker</asp:ListItem>
                <asp:ListItem Value="111">Quiz</asp:ListItem>
                <asp:ListItem Value="111">Historie i v&#229;rt &#229;rhundre</asp:ListItem>
            </asp:DropDownList>
            <br />
            <br />
            <asp:Label ID="lab1" runat="server" Text=""></asp:Label>
        </div>
        <div class="bilder">
            <asp:Image ID="Image1" runat="server" ImageUrl="~/Bildar/Flyt.jpg" />
        </div>
    </form>
    <footer class="bunn">
        <h4>Av: Birk</h4>
    </footer>
</body>
</html>
