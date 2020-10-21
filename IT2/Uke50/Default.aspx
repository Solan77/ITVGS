<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:DropDownList ID="ddl1" runat="server">
                <asp:ListItem Value="-1">Vare</asp:ListItem>
                <asp:ListItem Value="0">Banan</asp:ListItem>
                <asp:ListItem Value="1">Eole</asp:ListItem>
                <asp:ListItem Value="2">P&#230;re</asp:ListItem>
            </asp:DropDownList>
            <br />
            <br />
            <asp:Button ID="btn1" runat="server" Text="1D" OnClick="btn1_Click" />
            <asp:Button ID="btn2" runat="server" Text="2D" OnClick="btn2_Click" />
            <br />
            <br />
            <asp:Label ID="lab1" runat="server" Text="Label"></asp:Label>
        </div>
    </form>
</body>
</html>
