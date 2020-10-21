<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Kule.aspx.cs" Inherits="Kule" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            radius =&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="txtR" runat="server"></asp:TextBox>
            <br />
            Lengde =&nbsp;&nbsp; <asp:TextBox ID="txtS" runat="server"></asp:TextBox><asp:TextBox ID="txtS2" runat="server"></asp:TextBox>
            <br />
            Bredde =&nbsp;&nbsp; <asp:TextBox ID="txtT" runat="server"></asp:TextBox><asp:TextBox ID="txtT2" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="labPunkter" runat="server"></asp:Label>
            <br />
            <asp:Label ID="labVinkel" runat="server"></asp:Label>
            <br />
            <br />
            <asp:Button ID="btnUtregn" runat="server" Text="Regn ut" OnClick="btnUtregn_Click" />
        </div>
    </form>
</body>
</html>
