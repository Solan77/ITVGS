<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Resultater.aspx.cs" Inherits="Resultater" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        
        .RB {
            margin: 0 2em;
            color: white;        
            font-weight: bold;
        }
        .dib {
            display: flex;
            flex-direction: row;
            flex-wrap: wrap;
            margin: 2em auto;
        }
        .GV {
            margin: 1em auto;
            font-size: 1.1em;
        }
        .DL {
            width: 6em;
            height: 2em;
            margin: 1em 2em;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="dib">
            <br />
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ITtentamen %>" SelectCommand="SELECT Distanse, Navn FROM TBL_Distanse ORDER BY Distanse DESC"></asp:SqlDataSource>
            <asp:DropDownList CssClass="DL" ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource3" DataTextField="Distanse" DataValueField="Navn">
            </asp:DropDownList>
            <asp:RadioButtonList CssClass="RB" ID="RadioButtonList1" runat="server" AutoPostBack="True" Width="95px">
                <asp:ListItem Value="M" Selected="True"></asp:ListItem>
                <asp:ListItem Value="K"></asp:ListItem>
            </asp:RadioButtonList>
        </div>
        <div>    
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Horizontal" Width="100%" CssClass="GV">
                <Columns>
                    <asp:BoundField DataField="Plassering" HeaderText="Plassering" SortExpression="Plassering" />
                    <asp:BoundField DataField="Startnummer" HeaderText="Startnummer" SortExpression="Startnummer" />
                    <asp:BoundField DataField="Fornavn" HeaderText="Fornavn" SortExpression="Fornavn" />
                    <asp:BoundField DataField="Etternavn" HeaderText="Etternavn" SortExpression="Etternavn" />
                    <asp:BoundField DataField="Kjonn" HeaderText="Kjonn" SortExpression="Kjonn" />
                    <asp:BoundField DataField="Klubb" HeaderText="Klubb" SortExpression="Klubb" />
                    <asp:BoundField DataField="Nasjonalitet" HeaderText="Nasjonalitet" SortExpression="Nasjonalitet" />
                    <asp:BoundField DataField="Distanse" HeaderText="Distanse" SortExpression="Distanse" />
                    <asp:BoundField DataField="Distanse Navn" HeaderText="Distanse Navn" SortExpression="Distanse Navn" />
                    <asp:BoundField DataField="Tid" HeaderText="Tid" SortExpression="Tid" />
                </Columns>
                <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                <HeaderStyle BackColor="#115a8d" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F7F7F7" />
                <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                <SortedDescendingCellStyle BackColor="#E5E5E5" />
                <SortedDescendingHeaderStyle BackColor="#242121" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ITtentamen %>" SelectCommand="SELECT TBL_Resultat.Plassering, TBL_Resultat.Startnummer, TBL_Utover.Fornavn, TBL_Utover.Etternavn, TBL_Utover.Kjonn, TBL_Utover.Klubb, TBL_Utover.Nasjonalitet, TBL_Distanse.Distanse, TBL_Distanse.Navn AS [Distanse Navn], TBL_Resultat.Tid FROM TBL_Distanse INNER JOIN TBL_Resultat ON TBL_Distanse.Distanse = TBL_Resultat.Distanse INNER JOIN TBL_Startnummer ON TBL_Resultat.Startnummer = TBL_Startnummer.Startnummer INNER JOIN TBL_Utover ON TBL_Startnummer.Personnummer = TBL_Utover.Personnummer WHERE (TBL_Utover.Kjonn = @kjonn) AND (TBL_Distanse.Navn = @distanse)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="RadioButtonList1" Name="kjonn" PropertyName="SelectedValue" />
                    <asp:ControlParameter ControlID="DropDownList1" Name="distanse" PropertyName="SelectedValue" />
                </SelectParameters>
            </asp:SqlDataSource>
            <br />
            <br />
            <br />
        </div>
        <br />
        <asp:DropDownList CssClass="DL" ID="DropDownList2" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="Distanse" DataValueField="Distanse">
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ITtentamen %>" SelectCommand="SELECT Distanse, Navn FROM TBL_Distanse ORDER BY Distanse DESC"></asp:SqlDataSource>
            <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="SqlDataSource4" ForeColor="Black" GridLines="Horizontal" Width="100%">
                <Columns>
                    <asp:BoundField DataField="Plassering" HeaderText="Plassering" SortExpression="Plassering" />
                    <asp:BoundField DataField="Startnummer" HeaderText="Startnummer" SortExpression="Startnummer" InsertVisible="False" ReadOnly="True" />
                    <asp:BoundField DataField="Fornavn" HeaderText="Fornavn" SortExpression="Fornavn" />
                    <asp:BoundField DataField="Etternavn" HeaderText="Etternavn" SortExpression="Etternavn" />
                    <asp:BoundField DataField="Kjonn" HeaderText="Kjonn" SortExpression="Kjonn" />
                    <asp:BoundField DataField="Klubb" HeaderText="Klubb" SortExpression="Klubb" />
                    <asp:BoundField DataField="Nasjonalitet" HeaderText="Nasjonalitet" SortExpression="Nasjonalitet" />
                    <asp:BoundField DataField="Distanse" HeaderText="Distanse" SortExpression="Distanse" />
                    <asp:BoundField DataField="Distanse Navn" HeaderText="Distanse Navn" SortExpression="Distanse Navn" />
                    <asp:BoundField DataField="Tid" HeaderText="Tid" SortExpression="Tid" />
                </Columns>
                <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                <HeaderStyle BackColor="#115a8d" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F7F7F7" />
                <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                <SortedDescendingCellStyle BackColor="#E5E5E5" />
                <SortedDescendingHeaderStyle BackColor="#242121" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:ITtentamen %>" SelectCommand="SELECT TBL_Resultat.Plassering, TBL_Startnummer.Startnummer, TBL_Utover.Fornavn, TBL_Utover.Etternavn, TBL_Utover.Kjonn, TBL_Utover.Klubb, TBL_Utover.Nasjonalitet, TBL_Resultat.Distanse, TBL_Distanse.Navn AS [Distanse Navn], TBL_Resultat.Tid FROM TBL_Distanse INNER JOIN TBL_Resultat ON TBL_Distanse.Distanse = TBL_Resultat.Distanse INNER JOIN TBL_Startnummer ON TBL_Resultat.Startnummer = TBL_Startnummer.Startnummer INNER JOIN TBL_Utover ON TBL_Startnummer.Personnummer = TBL_Utover.Personnummer WHERE (TBL_Resultat.Distanse = @distanse)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="DropDownList2" Name="distanse" PropertyName="SelectedValue" />
                </SelectParameters>
        </asp:SqlDataSource>
    </form>
</body>
</html>
