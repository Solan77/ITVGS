<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Innlevering.aspx.cs" Inherits="Innlevering" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Index</title>
    <link href="StyleSheet.css" rel="stylesheet" />
</head>
<body class="side1">

    <div class="logo">

    </div>

    <form id="form1" runat="server">
        <div class="boks">
               <asp:ImageMap ID="ImageMap1" runat="server" ImageUrl="Fil/kropp_Skalert.gif" ViewStateMode="Inherit" HotSpotMode="PostBack" OnClick="ImageMap1_Click">
                   <asp:CircleHotSpot AlternateText="Den brede ryggmuskelen" PostBackValue="1" Radius="10" X="334" Y="256" />
                   <asp:CircleHotSpot AlternateText="Armstrekken" PostBackValue="0" Radius="10" X="403" Y="178" />
                   <asp:CircleHotSpot AlternateText="Hofteleddstrekkerne" PostBackValue="2" Radius="10" X="337" Y="443" />
                   <asp:CircleHotSpot AlternateText="Knebøyerne" PostBackValue="3" Radius="10" X="328" Y="350" />
                   <asp:CircleHotSpot AlternateText="Ankelstrekkerne" PostBackValue="4" Radius="10" X="338" Y="546" />
                   <asp:RectangleHotSpot AlternateText="Den brede ryggmuskelen" Bottom="245" Left="406" PostBackValue="1" Right="562" Top="264" />
                   <asp:RectangleHotSpot AlternateText="Armstrekken" Bottom="138" Left="478" PostBackValue="0" Right="575" Top="119" />
                   <asp:RectangleHotSpot AlternateText="Hofteleddstrekkerne" Bottom="343" Left="401" PostBackValue="2" Right="540" Top="359" />
                   <asp:RectangleHotSpot AlternateText="Knebøyerne" Bottom="436" Left="400" PostBackValue="3" Right="481" Top="450" />
                   <asp:RectangleHotSpot AlternateText="Ankelstrekkerne" Bottom="529" Left="403" PostBackValue="4" Right="506" Top="546" />
               </asp:ImageMap>
        </div>
        <div id="animat" class="tekst" runat="server">
            <asp:Label ID="lab1" runat="server" Text=""></asp:Label>
        </div>

    </form>

</body>
</html>
