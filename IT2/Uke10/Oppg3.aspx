<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Oppg3.aspx.cs" Inherits="Oppg3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="StyleSheet.css" rel="stylesheet" />
</head>
<body class="s3">
     <div class="nav">
        <a href="Indez.html">Hjem</a>
        <a href="Oppg1.aspx">Oppgave 1</a>
        <a href="Oppg2.aspx">Oppgave 2</a>
        <a class="aktiv" href="Oppg3.aspx">Oppgave 3</a>
    </div> 
    <form id="form1" runat="server" class="boks">
        <div class="boks2">
            <asp:ImageMap ID="img1" runat="server" HotSpotMode="PostBack" ImageUrl="~/Bilder/stortkartostfold.gif" OnClick="img1_Click">
                <asp:CircleHotSpot PostBackValue="0" Radius="25" X="271" Y="143" />
                <asp:CircleHotSpot PostBackValue="1" Radius="25" X="353" Y="506" />
                <asp:CircleHotSpot PostBackValue="2" Radius="25" X="205" Y="466" />
                <asp:CircleHotSpot PostBackValue="3" Radius="25" X="45" Y="249" />
                <asp:CircleHotSpot PostBackValue="4" Radius="25" X="428" Y="257" />
            </asp:ImageMap>
        </div>
        <div class="boks2 ned">
            <asp:Button CssClass="btn b1" ID="btn1" runat="server" Text="Reset" OnClick="btn1_Click" />
            <br />
            <br />
            <asp:Label ID="lab1" runat="server"></asp:Label>
        </div>
    </form>
</body>
</html>
