<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Oppg2.aspx.cs" Inherits="Oppg2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:DropDownList ID="DropDownList1" runat="server">
                <asp:ListItem>--Velg spr&#229;k--</asp:ListItem>
                <asp:ListItem>Russisk</asp:ListItem>
                <asp:ListItem>Italiensk</asp:ListItem>
                <asp:ListItem>Amerikansk</asp:ListItem>
            </asp:DropDownList>
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" />
            <br />
            <br />
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        </div>
    </form>
</body>
</html>
