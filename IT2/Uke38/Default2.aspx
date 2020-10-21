<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default2.aspx.cs" Inherits="Default2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
    </style>
</head>
<body>
    <p>
        <br />
        Musikk Quiz</p>
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td>1. Hvem skrev bohemian rhapsody?<br />
                    <asp:RadioButtonList ID="rblSpors1" runat="server">
                        <asp:ListItem>Queen</asp:ListItem>
                        <asp:ListItem>Elvis</asp:ListItem>
                        <asp:ListItem>Kygo</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
            </tr>
            <tr>
                <td>2. Hvem lagde Firestone?<br />
                    <asp:RadioButtonList ID="rblSpors2" runat="server">
                        <asp:ListItem>Kygo</asp:ListItem>
                        <asp:ListItem>Avicii</asp:ListItem>
                        <asp:ListItem>Alan Walker</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
            </tr>
            <tr>
                <td>3. Hvilken sang?
                    <asp:Button ID="btnSang" runat="server" Height="19px" Text="Spill av" OnClick="btnSang_Click" />
                    <br />
                    <asp:RadioButtonList ID="rblSpors3" runat="server">
                        <asp:ListItem>Faded</asp:ListItem>
                        <asp:ListItem>Levels</asp:ListItem>
                        <asp:ListItem>Stargazing</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
            </tr>
        </table>
        <div>
            <asp:Label ID="labSvar" runat="server"></asp:Label>
        </div>
        <asp:Button ID="btnSvar" runat="server" Text="Svar her" OnClick="btnSvar_Click" />
            <asp:Label ID="labRiktig" runat="server"></asp:Label>
    </form>
</body>
</html>
