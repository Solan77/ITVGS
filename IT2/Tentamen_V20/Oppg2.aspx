<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Oppg2.aspx.cs" Inherits="Oppg2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Lykkehjul</title>
    <link href="StyleSheet.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="nav">
            <a href="Oppg1.aspx">Oppgave 1</a>
            <a class="aktiv" href="Oppg2.aspx">Oppgave 2</a>
            <a href="Oppg3.aspx">Oppgave 3</a>
        </div>
        <div class="boks1">
            <asp:ImageMap ID="imgm1" runat="server" HotSpotMode="PostBack" ImageUrl="~/Bildar/bakgrunnsB.png" OnClick="imgm1_Click1">
                <asp:RectangleHotSpot PostBackValue="1" Bottom="250" Left="415" Right="620" Top="165" />
            </asp:ImageMap>
        </div>
        <div class="boks2">
            <table class="auto-style2">
                <tr>
                    <td>Velg en kortfarge:</td>
                    <td>Trykk på pilen for å &quot;snurre&quot; lykkehjulet</td>
                </tr>
                <tr>
                    <td>
                        <asp:DropDownList ID="ddl1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddl1_SelectedIndexChanged">
                            <asp:ListItem Value="0">---Velg en kortsort---</asp:ListItem>
                            <asp:ListItem Value="1">Hjerter</asp:ListItem>
                            <asp:ListItem Value="2">Ruter</asp:ListItem>
                            <asp:ListItem Value="3">Spar</asp:ListItem>
                            <asp:ListItem Value="4">Kløver</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td>
                        <asp:Label ID="lab1" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
            </table>
            <br />
        </div>
    </form>
    <footer class="bunn">
        <h4>Av: Birk</h4>
    </footer>
</body>
</html>
