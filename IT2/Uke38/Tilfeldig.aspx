<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Tilfeldig.aspx.cs" Inherits="Tilfeldig" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        * {
            background-color: #808080;
        }
        .boks {
            margin: auto;
            width: 40%;
            text-align: center;
            padding: 3em 0;
        }
        .knapp {
            background-color: #2b2b2b;
            color: #e1e1e1;
        }
        .tekst {
            background-color: white;
            color: #2b2b2b;
            width: 6em;
            height: 2em;
        }

    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="boks">
            <asp:TextBox CssClass="tekst" ID="txtSkriv" runat="server" AutoCompleteType="Disabled"></asp:TextBox>
            <asp:Button CssClass="knapp" ID="btnKnapp" runat="server" Text="Trykk her" OnClick="btnKnapp_Click" />
            
            <br />
            
            <asp:Label ID="labTilfeldig" runat="server" Text="Label"></asp:Label>   
        </div>
    </form>
</body>
</html>
