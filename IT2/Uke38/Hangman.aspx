<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Hangman.aspx.cs" Inherits="Hangman" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Forøsk:
            <asp:Label ID="Label8" runat="server" Text="5"></asp:Label>
            <br />
            <br />
            Skriv en bokstav:<asp:TextBox ID="TextBox1" runat="server" AutoCompleteType="Disabled"></asp:TextBox>
            <br />
            <asp:Label ID="Label1" runat="server"></asp:Label>
&nbsp;<asp:Label ID="Label2" runat="server"></asp:Label>
&nbsp;<asp:Label ID="Label3" runat="server"></asp:Label>
&nbsp;<asp:Label ID="Label4" runat="server"></asp:Label>
&nbsp;<asp:Label ID="Label5" runat="server"></asp:Label>
&nbsp;<asp:Label ID="Label6" runat="server"></asp:Label>
&nbsp;<asp:Label ID="Label10" runat="server"></asp:Label>
            &nbsp;
            <br />
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Avgi svar" />
            <asp:Label ID="Label7" runat="server" Text=""></asp:Label>
            <asp:Label ID="Label9" runat="server" Text=""></asp:Label>
            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Nullstill" />
            <asp:Label ID="Label11" runat="server" Text=""></asp:Label>
        </div>
    </form>
</body>
</html>
