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
        <a href="Oppg1T.html">Oppgave 1A</a>
        <a href="Oppg1B.aspx">Oppgave 1B</a>
        <a class="aktiv" href="Oppg2.aspx">Oppgave 2</a>
    </div>
    <form id="form1" runat="server">
        <div class="side">
            <div class="boksb">
                <asp:ImageMap ID="imm1" CssClass="imgm" runat="server" ImageUrl="~/Kart.png" HotSpotMode="PostBack" OnClick="imm1_Click">
                    <asp:CircleHotSpot AlternateText="Gjendesheim" Radius="10" X="583" Y="316" PostBackValue="0" />
                    <asp:CircleHotSpot AlternateText="Glitterheim" Radius="10" X="401" Y="43" PostBackValue="1" />
                    <asp:CircleHotSpot AlternateText="Memurubu" Radius="10" X="399" Y="323" PostBackValue="2" />
                    <asp:CircleHotSpot AlternateText="Gjendebu" Radius="10" X="254" Y="405" PostBackValue="3" />
                    <asp:CircleHotSpot AlternateText="Leirvassbru" Radius="10" X="13" Y="201" PostBackValue="4" />
                    <asp:CircleHotSpot AlternateText="Spiterstulen" Radius="10" X="171" Y="43" PostBackValue="5" />
                    <asp:CircleHotSpot AlternateText="Olavsbu" Radius="10" X="41" Y="365" PostBackValue="6" />
                </asp:ImageMap>
            </div>

            <div class="boks1">
                <asp:Label ID="lab1" CssClass="tekstm" runat="server" Text="Velg den hytten du vil starte på"></asp:Label>
            </div>        
            <br />
            <div class="boks2"  id="boks2" runat="server">
                <asp:Label ID="labV" runat="server"></asp:Label>
                <br />
                <br />
                <asp:RadioButtonList ID="rblV" CssClass="rbl" runat="server" AutoPostBack="True" OnSelectedIndexChanged="rblV_SelectedIndexChanged"></asp:RadioButtonList>
            </div>

            <div class="boks3" id="boks3" runat="server">
                <asp:Label ID="lab2" runat="server"></asp:Label>
                <br />
                <br />
                <asp:Button ID="Btn1" CssClass="btn" Visible="false" runat="server" Text="Angre" OnClick="Btn1_Click" />
            </div>
        </div>

    </form>
</body>
</html>
