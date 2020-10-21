<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Arrayes.aspx.cs" Inherits="Arrayes" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        .list {
            width: 50%;
            margin: auto;
            padding: 2em;
            text-align: center;
        }
        .knapp {
            width: auto;
            height: auto;
            padding: 0.5em 1em;
            overflow: hidden;
            text-align: center;
            font-size: 0.8em;
            font-weight: bold;
            border-radius: 2em;
            
        }
        .ddl {
            font-size: 0.8em;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="list">            
            Velg startby: <asp:DropDownList CssClass="ddl" ID="DropDownList1" runat="server">
                <asp:ListItem Value="-1">---Vegl startby---</asp:ListItem>
                <asp:ListItem Value="0">Askim</asp:ListItem>
                <asp:ListItem Value="1">Halden</asp:ListItem>
                <asp:ListItem Value="2">Fredrikstad</asp:ListItem>
                <asp:ListItem Value="3">Moss</asp:ListItem>
                <asp:ListItem Value="4">Ørje</asp:ListItem>
            </asp:DropDownList>
            <br />
            Velg sluttby: <asp:DropDownList CssClass="ddl" ID="DropDownList2" runat="server">
                <asp:ListItem Value="-1">---Vegl startby---</asp:ListItem>
                <asp:ListItem Value="0">Askim</asp:ListItem>
                <asp:ListItem Value="1">Halden</asp:ListItem>
                <asp:ListItem Value="2">Fredrikstad</asp:ListItem>
                <asp:ListItem Value="3">Moss</asp:ListItem>
                <asp:ListItem Value="4">Ørje</asp:ListItem>
            </asp:DropDownList>
            <br />
            <br />
            <asp:Button CssClass="knapp" Visible="false" ID="Button1" runat="server" Text="Finn avstand tungvint" OnClick="Button1_Click" />
            <asp:Button CssClass="knapp" ID="Button2" runat="server" Text="Finn avstand" OnClick="Button2_Click" />
            <br />
            <br />
            <asp:Label ID="Label1" runat="server"></asp:Label>
        </div>
    </form>
</body>
</html>
