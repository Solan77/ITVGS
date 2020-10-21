<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Test.aspx.cs" Inherits="Test" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Quiz</title>
    <link href="StyleSheet2.css" rel="stylesheet" />
</head>
<body>
    <script src="JavaScript2.js"></script>
    
    <div class="logo">

    </div>

    <form id="form1" runat="server">
        <div class="boks">
            <asp:Label ID="labS" CssClass="tekst" runat="server"></asp:Label>
            <br />
            <asp:Button ID="btn2" CssClass="btn" runat="server" Text="Spørsmål" OnClick="btn2_Click" />
            <br />
            <asp:DropDownList Visible="false" CssClass="ddl" ID="ddl1" runat="server">
                <asp:ListItem Value="0">--Svar--</asp:ListItem>
                <asp:ListItem Value="0">Hopp over</asp:ListItem>
                <asp:ListItem Value="femur">Lårmuskel</asp:ListItem>
                <asp:ListItem Value="gluteus">Rumpe</asp:ListItem>
                <asp:ListItem Value="abdominal">Bukmuskel</asp:ListItem>
                <asp:ListItem Value="biceps">Overarm</asp:ListItem>
                <asp:ListItem Value="triceps">Underarm</asp:ListItem>
            </asp:DropDownList>
            <br />
            <br />
            <asp:Button ID="btn1" CssClass="btn" Visible="false" runat="server" Text="Svar" OnClick="btn1_Click" />
            <asp:Button ID="btn3" CssClass="btn" runat="server" Text="Avbryt" OnClick="btn3_Click" />
            <asp:Button ID="btn4" CssClass="btn" Visible="false" runat="server" Text="Nullstill" OnClick="btn4_Click" />
            <br />
            <br />
            <asp:Label ID="lab2" CssClass="tekst" runat="server"></asp:Label>
            <br />
            <div class="boks1">
                <asp:Label ID="Label2" Visible="false" CssClass="tekst" runat="server">Poeng: </asp:Label>

                <asp:Label ID="Label1" Visible="false" CssClass="tekst" runat="server"> 0 </asp:Label>
            </div>

        </div>
        <section class="star"></section>
    </form>
</body>
</html>
