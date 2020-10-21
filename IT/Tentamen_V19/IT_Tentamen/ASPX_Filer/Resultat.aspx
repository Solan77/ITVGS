<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Resultat.aspx.cs" Inherits="Resultat" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 50%;
            color: white;
            margin: auto;
            font-size: 1.2em;
        }
        .GV {
            font-size: 1.1em;
            margin: 1em auto;
            width: 46em;
            color: white;
        }
        .bt {
            width: 5em;
            height: 1.7em;
            font-size: 1.2em;
            background-color: #115a8d;
            color: white;
            border: 2px solid #1e1d1d;
            margin: 1em 0;
            font-weight: bold;
        }
        .bt:hover {
            cursor: pointer;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td>Plassering:</td>
                <td>
                    <asp:TextBox ID="Plassering" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Tid:</td>
                <td>
                    <asp:TextBox ID="Tid" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Distanse:</td>
                <td>
                    <asp:DropDownList ID="Distanse" runat="server" DataSourceID="SqlDataSource1" DataTextField="Distanse" DataValueField="Distanse">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ITtentamen %>" SelectCommand="SELECT [Distanse] FROM [TBL_Distanse]"></asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td>Startnr:</td>
                <td>
                    <asp:DropDownList ID="Startnr" runat="server" DataSourceID="SqlDataSource2" DataTextField="Startnummer" DataValueField="Startnummer">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ITtentamen %>" SelectCommand="SELECT [Startnummer] FROM [TBL_Startnummer]"></asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Registrer" CssClass="bt" />
                </td>
                <td>
                    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ITtentamen %>" InsertCommand="INSERT INTO TBL_Resultat(Plassering, Tid, Distanse, Startnummer) VALUES (@Plassering, @Tid, @Distanse, @Startnr)" ProviderName="<%$ ConnectionStrings:ITtentamen.ProviderName %>">
                        <InsertParameters>
                            <asp:ControlParameter ControlID="Plassering" Name="Plassering" PropertyName="Text" />
                            <asp:ControlParameter ControlID="Tid" Name="Tid" PropertyName="Text" />
                            <asp:ControlParameter ControlID="Distanse" Name="Distanse" PropertyName="SelectedValue" />
                            <asp:ControlParameter ControlID="Startnr" Name="Startnr" PropertyName="SelectedValue" />
                        </InsertParameters>
                    </asp:SqlDataSource>
                </td>
            </tr>
            </table>
        <div class="style3">
        
              
            <asp:GridView ID="GridView5" runat="server" AutoGenerateColumns="False" CssClass="GV" DataKeyNames="Startnummer" DataSourceID="SqlDataSource6" EmptyDataText="There are no data records to display." BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal">
                <Columns>
                    <asp:BoundField DataField="Startnummer" HeaderText="Startnummer" InsertVisible="False" ReadOnly="True" SortExpression="Startnummer" />
                    <asp:BoundField DataField="Pulje" HeaderText="Pulje" SortExpression="Pulje" />
                    <asp:BoundField DataField="Fornavn" HeaderText="Fornavn" SortExpression="Fornavn" />
                    <asp:BoundField DataField="Etternavn" HeaderText="Etternavn" SortExpression="Etternavn" />
                    <asp:BoundField DataField="Kjonn" HeaderText="Kjonn" SortExpression="Kjonn" />
                    <asp:BoundField DataField="Klubb" HeaderText="Klubb" SortExpression="Klubb" />
                    <asp:BoundField DataField="Nasjonalitet" HeaderText="Nasjonalitet" SortExpression="Nasjonalitet" />
                    <asp:BoundField DataField="Starttid" HeaderText="Starttid" SortExpression="Starttid" />
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
            <asp:SqlDataSource ID="SqlDataSource6" runat="server" ConnectionString="<%$ ConnectionStrings:ITtentamen %>" DeleteCommand="DELETE FROM [TBL_Startnummer] WHERE [Startnummer] = @Startnummer" InsertCommand="INSERT INTO [TBL_Startnummer] ([Pulje], [Starttid], [Personnummer]) VALUES (@Pulje, @Starttid, @Personnummer)" SelectCommand="SELECT TBL_Startnummer.Startnummer, TBL_Startnummer.Pulje, TBL_Utover.Fornavn, TBL_Utover.Etternavn, TBL_Utover.Kjonn, TBL_Utover.Klubb, TBL_Utover.Nasjonalitet, TBL_Startnummer.Starttid FROM TBL_Startnummer INNER JOIN TBL_Utover ON TBL_Startnummer.Personnummer = TBL_Utover.Personnummer ORDER BY TBL_Startnummer.Startnummer" UpdateCommand="UPDATE [TBL_Startnummer] SET [Pulje] = @Pulje, [Starttid] = @Starttid, [Personnummer] = @Personnummer WHERE [Startnummer] = @Startnummer">
                <DeleteParameters>
                    <asp:Parameter Name="Startnummer" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="Pulje" Type="Int32" />
                    <asp:Parameter DbType="Time" Name="Starttid" />
                    <asp:Parameter Name="Personnummer" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Pulje" Type="Int32" />
                    <asp:Parameter DbType="Time" Name="Starttid" />
                    <asp:Parameter Name="Personnummer" Type="String" />
                    <asp:Parameter Name="Startnummer" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <br />
        
              
        <asp:GridView CssClass="GV" ID="GridView3" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource4" EmptyDataText="There are no data records to display." BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="Plassering" HeaderText="Plassering" SortExpression="Plassering" />
                <asp:BoundField DataField="Tid" HeaderText="Tid" SortExpression="Tid" />
                <asp:BoundField DataField="Distanse" HeaderText="Distanse" SortExpression="Distanse" />
                <asp:BoundField DataField="Startnummer" HeaderText="Startnummer" SortExpression="Startnummer" />
                <asp:BoundField DataField="Fornavn" HeaderText="Fornavn" SortExpression="Fornavn" />
                <asp:BoundField DataField="Etternavn" HeaderText="Etternavn" SortExpression="Etternavn" />
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
        <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:ITtentamen %>" DeleteCommand="DELETE FROM [TBL_Resultat] WHERE [Distanse] = @Distanse AND [Startnummer] = @Startnummer" InsertCommand="INSERT INTO [TBL_Resultat] ([Plassering], [Tid], [Distanse], [Startnummer]) VALUES (@Plassering, @Tid, @Distanse, @Startnummer)" SelectCommand="SELECT TBL_Resultat.Plassering, TBL_Resultat.Tid, TBL_Resultat.Distanse, TBL_Resultat.Startnummer, TBL_Utover.Fornavn, TBL_Utover.Etternavn FROM TBL_Resultat INNER JOIN TBL_Distanse ON TBL_Resultat.Distanse = TBL_Distanse.Distanse INNER JOIN TBL_Resultat AS TBL_Resultat_1 ON TBL_Distanse.Distanse = TBL_Resultat_1.Distanse INNER JOIN TBL_Startnummer ON TBL_Resultat.Startnummer = TBL_Startnummer.Startnummer AND TBL_Resultat_1.Startnummer = TBL_Startnummer.Startnummer INNER JOIN TBL_Utover ON TBL_Startnummer.Personnummer = TBL_Utover.Personnummer INNER JOIN TBL_Utover AS TBL_Utover_1 ON TBL_Startnummer.Personnummer = TBL_Utover_1.Personnummer" UpdateCommand="UPDATE [TBL_Resultat] SET [Plassering] = @Plassering, [Tid] = @Tid WHERE [Distanse] = @Distanse AND [Startnummer] = @Startnummer">
            <DeleteParameters>
                <asp:Parameter Name="Distanse" Type="Double" />
                <asp:Parameter Name="Startnummer" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Plassering" Type="Int32" />
                <asp:Parameter DbType="Time" Name="Tid" />
                <asp:Parameter Name="Distanse" Type="Double" />
                <asp:Parameter Name="Startnummer" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Plassering" Type="Int32" />
                <asp:Parameter DbType="Time" Name="Tid" />
                <asp:Parameter Name="Distanse" Type="Double" />
                <asp:Parameter Name="Startnummer" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        </div>

    </form>
</body>
</html>
