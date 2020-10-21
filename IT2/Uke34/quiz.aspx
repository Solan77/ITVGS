<%@ Page Language="C#" AutoEventWireup="true" CodeFile="quiz.aspx.cs" Inherits="quiz" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 470px;
        }
        .auto-style3 {
            width: 374px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="labPoeng" runat="server"></asp:Label>
            <br />
            <br />
            <br />
            <table class="auto-style1">
                <tr>
                    <td class="auto-style3">Hvilken idrett driver Bartosz med?<br />
                        <asp:RadioButtonList ID="rblSpors1" runat="server">
                            <asp:ListItem>Fekting</asp:ListItem>
                            <asp:ListItem>Golf</asp:ListItem>
                            <asp:ListItem>Langrenn</asp:ListItem>
                        </asp:RadioButtonList>
                        <br />
                        <br />
                        <br />
                        <asp:Label ID="labSvar" runat="server"></asp:Label>
                    </td>
                    <td class="auto-style2">Hvem vant VM i langrenn, 5 mil i 2018?<br />
                        <asp:RadioButtonList ID="rblSpors2" runat="server">
                            <asp:ListItem>Klæbo</asp:ListItem>
                            <asp:ListItem>Holund</asp:ListItem>
                            <asp:ListItem Value="Bøgen">Bøgen</asp:ListItem>
                            <asp:ListItem>Northug</asp:ListItem>
                            <asp:ListItem>Ustiogov</asp:ListItem>
                        </asp:RadioButtonList>
                        <br />
                        <asp:Label ID="labSvar2" runat="server"></asp:Label>
                    </td>
                    <td>Hvem er dette?<br />
                        <asp:Image ID="imgOtto" runat="server" Height="176px" ImageUrl="~/Bilder/LAURITZEN-Dag-Otto.jpg" Width="157px" />
                        <br />
                        <asp:TextBox ID="txtSvar1" runat="server" AutoCompleteType="Disabled">Hvem?</asp:TextBox>
                        <br />
                        <asp:Label ID="labSvar3" runat="server"></asp:Label>
                    </td>
                </tr>
            </table>
            <br />
            <br />
        </div>
        <p>
            <asp:Button ID="btnTrykk" runat="server" OnClick="btnTrykk_Click" Text="Svar" />
        </p>
        <asp:Image ID="imgalt" runat="server" Height="879px" ImageUrl="~/Bilder/last ned.jpg" Visible="False" Width="1250px" />
    </form>
</body>
</html>
