<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Oppgave 3.aspx.cs" Inherits="Oppgave_3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Still et ja eller nei spørsmål:</h1>
            <asp:TextBox ID="txtSpors" runat="server"></asp:TextBox>?
            <asp:Button ID="btnKnapp" runat="server" Text="Få anbefaling" OnClick="btnKnapp_Click" />
            <br />
            <asp:Label ID="labSvar" runat="server"></asp:Label>
        </div>
    </form>
</body>
</html>
