<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Oppg2.aspx.cs" Inherits="Oppg2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="StyleSheet.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="nav">
            <a href="Idez.html">Hjem</a>
            <a href="Oppg1.aspx">Oppgave 1</a>
            <a class="aktiv" href="Oppg2.aspx">Oppgave 2</a>
        </div>

        <div class="boks">
            <asp:DropDownList CssClass="ddl" ID="ddl1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddl1_SelectedIndexChanged">
                <asp:ListItem>Velg muskelgruppen du vil trene</asp:ListItem>
                <asp:ListItem Value="0">Armer</asp:ListItem>
                <asp:ListItem Value="1">Skuldre</asp:ListItem>
                <asp:ListItem Value="2">Ben</asp:ListItem>
                <asp:ListItem Value="3">Rygg</asp:ListItem>
                <asp:ListItem Value="4">Bryst</asp:ListItem>
            </asp:DropDownList>
            <br />
            <br />
            <asp:Label ID="lab1" runat="server"></asp:Label>
            <br />
            <asp:RadioButtonList CssClass="rbl" ID="rbl1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="rbl1_SelectedIndexChanged"></asp:RadioButtonList>
            <br />
            <br />
            <asp:Label ID="lab2" runat="server"></asp:Label>
        </div>    
        <div class="bunn">
            <h4>Av: Birk</h4>
        </div>
    </form>
</body>
</html>
