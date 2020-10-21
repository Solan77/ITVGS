<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Startnr.aspx.cs" Inherits="Startnr" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td>Personnummer:</td>
                <td>
                    <asp:DropDownList ID="Personnr" runat="server" DataSourceID="SqlDataSource1" DataTextField="Fornavn" DataValueField="Personnummer">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ITtentamen %>" SelectCommand="SELECT [Personnummer], [Fornavn] FROM [TBL_Utover]"></asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td>Starttid:</td>
                <td>
                    <asp:DropDownList ID="Starttid" runat="server">
                        <asp:ListItem Value="08:00:00"></asp:ListItem>
                        <asp:ListItem Value="08:30:00"></asp:ListItem>
                        <asp:ListItem Value="09:00:00"></asp:ListItem>
                        <asp:ListItem Value="09:30:00"></asp:ListItem>
                        <asp:ListItem Value="10:00:00"></asp:ListItem>
                        <asp:ListItem Value="10:30:00"></asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>Pulje:</td>
                <td>
                    <asp:DropDownList ID="Pulje" runat="server">
                        <asp:ListItem Value="1"></asp:ListItem>
                        <asp:ListItem Value="2"></asp:ListItem>
                        <asp:ListItem Value="3"></asp:ListItem>
                        <asp:ListItem Value="4"></asp:ListItem>
                        <asp:ListItem Value="5"></asp:ListItem>
                        <asp:ListItem Value="6"></asp:ListItem>
                        <asp:ListItem Value="7"></asp:ListItem>
                        <asp:ListItem Value="8"></asp:ListItem>
                        <asp:ListItem Value="9"></asp:ListItem>
                        <asp:ListItem></asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Registrer" />
                </td>
                <td>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ITtentamen %>" InsertCommand="INSERT INTO TBL_Startnummer(Pulje, Starttid, Personnummer) VALUES (@Pulje, @Starttid, @Personnr)" ProviderName="<%$ ConnectionStrings:ITtentamen.ProviderName %>">
                        <InsertParameters>
                            <asp:ControlParameter ControlID="Pulje" Name="Pulje" PropertyName="SelectedValue" />
                            <asp:ControlParameter ControlID="Starttid" Name="Starttid" PropertyName="SelectedValue" />
                            <asp:ControlParameter ControlID="Personnr" Name="Personnr" PropertyName="SelectedValue" />
                        </InsertParameters>
                    </asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <div>
        </div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Startnummer" DataSourceID="SqlDataSource3" EmptyDataText="There are no data records to display.">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="Startnummer" HeaderText="Startnummer" ReadOnly="True" SortExpression="Startnummer" />
                <asp:BoundField DataField="Pulje" HeaderText="Pulje" SortExpression="Pulje" />
                <asp:BoundField DataField="Starttid" HeaderText="Starttid" SortExpression="Starttid" />
                <asp:BoundField DataField="Personnummer" HeaderText="Personnummer" SortExpression="Personnummer" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ITtentamen %>" DeleteCommand="DELETE FROM [TBL_Startnummer] WHERE [Startnummer] = @Startnummer" InsertCommand="INSERT INTO [TBL_Startnummer] ([Pulje], [Starttid], [Personnummer]) VALUES (@Pulje, @Starttid, @Personnummer)" ProviderName="<%$ ConnectionStrings:ITtentamen.ProviderName %>" SelectCommand="SELECT [Startnummer], [Pulje], [Starttid], [Personnummer] FROM [TBL_Startnummer]" UpdateCommand="UPDATE [TBL_Startnummer] SET [Pulje] = @Pulje, [Starttid] = @Starttid, [Personnummer] = @Personnummer WHERE [Startnummer] = @Startnummer">
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
    </form>
</body>
</html>
