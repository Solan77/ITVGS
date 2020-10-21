<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Side.aspx.cs" Inherits="Side" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Style.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="boks">
            <div class="boks1">
                <p>Navn:</p>
                <p>Vekt:</p>
                <p>Høyde:</p>                
            </div>
            <div class="boks2">                
                <asp:TextBox CssClass="txt" ID="txt1" runat="server"></asp:TextBox>
                <br />                
                <br />                
                <asp:TextBox CssClass="txt" ID="txt2" runat="server"></asp:TextBox>
                <br />                
                <br />                
                <asp:TextBox CssClass="txt" ID="txt3" runat="server"></asp:TextBox>
            </div>     
            <div class="boks3">
                <asp:Button CssClass="knapp" ID="btnKnapp" runat="server" Text="Trykk" OnClick="btnKnapp_Click" />
            </div>
            <div class="boks4">
                <asp:Label ID="lab1" runat="server"></asp:Label>
            </div>
        </div>
    </form>
</body>
</html>
