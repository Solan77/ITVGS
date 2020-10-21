<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Oppgave1.aspx.cs" Inherits="Oppgave1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:RadioButtonList ID="RadioButtonList1" runat="server">
                <asp:ListItem Value="0">Elie Wiesel</asp:ListItem>
                <asp:ListItem Value="1">Oscar Arias S&#225;nchez</asp:ListItem>
                <asp:ListItem Value="2">United Nations Peacekeeping Forces</asp:ListItem>
                <asp:ListItem Value="3">The 14th Dalai Lama</asp:ListItem>
            </asp:RadioButtonList>
            <br />
            <asp:Button ID="Button1" runat="server" Text="Trykk" OnClick="Button1_Click" />
            <br />
            <br />
            <asp:Image ID="Image1" runat="server" />
        </div>
        <div>

        </div>
    </form>
</body>
</html>
