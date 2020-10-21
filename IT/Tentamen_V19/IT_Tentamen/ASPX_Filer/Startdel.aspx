<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Startdel.aspx.cs" Inherits="Startdel" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 50%;
            margin: 1em 0;
            color: white;
            font-size: 1.1em;
        }
        .auto-style2 {
            width: 249px;
        }
        .bt {
            width: 5em;
            height: 1.7em;
            font-size: 1.2em;
            background-color: #115a8d;
            color: white;
            border: 2px solid #1e1d1d;
            margin: 1em 0;
            font-weight: bold;
        }
        .bt:hover {
            cursor: pointer;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">Personnummer:</td>
                <td>
                    <asp:TextBox ID="Personnr" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Fornanvn:</td>
                <td>
                    <asp:TextBox ID="Fornavn" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Etternavn:</td>
                <td>
                    <asp:TextBox ID="Etternavn" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Kjonn:</td>
                <td>
                    <asp:DropDownList ID="Kjonn" runat="server">
                        <asp:ListItem Value="M"></asp:ListItem>
                        <asp:ListItem Value="K"></asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Klubb:</td>
                <td>
                    <asp:TextBox ID="Klubb" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Nasjonalitet:</td>
                <td>
                    <asp:TextBox ID="Nasjonal" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Pulje:</td>
                <td>
                    <asp:DropDownList ID="Pulje" runat="server">
                        <asp:ListItem Value="1"></asp:ListItem>
                        <asp:ListItem Value="2"></asp:ListItem>
                        <asp:ListItem Value="3"></asp:ListItem>
                        <asp:ListItem Value="4"></asp:ListItem>
                        <asp:ListItem Value="5"></asp:ListItem>
                        <asp:ListItem Value="6"></asp:ListItem>
                        <asp:ListItem Value="7"></asp:ListItem>
                        <asp:ListItem Value="8"></asp:ListItem>
                        <asp:ListItem Value="9"></asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    Starttid:</td>
                <td>
                    <asp:DropDownList ID="Starttid" runat="server">
                        <asp:ListItem Value="08:00:00"></asp:ListItem>
                        <asp:ListItem Value="08:30:00"></asp:ListItem>
                        <asp:ListItem Value="09:00:00"></asp:ListItem>
                        <asp:ListItem Value="09:30:00"></asp:ListItem>
                        <asp:ListItem Value="10:00:00"></asp:ListItem>
                        <asp:ListItem Value="10:30:00"></asp:ListItem>
                        <asp:ListItem Value="11:00:00"></asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Meld på" CssClass="bt" />
                </td>
                <td>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ITtentamen %>" InsertCommand="INSERT INTO TBL_Startnummer(Pulje, Starttid, Personnummer) VALUES (@Pulje, @Starttid, @Personnr)" ProviderName="<%$ ConnectionStrings:ITtentamen.ProviderName %>">
                        <InsertParameters>
                            <asp:ControlParameter ControlID="Pulje" Name="Pulje" PropertyName="SelectedValue" />
                            <asp:ControlParameter ControlID="Starttid" Name="Starttid" PropertyName="SelectedValue" />
                            <asp:ControlParameter ControlID="Personnr" Name="Personnr" PropertyName="Text" />
                        </InsertParameters>
                    </asp:SqlDataSource>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ITtentamen %>" InsertCommand="INSERT INTO TBL_Utover(Personnummer, Fornavn, Etternavn, Kjonn, Klubb, Nasjonalitet) VALUES (@personnr, @Fornavn, @Etternavn, @Kjonn, @Klubb, @Nasjonal)" ProviderName="<%$ ConnectionStrings:ITtentamen.ProviderName %>">
                        <InsertParameters>
                            <asp:ControlParameter ControlID="Personnr" Name="personnr" PropertyName="Text" />
                            <asp:ControlParameter ControlID="Fornavn" Name="Fornavn" PropertyName="Text" />
                            <asp:ControlParameter ControlID="Etternavn" Name="Etternavn" PropertyName="Text" />
                            <asp:ControlParameter ControlID="Kjonn" Name="Kjonn" PropertyName="SelectedValue" />
                            <asp:ControlParameter ControlID="Klubb" Name="Klubb" PropertyName="Text" />
                            <asp:ControlParameter ControlID="Nasjonal" Name="Nasjonal" PropertyName="Text" />
                        </InsertParameters>
                    </asp:SqlDataSource>
                </td>
            </tr>
            </table>
    </form>
</body>
</html>
