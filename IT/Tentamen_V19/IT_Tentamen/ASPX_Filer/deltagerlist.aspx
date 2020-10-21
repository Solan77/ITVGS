<%@ Page Language="C#" AutoEventWireup="true" CodeFile="deltagerlist.aspx.cs" Inherits="deltagerlist" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        .DL {
            width: 6em;
            height: 2em;
            margin: 1em 2em;
        }
        .GV {
            font-size: 1.1em;
            width: 47.9em;
            color: white;
        }
        .div {
            display: flex;
            flex-direction: row;
            flex-wrap: wrap;
        }
        .auto-style1 {
            font-size: 1.1em;
            color: white;
            margin: auto;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" CssClass="DL">
                <asp:ListItem Value="M"></asp:ListItem>
                <asp:ListItem Value="K"></asp:ListItem>
            </asp:DropDownList>
        </div>
        <div class="div">
            
            <asp:GridView ID="GridView5" runat="server" AutoGenerateColumns="False" CssClass="auto-style1" DataKeyNames="Startnummer" DataSourceID="SqlDataSource2" EmptyDataText="There are no data records to display." BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal" Width="53em">
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
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ITtentamen %>" DeleteCommand="DELETE FROM [TBL_Startnummer] WHERE [Startnummer] = @Startnummer" InsertCommand="INSERT INTO [TBL_Startnummer] ([Pulje], [Starttid], [Personnummer]) VALUES (@Pulje, @Starttid, @Personnummer)" SelectCommand="SELECT TBL_Startnummer.Startnummer, TBL_Startnummer.Pulje, TBL_Utover.Fornavn, TBL_Utover.Etternavn, TBL_Utover.Kjonn, TBL_Utover.Klubb, TBL_Utover.Nasjonalitet, TBL_Startnummer.Starttid FROM TBL_Startnummer INNER JOIN TBL_Utover ON TBL_Startnummer.Personnummer = TBL_Utover.Personnummer WHERE (TBL_Utover.Kjonn = @kjonn) ORDER BY TBL_Startnummer.Startnummer" UpdateCommand="UPDATE [TBL_Startnummer] SET [Pulje] = @Pulje, [Starttid] = @Starttid, [Personnummer] = @Personnummer WHERE [Startnummer] = @Startnummer">
                <DeleteParameters>
                    <asp:Parameter Name="Startnummer" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="Pulje" Type="Int32" />
                    <asp:Parameter DbType="Time" Name="Starttid" />
                    <asp:Parameter Name="Personnummer" Type="String" />
                </InsertParameters>
                <SelectParameters>
                    <asp:ControlParameter ControlID="DropDownList1" Name="kjonn" PropertyName="SelectedValue" />
                </SelectParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Pulje" Type="Int32" />
                    <asp:Parameter DbType="Time" Name="Starttid" />
                    <asp:Parameter Name="Personnummer" Type="String" />
                    <asp:Parameter Name="Startnummer" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <br />
        </div>
        
    </form>
</body>
</html>
