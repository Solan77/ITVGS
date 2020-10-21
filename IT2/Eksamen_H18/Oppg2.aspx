<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Oppg2.aspx.cs" Inherits="Oppg2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }

        .hytte {
            position: absolute;
            width: 70%;
            height: 40em;
            top: 0.5%;
            left: 15.5%;
            visibility: hidden;
            background-color: black;
        }

        .column {
          float: left;
          width: 30%;
          padding: 10px;
        }

        .column img {
          opacity: 0.8;
          cursor: pointer;
          width: 90%;
        }

        .column img:hover {
          opacity: 1;
        }

        .row {
            width: 70%;
            margin: auto;
            text-align: center;
        }

        .row:after {
          content: "";
          display: table;
          clear: both;
        }

        .container {
            width: 50%;
            margin: auto;
            position: relative;
            display: none;
        }

        .closebtn {
          position: absolute;
          top: 10px;
          right: 15px;
          color: white;
          font-size: 35px;
          cursor: pointer;
        }
    </style>
</head>
<body>
    <script>
        function myFunction(imgs) {

          var expandImg = document.getElementById("expandedImg");

          expandImg.src = imgs.src;

          expandImg.parentElement.style.display = "absolute";
        }
    </script>
    <form id="form1" runat="server">
        <div class="auto-style1">
            <asp:ImageMap ID="imgm1" runat="server" ImageUrl="~/Bilder/menybilde.jpg" HotSpotMode="PostBack" OnClick="imgm1_Click">
                <asp:CircleHotSpot AlternateText="Granbo" PostBackValue="0" Radius="60" X="562" Y="211" />
                <asp:CircleHotSpot AlternateText="Granstua" PostBackValue="1" Radius="60" X="743" Y="290" />
                <asp:CircleHotSpot AlternateText="Granhaug" PostBackValue="2" Radius="60" X="900" Y="270" />
                <asp:CircleHotSpot AlternateText="Grantoppen" PostBackValue="3" Radius="80" X="295" Y="335" />
            </asp:ImageMap>
        </div>
        <div class="hytte" id="boks" runat="server">
            <div class="row">

                <div class="column">

                    <img src="Bilder/granbo01.jpg" onclick="myFunction(this);"/>

                </div>

                <div class="column">

                    <img src="Bilder/granbo02.jpg" onclick="myFunction(this);"/>

                </div>

                <div class="column">

                    <img src="Bilder/granbo03.jpg" onclick="myFunction(this);"/>

                </div>

            </div>
            <div class="container">

                <span onclick="this.parentElement.style.display='none'" class="closebtn">&times;</span>

                <img id="expandedImg" style="width:100%"/>

            </div>
        </div>
    </form>
</body>
</html>
