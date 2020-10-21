<%@ Page Language="C#" AutoEventWireup="true" CodeFile="promille.aspx.cs" Inherits="promille" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:DropDownList ID="ddpPromille1" runat="server">
                <asp:ListItem Value="9631">2002</asp:ListItem>
                <asp:ListItem Value="8593">2003</asp:ListItem>
                <asp:ListItem Value="8363">2004</asp:ListItem>
                <asp:ListItem Value="8128">2005</asp:ListItem>
                <asp:ListItem Value="8514">2006</asp:ListItem>
                <asp:ListItem Value="8534">2007</asp:ListItem>
            </asp:DropDownList>
            <br />
            <br />
            <asp:DropDownList ID="ddpPromille2" runat="server">
                <asp:ListItem Value="9631">2002</asp:ListItem>
                <asp:ListItem Value="8593">2003</asp:ListItem>
                <asp:ListItem Value="8363">2004</asp:ListItem>
                <asp:ListItem Value="8128">2005</asp:ListItem>
                <asp:ListItem Value="8514">2006</asp:ListItem>
                <asp:ListItem Value="8534">2007</asp:ListItem>
            </asp:DropDownList>
            <br />
            <br />
            <asp:Button ID="btnKnapp" runat="server" OnClick="btnKnapp_Click" Text="Button" />
            <br />
            <br />
            <asp:Label ID="labTekst" runat="server"></asp:Label>
        </div>
    </form>
</body>
</html>
