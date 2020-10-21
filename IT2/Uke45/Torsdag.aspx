<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Torsdag.aspx.cs" Inherits="Torsdag" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Tall:
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <br />
            Tall:
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" Text="Minste tall" OnClick="Button1_Click" />
            <asp:Button ID="Button2" runat="server" Text="Finn antall negative tall i array" OnClick="Button2_Click" />
            <br />
            <br />
            <asp:Label ID="Label1" runat="server"></asp:Label>
        </div>
    </form>
</body>
</html>
