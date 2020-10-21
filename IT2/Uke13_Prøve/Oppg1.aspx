<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Oppg1.aspx.cs" Inherits="Oppg1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="StyleSheet.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
         <div class="nav">
            <a href="Idez.html">Hjem</a>
            <a class="aktiv" href="Oppg1.aspx">Oppgave 1</a>
            <a href="Oppg2.aspx">Oppgave 2</a>
        </div>
        <div class="boks">
            <asp:DropDownList CssClass="ddl" ID="ddl1" runat="server">
                <asp:ListItem>Velg aktivitet</asp:ListItem>
                <asp:ListItem Value="814">Aerobeics</asp:ListItem>
                <asp:ListItem Value="236">Bordtennis</asp:ListItem>
                <asp:ListItem Value="510">Fotball</asp:ListItem>
                <asp:ListItem Value="244">Golf</asp:ListItem>
                <asp:ListItem Value="666">Jogging</asp:ListItem>                
            </asp:DropDownList>
            <br />
            <br />
            Velg intensitet:
            <br />
            <asp:RadioButtonList CssClass="rbl" ID="rbl1" runat="server">
                <asp:ListItem Value="0,8">Lavt</asp:ListItem>
                <asp:ListItem Value="1">Middels</asp:ListItem>
                <asp:ListItem Value="1,2">Høyt</asp:ListItem>
            </asp:RadioButtonList>
            <br />
            Oppgi varighet på treningen i minutter:
            <br />
            <asp:TextBox CssClass="txt" ID="txt1" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Button CssClass="btn" ID="btn1" runat="server" Text="Beregn kaloriforbruk" OnClick="btn1_Click" />
            <br />
            <br />
            <asp:Label ID="lab1" runat="server"></asp:Label>
        </div>
        <div class="bunn">
            <h4>Av: Birk</h4>
        </div>
    </form>
</body>
</html>
