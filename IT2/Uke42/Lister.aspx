<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Lister.aspx.cs" Inherits="Lister" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Hvordan legge til elementer i en liste fra tekstboks?
            <br />
            <br />
            Skriv inn karakter:
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <asp:Button ID="Button1" runat="server" Text="Legg til" OnClick="Button1_Click" />
            <asp:Button ID="Button2" runat="server" Text="Skriv ut" OnClick="Button2_Click" />
            <br />
            <br />
            <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
        </div>
    </form>
</body>
</html>
