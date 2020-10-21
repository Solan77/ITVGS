<%@ Page Language="C#" AutoEventWireup="true" CodeFile="FuksjonerTimen.aspx.cs" Inherits="FuksjonerTimen" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Fornavn:
            <asp:TextBox ID="TextBox1" runat="server" AutoCompleteType="Disabled"></asp:TextBox>
            <br />
            Etternavn:
            <asp:TextBox ID="TextBox2" runat="server" AutoCompleteType="Disabled"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" Text="Lag hilsen" OnClick="Button1_Click" />
            <asp:Button ID="Button2" runat="server" Text="tøm feltene" OnClick="Button2_Click" />
            <br />
            <br />
            <asp:Label ID="Label1" runat="server"></asp:Label>
            <br />
            <br />
            Tall:
            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            <br />
            Tall:
            <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="Button3" runat="server" Text="Sum" OnClick="Button3_Click" />
            <br />
            <br />
            <asp:Label ID="Label2" runat="server"></asp:Label>
        </div>
    </form>
</body>
</html>
