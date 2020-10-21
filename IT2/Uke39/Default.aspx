<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Button ID="btnKanpp" runat="server" Text="Trykk" OnClick="btnKanpp_Click" />
            <br />
            <br />
            <asp:Label ID="lab1" runat="server" Text=""></asp:Label>
            <br />
            <br />
            <br />
            <asp:TextBox ID="txtBox" runat="server" AutoCompleteType="Disabled" Visible="False">Skriv inn summen</asp:TextBox>
            <asp:Button ID="btnKnapp2" runat="server" Text="Tipp" OnClick="btnKnapp2_Click" Visible="False" />
        </div>
    </form>
</body>
</html>
