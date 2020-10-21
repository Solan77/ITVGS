<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Spørsmål.aspx.cs" Inherits="Spørsmål" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        .boks {
            display: flex;
            flex-direction: row;
            flex-wrap: wrap;
        }
        .boks1 {
            width: 45%;
            margin: auto;
            margin-left: 2em;
            text-align: center;
        }
        .boks2 {
            width: 45%;
            margin: auto;
            margin-left: 2em;
            text-align: center;
        }
        .rbl {
            text-align: center;
            margin: auto;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="boks">
            <div class="boks1">
                <h2>1.</h2>
                <h3> Hvor mange stater er det Amerika?</h3>
                <asp:RadioButtonList CssClass="rbl" ID="rbl1" runat="server">
                    <asp:ListItem>47</asp:ListItem>
                    <asp:ListItem>49</asp:ListItem>
                    <asp:ListItem>50</asp:ListItem>
                    <asp:ListItem>51</asp:ListItem>
                    <asp:ListItem>52</asp:ListItem>
                </asp:RadioButtonList>
            </div>            
            <div class="boks2">
                <h2>2.</h2>
                <h3> Hva heter hovedstaten i Sveits?</h3>
                <asp:RadioButtonList CssClass="rbl" ID="rbl2" runat="server">
                    <asp:ListItem>Z&#252;rich</asp:ListItem>
                    <asp:ListItem>Geneve</asp:ListItem>
                    <asp:ListItem>Bern</asp:ListItem>
                    <asp:ListItem>London</asp:ListItem>
                    <asp:ListItem>Avarua</asp:ListItem>
                </asp:RadioButtonList>
            </div>
            <asp:Button ID="Button1" runat="server" Text="Svar" OnClick="Button1_Click" />
            <asp:Label ID="Label1" runat="server"></asp:Label>
        </div>
    </form>
</body>
</html>
