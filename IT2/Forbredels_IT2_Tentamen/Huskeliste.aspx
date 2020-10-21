<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Huskeliste.aspx.cs" Inherits="Huskeliste" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:ImageMap ID="imgm1" runat="server" OnClick="imgm1_Click"></asp:ImageMap>
            <br />
            <br />
            <asp:Button ID="btn1" runat="server" Text="Trykk" OnClick="btn1_Click" />
            <br />
            <br />
            <asp:DropDownList ID="ddl1" runat="server" OnSelectedIndexChanged="ddl1_SelectedIndexChanged" AutoPostBack="True"></asp:DropDownList>
            <br />
            <br />
            <asp:RadioButtonList ID="rbl1" runat="server" OnSelectedIndexChanged="rbl1_SelectedIndexChanged" AutoPostBack="True"></asp:RadioButtonList>
            <br />
            <br />
            <asp:Label ID="lab1" runat="server" Text=""></asp:Label>
            <br />
            <br />
            <asp:Button Visible="false" ID="btn2" runat="server" Text="Spill" OnClick="btn2_Click" />
            <asp:Button Visible="false" ID="btn3" runat="server" Text="Spill" OnClick="btn3_Click" />
            <asp:Button Visible="false" ID="btn4" runat="server" Text="Spill" OnClick="btn4_Click" />
            <asp:Button Visible="false" ID="btn5" runat="server" Text="Spill" OnClick="btn5_Click" />
        </div>
    </form>
</body>
</html>
