<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Oppg1.aspx.cs" Inherits="Oppg1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="StyleSheet.css" rel="stylesheet" />
</head>
<body>
    <div class="nav">
        <a href="Indez.html">Hjem</a>
        <a class="aktiv" href="Oppg1.aspx">Oppgave 1</a>
        <a href="Oppg2.aspx">Oppgave 2</a>
        <a href="Oppg3.aspx">Oppgave 3</a>
    </div> 

    <form id="form1" runat="server">
        <div class="boks1">
            <asp:ImageMap ID="imgm1" runat="server" HotSpotMode="PostBack" ImageUrl="~/Bilder/stortkartostfold.gif" OnClick="imgm1_Click">
                <asp:CircleHotSpot AlternateText="Halden" Radius="25" X="345" Y="528" PostBackValue="0" />
                <asp:CircleHotSpot AlternateText="Fredrikstad" Radius="25" X="163" Y="446" PostBackValue="1" />
            </asp:ImageMap>
        </div>
    </form>
</body>
</html>
