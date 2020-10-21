<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Newyork.aspx.cs" Inherits="Newyork" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <title></title>
    <style>
        .boks {
            width: 50%;
            margin: auto;
        }
        .boks1 {
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="boks1">
            <div class="boks">
                <img src="newyork.jpg" />
            </div>

            Hvilken bygning ser du på bildet?

            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <asp:Button ID="Button1" runat="server" Text="Svar" OnClick="Button1_Click" />
            <br />
            <asp:Label ID="Label1" runat="server"></asp:Label>
        </div>
    </form>
</body>
</html>
