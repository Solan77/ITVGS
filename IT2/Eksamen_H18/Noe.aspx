<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Noe.aspx.cs" Inherits="Noe" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Brukernavn:
            <asp:TextBox ID="txt1" runat="server"></asp:TextBox>
            <br />
            <br />
            Passord:
            <asp:TextBox ID="txt2" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="btn1" runat="server" Text="Registrer" OnClick="btn1_Click" />
        </div>
        <div>
            <asp:Button ID="btn3" runat="server" Text="Logg inn" OnClick="btn3_Click" />
        </div>
        <div>
            <p runat="server" id="d1" visible="false">Brukernavn</p>
            <asp:TextBox Visible="false" ID="txt3" runat="server"></asp:TextBox>
            <br />
            <br />
            <p runat="server" id="d2" visible="false">Passord</p>            
            <asp:TextBox Visible="false" ID="txt4" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Button Visible="false" ID="btn2" runat="server" Text="Logg inn" OnClick="btn2_Click" />
        </div>
        <div>
            <asp:Label ID="lab1" runat="server" Text=""></asp:Label>
        </div>
    </form>
</body>
</html>
