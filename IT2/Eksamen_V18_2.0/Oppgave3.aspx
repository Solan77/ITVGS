<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Oppgave3.aspx.cs" Inherits="Oppgave3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="stilark.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
    </style>
    </head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Oppgave 3</h1>
        </div>
        <div>
            <asp:Button ID="btnLyd" runat="server" OnClick="btnLyd_Click" Text="Få tilfeldig lyd" />
            &nbsp;<asp:Button ID="btnStart" runat="server" OnClick="btnStart_Click" Text="Spill på nytt" Visible="False" />
            <br />
            <asp:Label ID="labLyd" runat="server"></asp:Label>
            <br />
            <asp:Label ID="labSvar" runat="server"></asp:Label>
            <br />
            <br />
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2">
                        <asp:ImageButton ID="imgFagott" runat="server" Height="200px" ImageUrl="~/Filer/fagott.jpg" OnClick="imgFagott_Click" Visible="False" />
                    </td>
                    <td class="auto-style2">
                        <asp:ImageButton ID="imgFloyte" runat="server" Height="200px" ImageUrl="~/Filer/floyte.gif" OnClick="imgFloyte_Click" Visible="False" />
                    </td>
                    <td class="auto-style2">
                        <asp:ImageButton ID="imgKlarinett" runat="server" Height="200px" ImageUrl="~/Filer/klarinett.jpg" OnClick="imgKlarinett_Click" Visible="False" />
                    </td>
                    <td class="auto-style2">
                        <asp:ImageButton ID="imgObo" runat="server" Height="200px" ImageUrl="~/Filer/obo.jpg" OnClick="imgObo_Click" Visible="False" />
                    </td>
                    <td class="auto-style2">
                        <asp:ImageButton ID="imgValthorn" runat="server" Height="200px" ImageUrl="~/Filer/valthorn.jpg" OnClick="imgValthorn_Click" Visible="False" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2"><strong>
                        <asp:Label ID="labFagott" runat="server" Text="Fagott" Visible="False"></asp:Label>
                        </strong></td>
                    <td class="auto-style2"><strong>
                        <asp:Label ID="labFloyte" runat="server" Text="Fløyte" Visible="False"></asp:Label>
                        </strong></td>
                    <td class="auto-style2"><strong>
                        <asp:Label ID="labKlarinett" runat="server" Text="Klarinett" Visible="False"></asp:Label>
                        </strong></td>
                    <td class="auto-style2"><strong>
                        <asp:Label ID="labObo" runat="server" Text="Obo" Visible="False"></asp:Label>
                        </strong></td>
                    <td class="auto-style2"><strong>
                        <asp:Label ID="labValthorn" runat="server" Text="Valthorn" Visible="False"></asp:Label>
                        </strong></td>
                </tr>
            </table>
            <br />
        </div>
    </form>
</body>
</html>
