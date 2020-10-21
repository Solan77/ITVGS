<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Deltager.aspx.cs" Inherits="Deltager" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Deltager</title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            margin: 1em 6em;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
     
           
            <table class="auto-style1">
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>Personnummer:</td>
                    <td>
                        <asp:TextBox ID="Personnummer" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Fornavn:</td>
                    <td>
                        <asp:TextBox ID="Fornavn" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Etternavn:</td>
                    <td>
                        <asp:TextBox ID="Etternavn" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Kjonn:</td>
                    <td>
                        <asp:TextBox ID="Kjonn" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Klubb:</td>
                    <td>
                        <asp:TextBox ID="Klubb" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Nasjonalitet</td>
                    <td>
                        <asp:TextBox ID="Nasjonalitet" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Registrer" />
                    </td>
                    <td>
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ITtentamen %>" InsertCommand="INSERT INTO TBL_Utover(Personnummer, Fornavn, Etternavn, Kjonn, Klubb, Nasjonalitet) VALUES (@Personnr, @Fornanavn, @Etternavn, @Kjonn, @klubb, @Nasjonalitet)" ProviderName="<%$ ConnectionStrings:ITtentamen.ProviderName %>">
                            <InsertParameters>
                                <asp:ControlParameter ControlID="Personnummer" Name="Personnr" PropertyName="Text" />
                                <asp:ControlParameter ControlID="Fornavn" Name="Fornanavn" PropertyName="Text" />
                                <asp:ControlParameter ControlID="Etternavn" Name="Etternavn" PropertyName="Text" />
                                <asp:ControlParameter ControlID="Kjonn" Name="Kjonn" PropertyName="Text" />
                                <asp:ControlParameter ControlID="Klubb" Name="klubb" PropertyName="Text" />
                                <asp:ControlParameter ControlID="Nasjonalitet" Name="Nasjonalitet" PropertyName="Text" />
                            </InsertParameters>
                        </asp:SqlDataSource>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
            <br />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Personnummer" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display.">
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:BoundField DataField="Personnummer" HeaderText="Personnummer" ReadOnly="True" SortExpression="Personnummer" />
                    <asp:BoundField DataField="Fornavn" HeaderText="Fornavn" SortExpression="Fornavn" />
                    <asp:BoundField DataField="Etternavn" HeaderText="Etternavn" SortExpression="Etternavn" />
                    <asp:BoundField DataField="Kjonn" HeaderText="Kjonn" SortExpression="Kjonn" />
                    <asp:BoundField DataField="Klubb" HeaderText="Klubb" SortExpression="Klubb" />
                    <asp:BoundField DataField="Nasjonalitet" HeaderText="Nasjonalitet" SortExpression="Nasjonalitet" />
                </Columns>
            </asp:GridView>
            <br />
            <br />
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ITtentamen %>" DeleteCommand="DELETE FROM [TBL_Utover] WHERE [Personnummer] = @Personnummer" InsertCommand="INSERT INTO [TBL_Utover] ([Personnummer], [Fornavn], [Etternavn], [Kjonn], [Klubb], [Nasjonalitet]) VALUES (@Personnummer, @Fornavn, @Etternavn, @Kjonn, @Klubb, @Nasjonalitet)" ProviderName="<%$ ConnectionStrings:ITtentamen.ProviderName %>" SelectCommand="SELECT [Personnummer], [Fornavn], [Etternavn], [Kjonn], [Klubb], [Nasjonalitet] FROM [TBL_Utover]" UpdateCommand="UPDATE [TBL_Utover] SET [Fornavn] = @Fornavn, [Etternavn] = @Etternavn, [Kjonn] = @Kjonn, [Klubb] = @Klubb, [Nasjonalitet] = @Nasjonalitet WHERE [Personnummer] = @Personnummer">
                <DeleteParameters>
                    <asp:Parameter Name="Personnummer" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="Personnummer" Type="String" />
                    <asp:Parameter Name="Fornavn" Type="String" />
                    <asp:Parameter Name="Etternavn" Type="String" />
                    <asp:Parameter Name="Kjonn" Type="String" />
                    <asp:Parameter Name="Klubb" Type="String" />
                    <asp:Parameter Name="Nasjonalitet" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Fornavn" Type="String" />
                    <asp:Parameter Name="Etternavn" Type="String" />
                    <asp:Parameter Name="Kjonn" Type="String" />
                    <asp:Parameter Name="Klubb" Type="String" />
                    <asp:Parameter Name="Nasjonalitet" Type="String" />
                    <asp:Parameter Name="Personnummer" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
           
       
    </form>
</body>
</html>
