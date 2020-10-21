<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Oppgave3.aspx.cs" Inherits="Oppgave3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 165px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2">Registrer ny klubb</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">Klubbnavn:</td>
                    <td>
                        <asp:TextBox ID="txt_Klubbnavn" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Fylke:</td>
                    <td>
                        <asp:TextBox ID="txt_Fylke" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Epost:</td>
                    <td>
                        <asp:TextBox ID="txt_Epost" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Registrer" Width="99px" />
                    </td>
                    <td>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" InsertCommand="INSERT INTO TBL_Klubb(Klubbnavn, Fylke, Epost) VALUES (@Klubbnavn, @Fylke, @Epost)" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>">
                            <InsertParameters>
                                <asp:ControlParameter ControlID="txt_Klubbnavn" Name="Klubbnavn" PropertyName="Text" />
                                <asp:ControlParameter ControlID="txt_Fylke" Name="Fylke" PropertyName="Text" />
                                <asp:ControlParameter ControlID="txt_Epost" Name="Epost" PropertyName="Text" />
                            </InsertParameters>
                        </asp:SqlDataSource>
                    </td>
                </tr>
            </table>
        </div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Klubbnavn" DataSourceID="SqlDataSource2" EmptyDataText="There are no data records to display.">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="Klubbnavn" HeaderText="Klubbnavn" ReadOnly="True" SortExpression="Klubbnavn" />
                <asp:BoundField DataField="Fylke" HeaderText="Fylke" SortExpression="Fylke" />
                <asp:BoundField DataField="Epost" HeaderText="Epost" SortExpression="Epost" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [TBL_Klubb] WHERE [Klubbnavn] = @Klubbnavn" InsertCommand="INSERT INTO [TBL_Klubb] ([Klubbnavn], [Fylke], [Epost]) VALUES (@Klubbnavn, @Fylke, @Epost)" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT [Klubbnavn], [Fylke], [Epost] FROM [TBL_Klubb]" UpdateCommand="UPDATE [TBL_Klubb] SET [Fylke] = @Fylke, [Epost] = @Epost WHERE [Klubbnavn] = @Klubbnavn">
            <DeleteParameters>
                <asp:Parameter Name="Klubbnavn" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Klubbnavn" Type="String" />
                <asp:Parameter Name="Fylke" Type="String" />
                <asp:Parameter Name="Epost" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Fylke" Type="String" />
                <asp:Parameter Name="Epost" Type="String" />
                <asp:Parameter Name="Klubbnavn" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </form>
</body>
</html>
