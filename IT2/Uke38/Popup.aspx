<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Popup.aspx.cs" Inherits="Popup" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .boks1 {
          width: 50%;
          margin: 0 auto;
          text-align: center;
        }
        .side {
          margin: 35vh auto;
          width: 100%;
          text-align: center;
        }   
        .knapp {
            width: 30%;
            height: 5em;
            margin: 1em auto;
            padding: 1em 1.5em;
            cursor: pointer;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="side">
            <div class="boks1">
                <asp:Button CssClass="knapp" ID="Button1" runat="server" Text="Trykk meg ;)" OnClick="Button1_Click" />

            </div>
            
        </div>
    </form>
</body>
</html>
