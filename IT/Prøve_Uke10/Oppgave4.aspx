<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Oppgave4.aspx.cs" Inherits="Oppgave4" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        Velg kjønn og klubb<br />
        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="Klubbnavn" DataValueField="Klubbnavn">
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Klubbnavn] FROM [TBL_Klubb]"></asp:SqlDataSource>
        <div>
            <asp:RadioButtonList ID="RadioButtonList1" runat="server" AutoPostBack="True">
                <asp:ListItem>G</asp:ListItem>
                <asp:ListItem>J</asp:ListItem>
            </asp:RadioButtonList>
            <br />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource2">
                <Columns>
                    <asp:BoundField DataField="Fornavn" HeaderText="Fornavn" SortExpression="Fornavn" />
                    <asp:BoundField DataField="Etternavn" HeaderText="Etternavn" SortExpression="Etternavn" />
                    <asp:BoundField DataField="Fodselsdato" DataFormatString="{0:d}" HeaderText="Fodselsdato" SortExpression="Fodselsdato" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT TBL_Utover.Fornavn, TBL_Utover.Etternavn, TBL_Utover.Fodselsdato FROM TBL_Distanse INNER JOIN TBL_Registreringer ON TBL_Distanse.Distansenummer = TBL_Registreringer.Distansenummer INNER JOIN TBL_Utover ON TBL_Registreringer.Utovernummer = TBL_Utover.Utovernummer INNER JOIN TBL_Klubb ON TBL_Utover.Klubbnavn = TBL_Klubb.Klubbnavn WHERE (TBL_Utover.Kjonn = @kjonn) AND (TBL_Klubb.Klubbnavn = @klubbnavn)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="RadioButtonList1" Name="kjonn" PropertyName="SelectedValue" />
                    <asp:ControlParameter ControlID="DropDownList1" Name="klubbnavn" PropertyName="SelectedValue" />
                </SelectParameters>
            </asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
