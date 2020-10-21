<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Oppgave 5.aspx.cs" Inherits="Oppgave_5" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .boks {
            width: 20%;
            margin: 10em auto;
            text-align: left;
        }
        h1 {
            text-align: center;
        }
        .txt {
            width: 80%;
        }
        .box {
            height: 3em;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="boks">
            <h1>Mensa Norge</h1>
            Navn:<asp:TextBox CssClass="txt" ID="txtNavn" runat="server"></asp:TextBox>
            <br />
            Alder:<asp:TextBox CssClass="txt" ID="txtAlder" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:ListBox CssClass="box" ID="lbxOkonomi" runat="server">
                <asp:ListItem Value="Ja">Har 250kr</asp:ListItem>
                <asp:ListItem Value="Nei">Har ikke 250kr</asp:ListItem>
            </asp:ListBox>
            <br />
            <br />
            IQ:<asp:RadioButtonList ID="rblIQ" runat="server">
                <asp:ListItem Value="Nei">Under 131</asp:ListItem>
                <asp:ListItem Value="Ja">Over 131</asp:ListItem>
            </asp:RadioButtonList>
            <br />
            <asp:Button ID="btnKnapp" runat="server" Text="Sjekk om du kan bli medlem" OnClick="btnKnapp_Click" />
            <br />
            <br />
            <asp:Label ID="labSvar" runat="server"></asp:Label>
        </div>
    </form>
</body>
</html>
