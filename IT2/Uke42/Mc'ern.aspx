<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Mc'ern.aspx.cs" Inherits="Mc_ern" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        tr {
            width: 50%;
        }
        .bilde {
            width: 100%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>

            <table class="auto-style1">
                <tr>
                    <td>
                        <asp:ImageButton CssClass="bilde" ID="ImageButton2" runat="server" ImageUrl="~/Bilder/big_mac.jpg" OnClick="ImageButton2_Click" />
                    </td>
                    <td>
                        <asp:ImageButton CssClass="bilde" ID="ImageButton1" runat="server" ImageUrl="~/Bilder/mc_flurry.jpg" OnClick="ImageButton1_Click" />
                    </td>
                    <td>
                        <asp:ImageButton CssClass="bilde" ID="ImageButton3" runat="server" ImageUrl="~/Bilder/t-mcdonalds-Fries-Small-Medium.jpg" OnClick="ImageButton3_Click" />
                    </td>
                    <td>
                        <asp:ImageButton CssClass="bilde" ID="ImageButton4" runat="server" ImageUrl="~/Bilder/last ned.jpg" OnClick="ImageButton4_Click" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        --------------------------------------------------------------------
                    </td>
                    <td class="auto-style2">
                        --------
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        Sum:             
                    </td>
                    <td>
                        <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>           
                    </td>
                </tr>
                
            </table>

        </div>
    </form>
</body>
</html>
