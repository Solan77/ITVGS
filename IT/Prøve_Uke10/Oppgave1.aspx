<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Oppgave1.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Oversikt registrerte starter:<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Startnummer" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:BoundField DataField="Startnummer" HeaderText="Startnummer" ReadOnly="True" SortExpression="Startnummer" />
                    <asp:BoundField DataField="Fornavn" HeaderText="Fornavn" SortExpression="Fornavn" />
                    <asp:BoundField DataField="Etternavn" HeaderText="Etternavn" SortExpression="Etternavn" />
                    <asp:BoundField DataField="Klubbnavn" HeaderText="Klubbnavn" SortExpression="Klubbnavn" />
                    <asp:BoundField DataField="Lengde" HeaderText="Lengde" SortExpression="Lengde" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT TBL_Registreringer.Startnummer, TBL_Utover.Fornavn, TBL_Utover.Etternavn, TBL_Utover.Klubbnavn, TBL_Distanse.Lengde FROM TBL_Distanse INNER JOIN TBL_Registreringer ON TBL_Distanse.Distansenummer = TBL_Registreringer.Distansenummer INNER JOIN TBL_Utover ON TBL_Registreringer.Utovernummer = TBL_Utover.Utovernummer INNER JOIN TBL_Klubb ON TBL_Utover.Klubbnavn = TBL_Klubb.Klubbnavn"></asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
