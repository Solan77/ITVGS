<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Oppgave 4.aspx.cs" Inherits="Oppgave_4" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Skatte kalkulator</h1>
            <asp:TextBox ID="txtLonn" runat="server"></asp:TextBox>kr
            <asp:Button ID="btnKnapp" runat="server" Text="Regn ut" OnClick="btnKnapp_Click" />
            <br />            
            <asp:Label ID="labSvar" runat="server"></asp:Label>

        </div>
    </form>
</body>
</html>
