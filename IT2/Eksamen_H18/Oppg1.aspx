<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Oppg1.aspx.cs" Inherits="Oppg1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Alder: 
            <asp:TextBox ID="txt1" runat="server"></asp:TextBox>
            <br />
            Dager: 
            <asp:DropDownList ID="ddl1" runat="server">
                <asp:ListItem>---Velg dager---</asp:ListItem>
                <asp:ListItem>1</asp:ListItem>
                <asp:ListItem>2</asp:ListItem>
                <asp:ListItem>3</asp:ListItem>
                <asp:ListItem>4</asp:ListItem>
                <asp:ListItem>5</asp:ListItem>
                <asp:ListItem>6</asp:ListItem>
                <asp:ListItem>7</asp:ListItem>
            </asp:DropDownList>
            <br />
            <br />
            <asp:Button ID="btn1" runat="server" Text="Bestill" OnClick="btn1_Click" />
            <br />
            <br />
            <asp:Label ID="lab1" runat="server"></asp:Label>
        </div>
    </form>
</body>
</html>
