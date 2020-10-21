<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Maaat.aspx.cs" Inherits="Maaat" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:CheckBoxList ID="ccl1" runat="server">
                <asp:ListItem Value="99">Pinnekj&#248;tt</asp:ListItem>
                <asp:ListItem Value="11">Surk&#229;l</asp:ListItem>
                <asp:ListItem Value="27">R&#248;dbetsalat</asp:ListItem>
                <asp:ListItem Value="69">Kj&#248;ttboller</asp:ListItem>
                <asp:ListItem Value="39">Stekte poteter</asp:ListItem>
                <asp:ListItem Value="9">Kokte poteter</asp:ListItem>
                <asp:ListItem Value="15">Potetmos</asp:ListItem>
                <asp:ListItem Value="59">Julep&#248;lse</asp:ListItem>
                <asp:ListItem Value="69">Ribbe</asp:ListItem>
                <asp:ListItem Value="39">Juleskinke</asp:ListItem>
                <asp:ListItem Value="7">Kokte Gr&#248;nnsaker</asp:ListItem>
            </asp:CheckBoxList>
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" />
            <br />
            <asp:Label ID="lab1" runat="server"></asp:Label>
        </div>
    </form>
</body>
</html>
