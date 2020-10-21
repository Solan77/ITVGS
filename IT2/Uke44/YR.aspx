<%@ Page Language="C#" AutoEventWireup="true" CodeFile="YR.aspx.cs" Inherits="YR" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server">kl 10</asp:Label>
            <br />
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="Label2" runat="server"></asp:Label>
            <br />
            <asp:Button ID="Button1" runat="server" Text="Registrer" OnClick="Button1_Click" />
            <asp:Button Visible="false" ID="Button2" runat="server" Text="Regn ut" OnClick="Button2_Click" />
            <asp:Button ID="Button3" runat="server" Text="Clear" OnClick="Button3_Click" />
        </div>
    </form> 
</body>
</html>
