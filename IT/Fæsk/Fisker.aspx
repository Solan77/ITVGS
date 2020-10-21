<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Fisker.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 378px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2">Fæsk</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">Fiskesort:</td>
                    <td>
                        <asp:TextBox ID="Fiskesort" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Habitat:</td>
                    <td>
                        <asp:TextBox ID="Habitat" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Button ID="Button1" runat="server" Text="Registrer" OnClick="Button1_Click" Width="89px" />
                    </td>
                    <td>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DatabaseConnectionString1 %>" InsertCommand="INSERT INTO Fisk(Fiskesort, Habitat) VALUES (@Fiskesort, @Habitat)" ProviderName="<%$ ConnectionStrings:DatabaseConnectionString1.ProviderName %>">
                            <InsertParameters>
                                <asp:ControlParameter ControlID="Fiskesort" Name="Fiskesort" PropertyName="Text" />
                                <asp:ControlParameter ControlID="Habitat" Name="Habitat" PropertyName="Text" />
                            </InsertParameters>
                        </asp:SqlDataSource>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Fæsker</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">Fornavn</td>
                    <td>
                        <asp:TextBox ID="Fornavn" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Etternavn</td>
                    <td>
                        <asp:TextBox ID="Etternavn" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Kjønn</td>
                    <td>
                        <asp:DropDownList ID="Kjønn" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource3" DataTextField="Kjonn" DataValueField="Kjonn">
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:DatabaseConnectionString1 %>" SelectCommand="SELECT [Kjonn] FROM [Kjonn]"></asp:SqlDataSource>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Fødselsår:</td>
                    <td>
                        <asp:TextBox ID="Fødselsår" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Registrer" />
                    </td>
                    <td>
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:DatabaseConnectionString1 %>" InsertCommand="INSERT INTO Fisker(Fornavn, Etternavn, Kjonn, Fodselsar) VALUES (@Fornavn, @Etternavn, @Kjønn, @Fødselsår)" ProviderName="<%$ ConnectionStrings:DatabaseConnectionString1.ProviderName %>">
                            <InsertParameters>
                                <asp:ControlParameter ControlID="Fornavn" Name="Fornavn" PropertyName="Text" />
                                <asp:ControlParameter ControlID="Etternavn" Name="Etternavn" PropertyName="Text" />
                                <asp:ControlParameter ControlID="Kjønn" Name="Kjønn" PropertyName="SelectedValue" />
                                <asp:ControlParameter ControlID="Fødselsår" Name="Fødselsår" PropertyName="Text" />
                            </InsertParameters>
                        </asp:SqlDataSource>
                    </td>
                </tr>
            </table>
        </div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="FiskID" DataSourceID="SqlDataSource4" EmptyDataText="There are no data records to display.">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="FiskID" HeaderText="FiskID" ReadOnly="True" SortExpression="FiskID" />
                <asp:BoundField DataField="Fiskesort" HeaderText="Fiskesort" SortExpression="Fiskesort" />
                <asp:BoundField DataField="Habitat" HeaderText="Habitat" SortExpression="Habitat" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:DatabaseConnectionString1 %>" DeleteCommand="DELETE FROM [Fisk] WHERE [FiskID] = @FiskID" InsertCommand="INSERT INTO [Fisk] ([Fiskesort], [Habitat]) VALUES (@Fiskesort, @Habitat)" ProviderName="<%$ ConnectionStrings:DatabaseConnectionString1.ProviderName %>" SelectCommand="SELECT [FiskID], [Fiskesort], [Habitat] FROM [Fisk]" UpdateCommand="UPDATE [Fisk] SET [Fiskesort] = @Fiskesort, [Habitat] = @Habitat WHERE [FiskID] = @FiskID">
            <DeleteParameters>
                <asp:Parameter Name="FiskID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Fiskesort" Type="String" />
                <asp:Parameter Name="Habitat" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Fiskesort" Type="String" />
                <asp:Parameter Name="Habitat" Type="String" />
                <asp:Parameter Name="FiskID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <br />
        <br />
        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="FiskerID" DataSourceID="SqlDataSource5" EmptyDataText="There are no data records to display.">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="FiskerID" HeaderText="FiskerID" ReadOnly="True" SortExpression="FiskerID" />
                <asp:BoundField DataField="Fornavn" HeaderText="Fornavn" SortExpression="Fornavn" />
                <asp:BoundField DataField="Etternavn" HeaderText="Etternavn" SortExpression="Etternavn" />
                <asp:BoundField DataField="Kjonn" HeaderText="Kjonn" SortExpression="Kjonn" />
                <asp:BoundField DataField="Fodselsar" HeaderText="Fodselsar" SortExpression="Fodselsar" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:DatabaseConnectionString1 %>" DeleteCommand="DELETE FROM [Fisker] WHERE [FiskerID] = @FiskerID" InsertCommand="INSERT INTO [Fisker] ([Fornavn], [Etternavn], [Kjonn], [Fodselsar]) VALUES (@Fornavn, @Etternavn, @Kjonn, @Fodselsar)" ProviderName="<%$ ConnectionStrings:DatabaseConnectionString1.ProviderName %>" SelectCommand="SELECT [FiskerID], [Fornavn], [Etternavn], [Kjonn], [Fodselsar] FROM [Fisker]" UpdateCommand="UPDATE [Fisker] SET [Fornavn] = @Fornavn, [Etternavn] = @Etternavn, [Kjonn] = @Kjonn, [Fodselsar] = @Fodselsar WHERE [FiskerID] = @FiskerID">
            <DeleteParameters>
                <asp:Parameter Name="FiskerID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Fornavn" Type="String" />
                <asp:Parameter Name="Etternavn" Type="String" />
                <asp:Parameter Name="Kjonn" Type="String" />
                <asp:Parameter Name="Fodselsar" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Fornavn" Type="String" />
                <asp:Parameter Name="Etternavn" Type="String" />
                <asp:Parameter Name="Kjonn" Type="String" />
                <asp:Parameter Name="Fodselsar" Type="Int32" />
                <asp:Parameter Name="FiskerID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </form>
</body>
</html>
