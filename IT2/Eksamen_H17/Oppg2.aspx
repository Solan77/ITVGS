<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Oppg2.aspx.cs" Inherits="Oppg1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        * {
            margin: 0;
        }
        .boks {
            width: 100%;
            margin: auto; 
            text-align: center;
        }
        .bilde {
            width: 9%;
            margin: auto;
            text-align: center;
        }
        .bild {
            width: 100%;
            display: flex;
            flex-wrap: wrap;
            flex-direction: row;
        }
        .bild img {
            width: 10%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:DropDownList ID="ddl1" runat="server">
                <asp:ListItem>R&#248;dt</asp:ListItem>
                <asp:ListItem>SV</asp:ListItem>
                <asp:ListItem>A</asp:ListItem>
                <asp:ListItem>SP</asp:ListItem>
                <asp:ListItem>MDG</asp:ListItem>
                <asp:ListItem>KrF</asp:ListItem>
                <asp:ListItem>V</asp:ListItem>
                <asp:ListItem>H</asp:ListItem>
                <asp:ListItem>FrP</asp:ListItem>
                <asp:ListItem>PIR</asp:ListItem>
            </asp:DropDownList>
            <asp:TextBox ID="txt1" runat="server"></asp:TextBox>
            <br />
            <asp:Button ID="btn1" runat="server" Text="Registrer" OnClick="btn1_Click" />
            <br />
            <br />
            <asp:Label ID="lab1" runat="server" Text=""></asp:Label>
        </div>
        <div>
            <div class="boks">
                <asp:Image CssClass="bilde" ID="img1" runat="server" ImageUrl="~/Bilder/Graf.png" />
                <asp:Image CssClass="bilde" ID="img2" runat="server" ImageUrl="~/Bilder/Graf.png" />
                <asp:Image CssClass="bilde" ID="img3" runat="server" ImageUrl="~/Bilder/Graf.png" />
                <asp:Image CssClass="bilde" ID="img4" runat="server" ImageUrl="~/Bilder/Graf.png" />
                <asp:Image CssClass="bilde" ID="img5" runat="server" ImageUrl="~/Bilder/Graf.png" />
                <asp:Image CssClass="bilde" ID="img6" runat="server" ImageUrl="~/Bilder/Graf.png" />
                <asp:Image CssClass="bilde" ID="img7" runat="server" ImageUrl="~/Bilder/Graf.png" />
                <asp:Image CssClass="bilde" ID="img8" runat="server" ImageUrl="~/Bilder/Graf.png" />
                <asp:Image CssClass="bilde" ID="img9" runat="server" ImageUrl="~/Bilder/Graf.png" />
                <asp:Image CssClass="bilde" ID="img10" runat="server" ImageUrl="~/Bilder/Graf.png" />
            </div>
            <div class="bild">
                <img src="Bilder/ap.png" />
                <img src="Bilder/frp.jpg" />
                <img src="Bilder/hoyre.png" />
                <img src="Bilder/krf.jpg" />
                <img src="Bilder/miljopartiet.png" />
                <img src="Bilder/piratpartiet.png" />
                <img src="Bilder/raudt.png" />
                <img src="Bilder/sp.png" />
                <img src="Bilder/sv.jpg" />
                <img src="Bilder/venstre.png" />
            </div>
        </div>
    </form>
</body>
</html>
