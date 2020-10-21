<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Velg studie:
            <asp:DropDownList ID="ddlStudie" runat="server">
                <asp:ListItem>----Velg utdanning----</asp:ListItem>
                <asp:ListItem Value="50">Lektorutdanning i Historie</asp:ListItem>
                <asp:ListItem Value="48">Lektorutdanning i språkfag/engelsk</asp:ListItem>
            </asp:DropDownList>
            *<br />
            Ditt Snitt:<asp:TextBox ID="txtSnitt" runat="server"></asp:TextBox>
            *<br />
            Tillegspoeng:<asp:TextBox ID="txtPoeng" runat="server"></asp:TextBox>
            *<br />
            <br />
            <br />
            <asp:Label ID="labTekst" runat="server"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnKnapp" runat="server" OnClick="Button1_Click" Text="Her kan du F*** regne ut" />
            <br />
            *Må fylles ut</div>
    </form>
</body>
</html>
