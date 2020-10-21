<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Personinfo.aspx.cs" Inherits="Personinfo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        body {
            margin: 0;
            background-color: #f1922c;
        }
        .boks {
            display: flex;
            flex-direction: row;
            flex-wrap: wrap;
            width: 75%;
            margin: auto;
            padding: 2em 0;
            font-size: 1.4em;
        }
        .boks1 {
            width: 30%;
            text-align: justify;
        }
        .boks2 {
            width: 50%;
            text-align: left;
        }
        .boks3 {
            text-align: center;
            width: 45%;
            margin: auto;
            padding: 2em 0;
            background-color: #e2dddd;
            transform: translateY(20%);
            border-radius: 1em;
        }
        .txt {
            border: 2px solid;
            margin: 0.3em 0;
            font-size: 0.8em;
        }
        p {
            margin: 0.3em 0;
        }
        .btn {
            font-size: 1.4em;
            font-weight: bold;
            border: 2px solid;
            background-color: #ffffff;
        }
        .boks4 {
            width: 50%;
            margin: 7em auto;
            background-color: #e2dddd;
            border-radius: 2em;
            padding: 2em;
            text-align: center;
            font-weight: bold;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="boks3">
            <h1>Fredsprisens fanklubb</h1>
            <div class="boks">
                <div class="boks1">
                    <p>Fornavn:</p>
                    <p>Etternavn:</p>
                    <p>Kjønn:</p>
                </div>
                <div class="boks2">                
                    <asp:TextBox CssClass="txt" ID="txtFnavn" runat="server" AutoCompleteType="Disabled"></asp:TextBox>
                    <br />
                    <asp:TextBox CssClass="txt" ID="txtEnavn" runat="server" AutoCompleteType="Disabled"></asp:TextBox>
                    <br />
                    <asp:DropDownList CssClass="txt" ID="ddlKjonn" runat="server">
                        <asp:ListItem>----------</asp:ListItem>
                        <asp:ListItem>Mann</asp:ListItem>
                        <asp:ListItem>Kvinne</asp:ListItem>
                        <asp:ListItem>Annet</asp:ListItem>
                        <asp:ListItem>Ingen</asp:ListItem>
                    </asp:DropDownList>
                </div>
                
            </div>
            <asp:Button CssClass="btn" ID="btnKnapp" runat="server" Text="Registrer" OnClick="btnKnapp_Click" />
        </div>
        <div class="boks4">
            <asp:Label ID="labUtskrift" runat="server"></asp:Label>
        </div>
    </form>
</body>
</html>
