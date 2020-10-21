<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Torsdag.aspx.cs" Inherits="Torsdag" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        .kart {
            cursor: cell;
            margin: auto;
            align-content: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:ImageMap CssClass="kart" ID="ImageMap1" runat="server" ImageUrl="~/Tordagen/Wally1.jpg" HotSpotMode="PostBack" OnClick="ImageMap1_Click" ImageAlign="Middle">
                <asp:CircleHotSpot PostBackValue="1" Radius="15" X="175" Y="160" AlternateText="Rikitg" />
                <asp:CircleHotSpot PostBackValue="2" Radius="15" X="748" Y="296" AlternateText="Rikitg" />
            </asp:ImageMap>
        </div>
    </form>
</body>
</html>
