<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Oppgave 2.aspx.cs" Inherits="Oppgave_2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Valutakalkulator</h1>
            <br />
            
            <asp:TextBox ID="txtNOK" runat="server" BorderStyle="None" Width="53px"></asp:TextBox>
            &nbsp;kr=
            <asp:Label ID="labSvar" runat="server" Text=""></asp:Label>
            <br />
            <br />
            <asp:Button ID="btnSvar" runat="server" Text="Gjør om" OnClick="btnSvar_Click" />
        </div>
    </form>
</body>
</html>
