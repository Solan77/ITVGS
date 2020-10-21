<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Oppgave5.aspx.cs" Inherits="Oppgave5" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Antall strater på ulike distanser<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:BoundField DataField="Lengde" HeaderText="Lengde" SortExpression="Lengde" />
                    <asp:BoundField DataField="Antall starter" HeaderText="Antall starter" ReadOnly="True" SortExpression="Antall starter" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT TBL_Distanse.Lengde, COUNT(TBL_Registreringer.Utovernummer) AS [Antall starter] FROM TBL_Distanse INNER JOIN TBL_Registreringer ON TBL_Distanse.Distansenummer = TBL_Registreringer.Distansenummer INNER JOIN TBL_Utover ON TBL_Registreringer.Utovernummer = TBL_Utover.Utovernummer INNER JOIN TBL_Klubb ON TBL_Utover.Klubbnavn = TBL_Klubb.Klubbnavn GROUP BY TBL_Distanse.Lengde ORDER BY [Antall starter] DESC"></asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
