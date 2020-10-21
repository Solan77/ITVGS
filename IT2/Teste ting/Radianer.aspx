<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Radianer.aspx.cs" Inherits="Radianer" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:DropDownList ID="DropDownList1" runat="server">
                <asp:ListItem Value="0">Radian</asp:ListItem>
                <asp:ListItem Value="1">Grader</asp:ListItem>
            </asp:DropDownList>
            <br />
            <asp:TextBox ID="TextBox1" runat="server" AutoCompleteType="Disabled"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" Text="Regn ut" OnClick="Button1_Click" />
            <br />
            <br />
            <asp:Label ID="Label1" runat="server"></asp:Label>
        </div>
    </form>
</body>
</html>
