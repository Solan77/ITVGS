<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Furu.aspx.cs" Inherits="Furu" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            År:<asp:DropDownList ID="ddlFuru1" runat="server">
                <asp:ListItem Value="20">1915</asp:ListItem>
                <asp:ListItem Value="31">1950</asp:ListItem>
                <asp:ListItem Value="53">1970</asp:ListItem>
                <asp:ListItem Value="89">1990</asp:ListItem>
                <asp:ListItem Value="102">1992</asp:ListItem>
                <asp:ListItem Value="117">2000</asp:ListItem>
            </asp:DropDownList>
            <br />
            <br />
            År:<asp:DropDownList ID="ddlFuru2" runat="server">
                <asp:ListItem Value="20">1915</asp:ListItem>
                <asp:ListItem Value="31">1950</asp:ListItem>
                <asp:ListItem Value="53">1970</asp:ListItem>
                <asp:ListItem Value="89">1990</asp:ListItem>
                <asp:ListItem Value="102">1992</asp:ListItem>
                <asp:ListItem Value="117">2000</asp:ListItem>
            </asp:DropDownList>
            <br />
        </div>
        <p>
            <asp:Button ID="btnKnapp" runat="server" OnClick="btnKnapp_Click" Text="Button" />
        </p>
        <asp:Label ID="labTekst" runat="server"></asp:Label>
    </form>
</body>
</html>
