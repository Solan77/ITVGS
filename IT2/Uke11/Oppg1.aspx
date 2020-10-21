<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Oppg1.aspx.cs" Inherits="Oppg1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:ImageMap ID="imgBilde" runat="server" ImageUrl="~/Filer/forsidebilde.jpg">
                <asp:RectangleHotSpot Bottom="333" NavigateUrl="~/stpetersburg.html" Right="250" />
                <asp:RectangleHotSpot Bottom="333" Left="250" NavigateUrl="~/roma.html" Right="500" />
                <asp:RectangleHotSpot Bottom="333" Left="500" NavigateUrl="~/newyork.aspx" Right="750" />
            </asp:ImageMap>
        </div>
    </form>
</body>
</html>
