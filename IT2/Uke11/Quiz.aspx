<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Quiz.aspx.cs" Inherits="Quiz" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Q1: 1.	Hva betyr ordet Where?
            <asp:DropDownList ID="DropDownList1" runat="server">
                <asp:ListItem>Hvor</asp:ListItem>
                <asp:ListItem>Vi er</asp:ListItem>
                <asp:ListItem>Var</asp:ListItem>
                <asp:ListItem>Hvorfor</asp:ListItem>
            </asp:DropDownList>
            <br />
            <br />
            Q2: 2.	Hvilke(t) ord kan legges til her?
            How are…
            <asp:CheckBoxList ID="CheckBoxList1" runat="server">
                <asp:ListItem Value="1">You</asp:ListItem>
                <asp:ListItem Value="-1">John doing</asp:ListItem>
                <asp:ListItem Value="1">Things</asp:ListItem>
                <asp:ListItem Value="-1">The House</asp:ListItem>
                <asp:ListItem Value="-1">The wife</asp:ListItem>
            </asp:CheckBoxList>
            <br />
            <br />
            Q3: 3.	Spill av lydfilen «Oversetting.mp3» og velg riktig oversettelse:
            <br />
            <asp:Button ID="Button1" runat="server" Text="Spill Lyd" OnClick="Button1_Click" />
            <asp:RadioButtonList ID="RadioButtonList1" runat="server">
                <asp:ListItem>Hei, mitt navn er Tom</asp:ListItem>
                <asp:ListItem>Jeg er Tom</asp:ListItem>
                <asp:ListItem>Kjenner du Tom</asp:ListItem>
                <asp:ListItem>N&#229;r kommer Tom</asp:ListItem>
            </asp:RadioButtonList>
            <br />
            <br />
            <asp:Button ID="Button2" runat="server" Text="Svar" OnClick="Button2_Click" />
            <br />
            <asp:Label ID="Label1" runat="server"></asp:Label>
        </div>
    </form>
</body>
</html>
