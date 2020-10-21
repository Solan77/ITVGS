<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Fæsk.aspx.cs" Inherits="Fæsk" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Oversikt<br />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:BoundField DataField="Fornavn" HeaderText="Fornavn" SortExpression="Fornavn" />
                    <asp:BoundField DataField="Etternavn" HeaderText="Etternavn" SortExpression="Etternavn" />
                    <asp:BoundField DataField="Fiskesort" HeaderText="Fiskesort" SortExpression="Fiskesort" />
                    <asp:BoundField DataField="Dato" DataFormatString="{0:d}" HeaderText="Dato" SortExpression="Dato" />
                    <asp:BoundField DataField="Vekt" HeaderText="Vekt" SortExpression="Vekt" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DatabaseConnectionString1 %>" SelectCommand="SELECT Fisker.Fornavn, Fisker.Etternavn, Fisk.Fiskesort, Fangst.Dato, Fangst.Vekt FROM Fangst INNER JOIN Fisk ON Fangst.FiskID = Fisk.FiskID INNER JOIN Fisker ON Fangst.FiskerID = Fisker.FiskerID"></asp:SqlDataSource>
            <br />
            Over 5kg (&gt;5)<br />
            <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource2">
                <Columns>
                    <asp:BoundField DataField="Fornavn" HeaderText="Fornavn" SortExpression="Fornavn" />
                    <asp:BoundField DataField="Etternavn" HeaderText="Etternavn" SortExpression="Etternavn" />
                    <asp:BoundField DataField="Dato" DataFormatString="{0:d}" HeaderText="Dato" SortExpression="Dato" />
                    <asp:BoundField DataField="Vekt" HeaderText="Vekt" SortExpression="Vekt" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:DatabaseConnectionString1 %>" SelectCommand="SELECT Fisker.Fornavn, Fisker.Etternavn, Fangst.Dato, Fangst.Vekt FROM Fangst INNER JOIN Fisk ON Fangst.FiskID = Fisk.FiskID INNER JOIN Fisker ON Fangst.FiskerID = Fisker.FiskerID WHERE (Fangst.Vekt &gt; 5)"></asp:SqlDataSource>
            <br />
            Fangst til Ola Nordmann<br />
            <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource3">
                <Columns>
                    <asp:BoundField DataField="Fornavn" HeaderText="Fornavn" SortExpression="Fornavn" />
                    <asp:BoundField DataField="Etternavn" HeaderText="Etternavn" SortExpression="Etternavn" />
                    <asp:BoundField DataField="Vekt" HeaderText="Vekt" SortExpression="Vekt" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:DatabaseConnectionString1 %>" SelectCommand="SELECT Fisker.Fornavn, Fisker.Etternavn, Fangst.Vekt FROM Fangst INNER JOIN Fisk ON Fangst.FiskID = Fisk.FiskID INNER JOIN Fisker ON Fangst.FiskerID = Fisker.FiskerID WHERE (Fisker.Fornavn = 'Ola') AND (Fisker.Etternavn = 'Nordmann')"></asp:SqlDataSource>
            <br />
            Torsk<br />
            <asp:GridView ID="GridView4" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource4">
                <Columns>
                    <asp:BoundField DataField="Fornavn" HeaderText="Fornavn" SortExpression="Fornavn" />
                    <asp:BoundField DataField="Etternavn" HeaderText="Etternavn" SortExpression="Etternavn" />
                    <asp:BoundField DataField="Fiskesort" HeaderText="Fiskesort" SortExpression="Fiskesort" />
                    <asp:BoundField DataField="Vekt" HeaderText="Vekt" SortExpression="Vekt" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:DatabaseConnectionString1 %>" SelectCommand="SELECT Fisker.Fornavn, Fisker.Etternavn, Fisk.Fiskesort, Fangst.Vekt FROM Fangst INNER JOIN Fisk ON Fangst.FiskID = Fisk.FiskID INNER JOIN Fisker ON Fangst.FiskerID = Fisker.FiskerID WHERE (Fisk.Fiskesort = 'torsk')"></asp:SqlDataSource>
            <br />
            Fiskesort i nedtrekk<br />
            <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource6" DataTextField="Fiskesort" DataValueField="Fiskesort">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource6" runat="server" ConnectionString="<%$ ConnectionStrings:DatabaseConnectionString1 %>" SelectCommand="SELECT [Fiskesort] FROM [Fisk]"></asp:SqlDataSource>
            <br />
            <asp:GridView ID="GridView5" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource5">
                <Columns>
                    <asp:BoundField DataField="Fornavn" HeaderText="Fornavn" SortExpression="Fornavn" />
                    <asp:BoundField DataField="Etternavn" HeaderText="Etternavn" SortExpression="Etternavn" />
                    <asp:BoundField DataField="Fiskesort" HeaderText="Fiskesort" SortExpression="Fiskesort" />
                    <asp:BoundField DataField="Dato" DataFormatString="{0:d}" HeaderText="Dato" SortExpression="Dato" />
                    <asp:BoundField DataField="Vekt" HeaderText="Vekt" SortExpression="Vekt" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:DatabaseConnectionString1 %>" SelectCommand="SELECT Fisker.Fornavn, Fisker.Etternavn, Fisk.Fiskesort, Fangst.Dato, Fangst.Vekt FROM Fangst INNER JOIN Fisk ON Fangst.FiskID = Fisk.FiskID INNER JOIN Fisker ON Fangst.FiskerID = Fisker.FiskerID WHERE (Fisk.Fiskesort = @fiskesort)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="DropDownList1" Name="fiskesort" PropertyName="SelectedValue" />
                </SelectParameters>
            </asp:SqlDataSource>
            <br />
            Valgt kjønn<asp:RadioButtonList ID="RadioButtonList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource9" DataTextField="Kjonn" DataValueField="Kjonn">
            </asp:RadioButtonList>
            <asp:SqlDataSource ID="SqlDataSource9" runat="server" ConnectionString="<%$ ConnectionStrings:DatabaseConnectionString1 %>" SelectCommand="SELECT [Kjonn] FROM [Kjonn]"></asp:SqlDataSource>
            <br />
            <asp:GridView ID="GridView6" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource7">
                <Columns>
                    <asp:BoundField DataField="Fornavn" HeaderText="Fornavn" SortExpression="Fornavn" />
                    <asp:BoundField DataField="Etternavn" HeaderText="Etternavn" SortExpression="Etternavn" />
                    <asp:BoundField DataField="Kjonn" HeaderText="Kjonn" SortExpression="Kjonn" />
                    <asp:BoundField DataField="Fiskesort" HeaderText="Fiskesort" SortExpression="Fiskesort" />
                    <asp:BoundField DataField="Vekt" HeaderText="Vekt" SortExpression="Vekt" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource7" runat="server" ConnectionString="<%$ ConnectionStrings:DatabaseConnectionString1 %>" SelectCommand="SELECT Fisker.Fornavn, Fisker.Etternavn, Fisker.Kjonn, Fisk.Fiskesort, Fangst.Vekt FROM Fangst INNER JOIN Fisk ON Fangst.FiskID = Fisk.FiskID INNER JOIN Fisker ON Fangst.FiskerID = Fisker.FiskerID WHERE (Fisker.Kjonn = @kjonn)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="RadioButtonList1" Name="kjonn" PropertyName="SelectedValue" />
                </SelectParameters>
            </asp:SqlDataSource>
            <br />
            Antallfisk per fisker<br />
            <asp:GridView ID="GridView7" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource8">
                <Columns>
                    <asp:BoundField DataField="Fornavn" HeaderText="Fornavn" SortExpression="Fornavn" />
                    <asp:BoundField DataField="Etternavn" HeaderText="Etternavn" SortExpression="Etternavn" />
                    <asp:BoundField DataField="Antall fisk" HeaderText="Antall fisk" ReadOnly="True" SortExpression="Antall fisk" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource8" runat="server" ConnectionString="<%$ ConnectionStrings:DatabaseConnectionString1 %>" SelectCommand="SELECT Fisker.Fornavn, Fisker.Etternavn, COUNT(Fangst.Vekt) AS [Antall fisk] FROM Fangst INNER JOIN Fisk ON Fangst.FiskID = Fisk.FiskID INNER JOIN Fisker ON Fangst.FiskerID = Fisker.FiskerID GROUP BY Fisker.Fornavn, Fisker.Etternavn"></asp:SqlDataSource>
            <br />
            Antall fisk per fiskesort<br />
            <asp:GridView ID="GridView8" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource10">
                <Columns>
                    <asp:BoundField DataField="Fiskesort" HeaderText="Fiskesort" SortExpression="Fiskesort" />
                    <asp:BoundField DataField="Antall fisk" HeaderText="Antall fisk" ReadOnly="True" SortExpression="Antall fisk" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource10" runat="server" ConnectionString="<%$ ConnectionStrings:DatabaseConnectionString1 %>" SelectCommand="SELECT Fisk.Fiskesort, COUNT(Fangst.Vekt) AS [Antall fisk] FROM Fangst INNER JOIN Fisk ON Fangst.FiskID = Fisk.FiskID INNER JOIN Fisker ON Fangst.FiskerID = Fisker.FiskerID GROUP BY Fisk.Fiskesort"></asp:SqlDataSource>
            <br />
        </div>
    </form>
</body>
</html>
