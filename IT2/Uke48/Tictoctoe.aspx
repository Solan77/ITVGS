<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Tictoctoe.aspx.cs" Inherits="Tictoctoe" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        .boks1 {
            width: 26.7%;
            margin: auto;
            background-color: #4e4b4b;
        }
        svg rect {
            background-color: #c1bcbc;
            fill: #c1bcbc;
            stroke:black; 
            stroke-width:4;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="boks1">
            <svg width="400" height="355">
                <rect width="100" height="100" x="10" y="10"></rect>
                <rect width="100" height="100" x="130" y="10"></rect>
                <rect width="100" height="100" x="250" y="10"></rect>
                <rect width="100" height="100" x="10" y="130"></rect>
                <rect width="100" height="100" x="130" y="130"></rect>
                <rect width="100" height="100" x="250" y="130"></rect>
                <rect width="100" height="100" x="10" y="250"></rect>
                <rect width="100" height="100" x="130" y="250"></rect>
                <rect width="100" height="100" x="250" y="250"></rect>
            </svg>
        </div>
    </form>
</body>
</html>
