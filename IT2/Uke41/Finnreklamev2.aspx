<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Finnreklamev2.aspx.cs" Inherits="Finnreklamev2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="Trenger du det?"></asp:Label>
            <br />
            <br />
            <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                <asp:ListItem Selected="True">--</asp:ListItem>
                <asp:ListItem>Ja</asp:ListItem>
                <asp:ListItem>Nei</asp:ListItem>
            </asp:DropDownList>
        </div>
    </form>
</body>
</html>
