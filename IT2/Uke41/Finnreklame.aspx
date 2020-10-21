<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Finnreklame.aspx.cs" Inherits="Finnreklame" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            margin-left: 0px;
        }
    </style>
</head>
<body style="width: 831px; height: 1140px">
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label3" runat="server" Text=""></asp:Label>
            <br />
            <br />
            <asp:Label ID="Label1" runat="server" Text="Trenger du det?"></asp:Label>
            &nbsp;<br />
            <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                <asp:ListItem Selected="True">--</asp:ListItem>
                <asp:ListItem>Ja</asp:ListItem>
                <asp:ListItem>Nei</asp:ListItem>
            </asp:DropDownList>
            <br />
            <br />
            <asp:Label ID="Label2" runat="server" Text="Trenger du det sånn helt på ordentlig?" Visible="False"></asp:Label>
            <br />
            <asp:DropDownList ID="DropDownList2" runat="server" Visible="False" AutoPostBack="True" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged">
                <asp:ListItem Selected="True">--</asp:ListItem>
                <asp:ListItem>Ja</asp:ListItem>
                <asp:ListItem>Njaa</asp:ListItem>
            </asp:DropDownList>
            <br />
            <br />
            <asp:Label ID="Label4" runat="server" Text="Kan du kjøpe det brukt da?" Visible="False"></asp:Label>
            <br />
            <asp:DropDownList ID="DropDownList3" runat="server" Visible="false" AutoPostBack="True" OnSelectedIndexChanged="DropDownList3_SelectedIndexChanged">
                <asp:ListItem Selected="True">--</asp:ListItem>
                <asp:ListItem>Ja</asp:ListItem>
                <asp:ListItem>Nei</asp:ListItem>
            </asp:DropDownList>
            <br />
            <br />
            <asp:Label ID="Label5" runat="server" Text="Har du prøvd å lagre et søk?" Visible="false"></asp:Label>
            <br />
            <asp:DropDownList ID="DropDownList4" runat="server" Visible="false" AutoPostBack="True" OnSelectedIndexChanged="DropDownList4_SelectedIndexChanged">
                <asp:ListItem Selected="True">--</asp:ListItem>
                <asp:ListItem>Ja</asp:ListItem>
                <asp:ListItem>Nei</asp:ListItem>
            </asp:DropDownList>
            <br />
            <br />
            <asp:Label ID="Label6" runat="server" Text="Gjør det!!" Visible="False"></asp:Label>
            <br />
            <asp:Button ID="Button1" runat="server" Text="OK" Visible="False" OnClick="Button1_Click"/>
            <br />
            <br />
            <asp:Label ID="Label7" runat="server" Text="Da dukker det snart opp." Visible="False"></asp:Label>
            <br />
            <asp:DropDownList ID="DropDownList5" runat="server" Visible="False" AutoPostBack="True" OnSelectedIndexChanged="DropDownList5_SelectedIndexChanged">
                <asp:ListItem Selected="True">--</asp:ListItem>
                <asp:ListItem>Ja</asp:ListItem>
            </asp:DropDownList>
            <br />
            <br />
            <asp:Image ID="Image1" runat="server" Visible="False" CssClass="auto-style1" Height="321px" ImageUrl="~/Bilder/kNHsXFpaU0ahISeY.jpg" Width="620px"/>
                <br />

        </div>
    </form>
</body>
</html>
