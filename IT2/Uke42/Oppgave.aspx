<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Oppgave.aspx.cs" Inherits="Oppgave" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        .v {
            width: 45%;
            float: left;
        }
        .h {
            width: 45%;
            float: right;
            display: flex;
            flex-direction: row;
        }
        .r {
            width: 45%;
        }
        .l {
            width: 45%;
        }
    </style>
</head>
    
<body>
    <form id="form1" runat="server">
        <div class="v">
            Matrett:&nbsp;
            <asp:DropDownList ID="DropDownList1" runat="server">
                <asp:ListItem>------------------------------</asp:ListItem>
                <asp:ListItem Value="89">Chicken Harya i Kebab</asp:ListItem>
                <asp:ListItem Value="79">Chicken panch</asp:ListItem>
                <asp:ListItem Value="135">Barnemeny</asp:ListItem>
                <asp:ListItem Value="245">Tandoor i Sangam</asp:ListItem>
                <asp:ListItem Value="225">Masala Lam</asp:ListItem>
                <asp:ListItem Value="35">Nan</asp:ListItem>
                <asp:ListItem Value="45">Kheera Raita</asp:ListItem>
                <asp:ListItem Value="85">Mango Delight</asp:ListItem>
                <asp:ListItem Value="35">Mineralvann</asp:ListItem>
                <asp:ListItem Value="30">Kaffe/Te</asp:ListItem>
            </asp:DropDownList>
            <br />
            <br />
            Antall:&nbsp;
            <asp:DropDownList ID="DropDownList2" runat="server">
                <asp:ListItem>1</asp:ListItem>
                <asp:ListItem>2</asp:ListItem>
                <asp:ListItem>3</asp:ListItem>
                <asp:ListItem>4</asp:ListItem>
                <asp:ListItem>5</asp:ListItem>
                <asp:ListItem>6</asp:ListItem>
                <asp:ListItem>7</asp:ListItem>
                <asp:ListItem>8</asp:ListItem>
                <asp:ListItem>9</asp:ListItem>
            </asp:DropDownList>
            

            <br />
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" Text="Legg til" OnClick="Button1_Click" Width="62px" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button2" runat="server" Text="Avbryt" OnClick="Button2_Click" />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button3" runat="server" Text="Kvitering" OnClick="Button3_Click" />

            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            <br />

        </div>
        <div class="h">
            <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
            <div class="r">
                <asp:Label ID="Label2" runat="server" Text=""></asp:Label>
            </div>
            <div class="l">
                <asp:Label ID="Label3" runat="server" Text=""></asp:Label>
                
            </div>
            <asp:Label ID="Label4" runat="server" Text=""></asp:Label>
            
        </div>
    </form>
</body>
</html>
