<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Oppg3.aspx.cs" Inherits="Oppg3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Sommerferierabatt</title>
    <link href="StyleSheet.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="nav">
            <a href="Oppg1.aspx">Oppgave 1</a>
            <a href="Oppg2.aspx">Oppgave 2</a>
            <a class="aktiv" href="Oppg3.aspx">Oppgave 3</a>
        </div>
        <div>
            <table class="auto-style1">
                <tr>
                    <td>
                        <asp:Label ID="lab3" runat="server" Text="Pris sommerferie"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txt1" runat="server" AutoCompleteType="Disabled"></asp:TextBox>
                        <asp:Label ID="lab10" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        &nbsp;
                    </td>
                    <td>
                        <asp:Button CssClass="btn" ID="btn3" runat="server" Text="Start" OnClick="btn3_Click" />

                        <asp:Label ID="lab8" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>                        
                        <asp:Label ID="lab4" runat="server" Text="Spørsmål" Visible="False"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="lab1" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        &nbsp;</td>
                    <td>

                        &nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <asp:Button CssClass="btn" Visible="false" ID="btns1" runat="server" Text="" OnClick="btns1_Click" />
                        <asp:Button CssClass="btn" Visible="false" ID="btns2" runat="server" Text="" OnClick="btns2_Click" />
                        <asp:Button CssClass="btn" Visible="false" ID="btns3" runat="server" Text="" OnClick="btns3_Click" />
                        <asp:Button CssClass="btn" Visible="false" ID="btns4" runat="server" Text="" OnClick="btns4_Click" />
                        <asp:Button CssClass="btn" Visible="false" ID="btns5" runat="server" Text="" OnClick="btns5_Click" />
                    </td>
                    <td>
                        
                        <asp:Button CssClass="btn" ID="btn2" runat="server" Text="Hopp over" OnClick="btn2_Click" Visible="False" />

                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lab5" runat="server" Text="Velg vanskelighets grad let til vanskelig fra venstre" Visible="False"></asp:Label>
                    </td>
                    <td>

                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label Visible="false" ID="lab7" runat="server" Text="Spørsmål: "></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="lab6" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label Visible="false" ID="lab11" runat="server" Text="Svar:"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txt2" runat="server" AutoCompleteType="Disabled" Visible="False"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Button CssClass="btn" ID="btn1" runat="server" Text="Svar" OnClick="btn1_Click" Visible="False" />
                        <asp:Button CssClass="btn" Visible="false" ID="btn4" runat="server" Text="Neste" OnClick="btn4_Click" />
                    </td>
                    <td>
                        <asp:Label ID="lab2" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
            </table>
        </div>
        <div>
            <asp:Label ID="lab9" runat="server" Text=""></asp:Label>
        </div>
    </form>
    <footer class="bunn">
        <h4>Av: Birk</h4>
    </footer>
</body>
</html>
