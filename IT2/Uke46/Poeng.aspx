<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Poeng.aspx.cs" Inherits="Poeng" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        * {
            margin: 0;
        }
        body {
            background-color: #fb9c35;
        }
        .side {
            background-color: #fb9c35;
            height: 50%;
            transform: translateY(20%);
        }
        .boks {
            width: 55%;
            margin: auto;
            text-align: center;            
        }
        .boksen {
            width: 50%;
            margin: auto;
            padding-top: 2em;
            font-size: 1.3em;
            font-weight: bold;
        }
        .pong {
            width: 30%;
            margin: auto;
            text-align: center;
        }
        .knapp {
            width: 8em;
            height: 4em;
        }
        .ven {
            float: right;
            color: blue;
        }
        .hoy {
            float: left;
            color: red;
        }
        .tall {
            font-size: 7em;
        }
        .trykk {
            margin: auto;
            text-align: center;
            padding-bottom: 2em;
        }
        .tekst {
            font-size: 3em;
            font-weight: bold;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        
            
        <div class="side">
            <div class="boksen">
                <p class="ven">Rød</p> <p class="hoy">Blå</p>
            </div>
            <div class="boks">                
                <asp:Button CssClass="knapp" ID="btnLeggtilBla" runat="server" Text="+" OnClick="btnLeggtilBla_Click" />            
                <asp:Button CssClass="knapp" ID="btnTrekkfraBla" runat="server" Text="-" OnClick="btnTrekkfraBla_Click" />
                <asp:Button CssClass="knapp" ID="btnDouble" runat="server" Text="Double" OnClick="btnDouble_Click" />
                <asp:Button CssClass="knapp" ID="btnLeggtilRod" runat="server" Text="+" OnClick="btnLeggtilRod_Click" />
                <asp:Button CssClass="knapp" ID="btnTrekkfraRod" runat="server" Text="-" OnClick="btnTrekkfraRod_Click" />        
            </div>
            <div class="pong">
                <h2 class="tall">
                <asp:Label ID="labPoengBla" runat="server">0</asp:Label> 
                 :  
                <asp:Label ID="labPoengRod" runat="server">0</asp:Label>
                </h2>
            </div>
            <div class="trykk">                
                <asp:Button CssClass="knapp" ID="btnReset" runat="server" Text="Reset" OnClick="btnReset_Click" />
                <br />
                <asp:Label CssClass="tekst" ID="labResultat" runat="server"></asp:Label>
            </div>
        </div>
    </form>
</body>
</html>
