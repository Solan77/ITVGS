<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Oppg3.aspx.cs" Inherits="Oppg3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:DropDownList ID="ddl1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddl1_SelectedIndexChanged">
                <asp:ListItem>---Velg ferie---</asp:ListItem>
                <asp:ListItem>Jul</asp:ListItem>
                <asp:ListItem>Vinterferie</asp:ListItem>
                <asp:ListItem>P&#229;ske</asp:ListItem>
            </asp:DropDownList>
            <br />
            <br />
            <asp:DropDownList Visible="false" ID="ddl2" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddl2_SelectedIndexChanged"></asp:DropDownList>
            <br />
            <br />
            <asp:Label ID="lab1" runat="server"></asp:Label>
            <br />
            <br />
            <asp:Button Visible="false" ID="btn1" runat="server" Text="Book" OnClick="btn1_Click" />
            <br />
            <br />
            <asp:Label ID="lab2" runat="server"></asp:Label>
        </div>
    </form>
</body>
</html>
