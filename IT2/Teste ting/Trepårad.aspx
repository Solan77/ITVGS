<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Trepårad.aspx.cs" Inherits="Trepårad" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        body {
            margin: 0;
            background-color: #ed8b12;
            font-family: Britannic;
        }
        .boks1 {
            width: 33%;
            margin: auto;
            text-align: center;
            background-color: #444242;
            padding: 0.8em 0.8em;
            border: 5px solid #2e2d2d;
            box-shadow: 0 8px 10px 3px rgba(0, 0, 0, 0.2), 0 12px 26px 0 rgba(0, 0, 0, 0.19);
        }
        .boks2 {
            width: 60%;
            margin: 0.4em auto;
            text-align: center;
            font-size: 3em;
            font-weight: bold;
        }
        .boks3 {
            width: 20%;
            margin: 0.7em auto;
            text-align: center;
            position: relative;
            font-size: 2em;
            font-weight: bolder;
            border-bottom: 2px solid;
        }

        .boks3::after {
            content: "tm";
            position: absolute;
            top: 0;
            left: 86%;
            font-size: 0.5em;
        }
        .btn {
            font-size: 2em;
            width: 3em;
            text-align: center;
            padding: 0.8em 1em;
            border: none;
            background-color: #dcd2d2;
            margin: 0.3em;
            font-weight: bold;
            z-index: 1;
        }
        .btnR {
            background-color: red;
            font-size: 1.4em;
            width: 4.3em;
            height: 3.9em;
            text-align: center;
            border: none;
            background-color: none;
            margin: 0.3em;
            font-weight: bold;
            position: absolute;
            top: 38.9%;
            left: 45%;
            z-index: 2;
            text-align: center;
        }
    </style>
</head>
<body>
    <div class="boks3">Tre på rad</div>
    <form id="form1" runat="server">
        <div class="boks1">
            <asp:Button CssClass="btn" ID="btn1" runat="server" OnClick="btn1_Click" Text=" "/>
            <asp:Button CssClass="btn" ID="btn2" runat="server" OnClick="btn2_Click" Text=" "/>
            <asp:Button CssClass="btn" ID="btn3" runat="server" OnClick="btn3_Click" Text=" "/>
            <asp:Button CssClass="btn" ID="btn4" runat="server" OnClick="btn4_Click" Text=" "/>
            <asp:Button CssClass="btn" ID="btn5" runat="server" OnClick="btn5_Click" Text=" "/>            
            <asp:Button CssClass="btn" ID="btn6" runat="server" OnClick="btn6_Click" Text=" "/>
            <asp:Button CssClass="btn" ID="btn7" runat="server" OnClick="btn7_Click" Text=" "/>
            <asp:Button CssClass="btn" ID="btn8" runat="server" OnClick="btn8_Click" Text=" "/>
            <asp:Button CssClass="btn" ID="btn9" runat="server" OnClick="btn9_Click" Text=" "/>
            <asp:Button CssClass="btnR" ID="btnR" runat="server" Text=" " OnClick="btnR_Click" Visible="False"/>
        </div>
        <div class="boks2">
            <asp:Label ID="lab1" runat="server"></asp:Label>
        </div>
    </form>
</body>
</html>
