<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Oppg2.aspx.cs" Inherits="Oppg2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="StyleSheet.css" rel="stylesheet" />

</head>
<body>
    <div class="nav">
        <a href="Indez.html">Hjem</a>
        <a href="Oppg1.aspx">Oppgave 1</a>
        <a class="aktiv" href="Oppg2.aspx">Oppgave 2</a>
        <a href="Oppg3.aspx">Oppgave 3</a>
    </div> 

    <form id="form1" runat="server">
        <div class="boks3">
            <asp:RadioButtonList ID="rbl1" CssClass="rbl" runat="server" AutoPostBack="True" OnSelectedIndexChanged="rbl1_SelectedIndexChanged">
                <asp:ListItem>Kort</asp:ListItem>
                <asp:ListItem>Lang</asp:ListItem>
            </asp:RadioButtonList>
            <br />
            <br />
            <asp:CheckBoxList ID="cbl1" runat="server"></asp:CheckBoxList>
            <br />
            <br />
            <asp:Button CssClass="btn" ID="btn1" runat="server" Text="Beregn Pris" OnClick="btn1_Click" />
            <br />
            <br />
            <asp:Label ID="lab1" runat="server"></asp:Label>
        </div>
    </form>
</body>
</html>
