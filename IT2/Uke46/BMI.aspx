<%@ Page Language="C#" AutoEventWireup="true" CodeFile="BMI.aspx.cs" Inherits="BMI" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        body {
            margin: 4em;
            background-color: #e0e217;
        }
        .boks {
            width: 50%;
            margin: auto;
            text-align: center;
            padding: 5em 0;
            display: flex;
            flex-direction: row;
            font-size: 1.3em;
            background-color: #9acaf3;
        }
        .boks1 {
            width: 50%;
            text-align: right;
        }
        .boks2 {
            width: 50%;
            text-align: left;
        }
        .txt {
            width: 5em;
            text-align: justify;
            font-size: 0.8em;
        }
        .boks3 {
            width: 50%;
            margin: auto;
            text-align: center;
            font-size: 1.3em;
            background-color: #9acaf3;
            padding-bottom: 3em;
        }
        .btn {
            font-size: 1.3em;
            font-weight: bold;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="boks">
            <div class="boks1">
                Vekt: 
                <br />
                Høyde:
            </div>
            <div class="boks2">
                <asp:TextBox CssClass="txt" ID="txtV" runat="server" AutoCompleteType="Disabled"></asp:TextBox>
                kg<br />             
                <asp:TextBox CssClass="txt" ID="txtH" runat="server" AutoCompleteType="Disabled"></asp:TextBox>
                cm<br />
            </div>
            
        </div>
        <div class="boks3">        
            <asp:Button CssClass="btn" ID="btnKnapp" runat="server" Text="Regn ut" OnClick="btnKnapp_Click" />
            <br />
            <br />
            <asp:Label ID="Label1" runat="server"></asp:Label>
        </div>
    </form>
</body>
</html>
