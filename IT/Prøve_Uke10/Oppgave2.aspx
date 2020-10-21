<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Oppgave2.aspx.cs" Inherits="Oppgave2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Jenter som løper 5km:<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:BoundField DataField="Fornavn" HeaderText="Fornavn" SortExpression="Fornavn" />
                    <asp:BoundField DataField="Etternavn" HeaderText="Etternavn" SortExpression="Etternavn" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT TBL_Utover.Fornavn, TBL_Utover.Etternavn FROM TBL_Distanse INNER JOIN TBL_Registreringer ON TBL_Distanse.Distansenummer = TBL_Registreringer.Distansenummer INNER JOIN TBL_Utover ON TBL_Registreringer.Utovernummer = TBL_Utover.Utovernummer INNER JOIN TBL_Klubb ON TBL_Utover.Klubbnavn = TBL_Klubb.Klubbnavn WHERE (TBL_Utover.Kjonn = 'J') AND (TBL_Distanse.Lengde = 5)"></asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
