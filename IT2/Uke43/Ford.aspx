<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Ford.aspx.cs" Inherits="Ford" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        .side {
            display: flex;
            flex-direction: row;
            flex-wrap: wrap;
        }
        .bilde {
            width: 20em;
        }
        .boks1 {
            width: 45%;
            text-align: center;
            margin: auto;
            padding: 2em;
            display: flex;
            flex-direction: row;
            flex-wrap: wrap;
        }
        .boks2 {
            width: 40%;
            margin: auto;
            padding: 2em;
            text-align: center;
        }
        .tekst {
            width: 50%;
            margin: auto;
            text-align: right;
        }
        .drop {
            width: 40%;
            margin: auto;
            text-align: left;
        }
        .ddl {
            width: 8.7em;
            text-align: center;
        }
        img {
            width: 30em;
        }
        .btn {
            font-size: 0.98em;
            font-weight: bold;
            margin: 1em auto;
        }
        .tab {
            font-size: 1.1em;
            border: 0.2em solid black; 
        }

    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="side">

            <div class="boks1">
                <table class="tab">
                    <tbody>
                        <tr>
                            <th>Bil</th>
                            <th>Trend</th>
                            <th>Titanum</th>
                            <th>Familiepakke</th>
                            <th>Førerassistentpakke</th>
                            <th>Stilpakke</th>
                        </tr>
                        <tr></tr>
                    </tbody>
                    <tbody>
                        <tr>
                            <td>Kuga</td>
                            <td>401000</td>
                            <td>420000</td>
                            <td>1000</td>
                            <td>10200</td>
                            <td>9200</td>
                        </tr>
                    </tbody>
                    <tbody>
                        <tr>
                            <td>C-Max</td>
                            <td>320000</td>
                            <td>335000</td>
                            <td>1000</td>
                            <td>9400</td>
                            <td>3600</td>
                        </tr>
                    </tbody>
                    <tbody>
                        <tr>
                            <td>Focus</td>
                            <td>255000</td>
                            <td>325000</td>
                            <td>900</td>
                            <td>12500</td>
                            <td>9000</td>
                        </tr>
                    </tbody>
                    <tbody>
                        <tr>
                            <td>Mondo</td>
                            <td>281000</td>
                            <td>361000</td>
                            <td>1100</td>
                            <td>9900</td>
                            <td>7200</td>
                        </tr>
                    </tbody>
                </table>
                <br />
                <br />
                <div class="tekst">
                <br />
                    Velg deg en bil: 
                <br />
                Velg en variant: 
                <br />
                Vill du ha familiepakke?:
                <br />
                Ekstra førerassistentpakke:
                <br />
                En Stilpakke:
                </div>
                <div class="drop">
                    <br />
                    <asp:DropDownList CssClass="ddl" ID="ddlBil" runat="server">
                        <asp:ListItem Value="-1">---Velg modell---</asp:ListItem>
                        <asp:ListItem Value="0">Kuga</asp:ListItem>
                        <asp:ListItem Value="1">C-max</asp:ListItem>
                        <asp:ListItem Value="2">Focus</asp:ListItem>
                        <asp:ListItem Value="3">Mondeo</asp:ListItem>
                    </asp:DropDownList>
                    <br />
                    <asp:DropDownList CssClass="ddl" ID="ddlVariant" runat="server">
                        <asp:ListItem Value="-1">---Spec---</asp:ListItem>
                        <asp:ListItem Value="0">Trend</asp:ListItem>
                        <asp:ListItem Value="1">Titanium</asp:ListItem>
                    </asp:DropDownList>
                    <br />
                    <asp:DropDownList CssClass="ddl" ID="ddlFamilie" runat="server">
                        <asp:ListItem Value="-1">---Familepakke?---</asp:ListItem>
                        <asp:ListItem Value="2">Ja</asp:ListItem>
                        <asp:ListItem Value="5">Nei</asp:ListItem>
                    </asp:DropDownList>
                    <br />
                    <asp:DropDownList CssClass="ddl" ID="ddlForer" runat="server">
                        <asp:ListItem Value="-1">---Førerassistanse---</asp:ListItem>
                        <asp:ListItem Value="3">Ja</asp:ListItem>
                        <asp:ListItem Value="5">Nei</asp:ListItem>
                    </asp:DropDownList>
                    <br />
                    <asp:DropDownList CssClass="ddl" ID="ddlStil" runat="server">
                        <asp:ListItem Value="-1">---Stilpakke?---</asp:ListItem>
                        <asp:ListItem Value="4">Ja</asp:ListItem>
                        <asp:ListItem Value="5">Nei</asp:ListItem>
                    </asp:DropDownList>
                </div>                
                <br />
                <br />
                <asp:Button CssClass="btn" ID="Button1" runat="server" Text="Regn ut" OnClick="Button1_Click" />
                <br />
            </div>    
            <div class="boks2">
                <asp:Image CssClass="bilde" ID="Image1" runat="server" /> 
                <br />
                <br />
                <asp:Label ID="Label2" runat="server" Text=""></asp:Label>
                <br /> 
                <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                <br />
                <asp:Button Visible="false" CssClass="btn" ID="Button2" runat="server" Text="Bestill" OnClick="Button2_Click" />
            </div>         
        
        </div>

    </form>
</body>
</html>
