<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Fiske.aspx.vb" Inherits="Fiske" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 378px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2">Fæsk</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">Fiskesort:</td>
                    <td>
                        <asp:TextBox ID="Fiskesort" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Habitat:</td>
                    <td>
                        <asp:TextBox ID="Habitat" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Button ID="Button1" runat="server" Text="Button" />
                    </td>
                    <td>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DatabaseConnectionString1 %>" InsertCommand="INSERT INTO Fisk(Fiskesort, Habitat) VALUES (@Fiskesort, @Habitat)" ProviderName="<%$ ConnectionStrings:DatabaseConnectionString1.ProviderName %>">
                            <InsertParameters>
                                <asp:ControlParameter ControlID="Fiskesort" Name="Fiskesort" PropertyName="Text" />
                                <asp:ControlParameter ControlID="Habitat" Name="Habitat" PropertyName="Text" />
                            </InsertParameters>
                        </asp:SqlDataSource>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Fæsker</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">Fornavn</td>
                    <td>
                        <asp:TextBox ID="Fornavn" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Etternavn</td>
                    <td>
                        <asp:TextBox ID="Etternavn" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Kjønn</td>
                    <td>
                        <asp:DropDownList ID="Kjønn" runat="server">
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Fødselsår:</td>
                    <td>
                        <asp:TextBox ID="Fødselsår" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td>
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server"></asp:SqlDataSource>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
