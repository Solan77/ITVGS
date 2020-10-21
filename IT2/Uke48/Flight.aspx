<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Flight.aspx.cs" Inherits="Flight" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        body {
            margin: 0;
            
        }
        .boks1 {
            width: 50%;
            float: left;
        }
        .bilde {
            width: 5%;
            position: absolute;
        }
    </style>
</head>
<body>
    <div class="boks1">
        <asp:Image CssClass="bilde" ID="Image1" runat="server" ImageUrl="~/BG1.jpg" />
    </div>
    <form id="form1" runat="server">
        <div>
            <asp:ImageMap ID="ImageMap1" runat="server" ImageUrl="~/FlightMap.gif" HotSpotMode="PostBack" OnClick="ImageMap1_Click">
                <asp:CircleHotSpot AlternateText="London" Radius="10" X="728" Y="151" PostBackValue="0" />
                <asp:CircleHotSpot AlternateText="New York" Radius="10" X="385" Y="224" PostBackValue="1" />
                <asp:CircleHotSpot AlternateText="Chicago" Radius="10" X="346" Y="222" PostBackValue="2" />
                <asp:CircleHotSpot AlternateText="Miami" Radius="10" X="363" Y="258" PostBackValue="3" />
                <asp:CircleHotSpot AlternateText="L.A" Radius="10" X="181" Y="237" PostBackValue="4" />
            </asp:ImageMap>
        </div>
        <asp:Label ID="labsvar" runat="server"></asp:Label>
    </form>
</body>
</html>
