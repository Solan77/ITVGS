<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Walmart.aspx.cs" Inherits="Wallmart" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        body {
            margin: 0;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }
        .boks {
            display: grid;
            grid-template-columns: 10% 10% 10% 10% 10% 10% 10% 10% 10% 10%;
            grid-template-rows: auto;
        }
        .boks1 {
            grid-column: 2 / 4;
            grid-row: 2 / 3;
            text-align: center;
            margin: 2em auto;
        }
        .boks2 {
            grid-column: 5 / 7;
            grid-row: 2 / 3;
            text-align: center;
            margin: 2em auto;
        }
        .boks3 {
            grid-column: 8 / 10;
            grid-row: 2 / 3;
            text-align: center;
            margin: 2em auto;
        }
        .boks4 {
            grid-column: 4 / 8;
            grid-row: 3 / 4;
            text-align: center;
            margin: 2em auto;
        }
        .bokst {
            grid-column: 1 / 11;
            grid-row: 1 / 2;
            text-align: center;
            background-color: #08004a;
            width: 100%;
            display: inline-block;
            padding: 1.3em 0;
        }
        .boks5 {
            grid-column: 5 / 7;
            grid-row: 4 / 5;
            margin: auto;
        }
        .lab {
            float: left;
            margin-left: 2em;
            color: #ffffff;
            font-size: 1.3em;
        }
        .topp {
            font-size: 1.14em;
            float: right;
            margin-right: 1.4em;
            border: 0;
            background-color: #08004a;
            color: white;
            margin-top: 0.2em;
        }
        .img {
            width: 70%;
            margin: auto;
        }
        .btn {
            margin: auto;
            text-align: center;
        }
        .legg {
            background-color: #005c00;
            border: none;
            color: white;
            font-size: 1em;
            padding: 0.3em 0.7em;
        }
        .legg:hover {
            border: 1px solid black;
        }
        .legg2 {
            background-color: #4e4a4a;
            border: none;
            color: white;
            font-size: 1em;
            padding: 0.3em 0.7em;
        }
        .ddl {
            font-size: 1em;
            padding: 0.2em 0.2em;
        }
        .kurv {
            color: white;
            width: 6em;
            position: relative;
            float: right;
            font-size: 1.3em;
        }
        .dropp {
            visibility: hidden;
            width: 15em;
            font-size: 0.6em;
            background-color: black;
            color: #fff;
            text-align: center;
            padding: 5px 0;
            border-radius: 6px;
            position: absolute;
            top: 100%;
            left: 50%;
            margin-left: -8em;
            padding: 2.4em 0;
        }
        .kurv:hover .dropp {
            visibility: visible;
        }
        .kurv img {
            width: 27%;
        }
       .img1 {
            width: 3%;
            float: left;
            margin: 0 2em;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="boks">
            <div class="bokst">
                <img class="img1" src="Bilder/walmart-logo-preview.png" />
                <asp:Label CssClass="lab" ID="lab2" runat="server"></asp:Label> 
                
                <asp:Button CssClass="topp" ID="btn7" runat="server" Text="Totalpris" OnClick="btn7_Click" />                
                <asp:Button CssClass="topp" ID="btn8" runat="server" Text="Fjern alt" OnClick="btn8_Click" />                
                <div class="kurv">
                    <img src="Bilder/shopping-cart.png" />
                    <asp:Label CssClass="dropp" ID="labKvit" runat="server"></asp:Label>
                </div>
            </div>
            <div class="boks1">
                <asp:Image CssClass="img" ID="Image1" runat="server" ImageUrl="~/Bilder/7223466_583_f1_m_.jpg" />
                <br />
                <asp:DropDownList CssClass="ddl" ID="ddlJakke" runat="server">
                    <asp:ListItem>1</asp:ListItem>
                    <asp:ListItem>2</asp:ListItem>
                    <asp:ListItem>3</asp:ListItem>
                    <asp:ListItem>4</asp:ListItem>
                    <asp:ListItem>5</asp:ListItem>
                    <asp:ListItem>6</asp:ListItem>
                    <asp:ListItem>7</asp:ListItem>
                    <asp:ListItem>8</asp:ListItem>
                    <asp:ListItem>9</asp:ListItem>
                    <asp:ListItem>10</asp:ListItem>
                </asp:DropDownList>
                <asp:Button CssClass="legg" ID="btn1" runat="server" Text="Legg til" OnClick="btn1_Click" />
                <asp:Button CssClass="legg2" ID="btn2" runat="server" Text="Fjern" OnClick="btn2_Click" />
            </div>
            <div class="boks2">
                <asp:Image CssClass="img" ID="Image2" runat="server" ImageUrl="~/Bilder/7139003_980_f1_m_.jpg" />
                <br />
                <asp:DropDownList CssClass="ddl" ID="ddlBukse" runat="server">
                    <asp:ListItem>1</asp:ListItem>
                    <asp:ListItem>2</asp:ListItem>
                    <asp:ListItem>3</asp:ListItem>
                    <asp:ListItem>4</asp:ListItem>
                    <asp:ListItem>5</asp:ListItem>
                    <asp:ListItem>6</asp:ListItem>
                    <asp:ListItem>7</asp:ListItem>
                    <asp:ListItem>8</asp:ListItem>
                    <asp:ListItem>9</asp:ListItem>
                    <asp:ListItem>10</asp:ListItem>
                </asp:DropDownList>
                <asp:Button CssClass="legg" ID="btn3" runat="server" Text="Legg til" OnClick="btn3_Click" />
                <asp:Button CssClass="legg2" ID="btn4" runat="server" Text="Fjern" OnClick="btn4_Click" />
            </div>
            <div class="boks3">
                <asp:Image CssClass="img" ID="Image3" runat="server" ImageUrl="~/Bilder/7138107_990_f_m.jpg" />
                <br />
                <asp:DropDownList CssClass="ddl" ID="ddlSkjorte" runat="server">
                    <asp:ListItem>1</asp:ListItem>
                    <asp:ListItem>2</asp:ListItem>
                    <asp:ListItem>3</asp:ListItem>
                    <asp:ListItem>4</asp:ListItem>
                    <asp:ListItem>5</asp:ListItem>
                    <asp:ListItem>6</asp:ListItem>
                    <asp:ListItem>7</asp:ListItem>
                    <asp:ListItem>8</asp:ListItem>
                    <asp:ListItem>9</asp:ListItem>
                    <asp:ListItem>10</asp:ListItem>
                </asp:DropDownList>
                <asp:Button CssClass="legg" ID="btn5" runat="server" Text="Legg til" OnClick="btn5_Click" />
                <asp:Button CssClass="legg2" ID="btn6" runat="server" Text="Fjern" OnClick="btn6_Click" />
            </div>          
            <div class="boks4">                
                <asp:Label ID="lab1" runat="server"></asp:Label>
            </div>
            <div class="boks5">
                <asp:Label ID="lab3" runat="server"></asp:Label>
            </div>
            
        </div>
    </form>
</body>
</html>
