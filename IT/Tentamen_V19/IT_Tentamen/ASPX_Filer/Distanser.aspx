<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Distanser.aspx.cs" Inherits="Deltagere" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Distanser</title>
    <style>
        .tabell {
            margin: 4.5em 0;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    

          <asp:GridView CssClass="tabell" ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Distanse" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display." BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="0" CellPadding="4" ForeColor="Black" GridLines="Horizontal" Width="100%">
              <Columns>
                  <asp:BoundField DataField="Distanse" HeaderText="Distanse" ReadOnly="True" SortExpression="Distanse" />
                  <asp:BoundField DataField="Navn" HeaderText="Navn" SortExpression="Navn" />
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
          <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ITtentamen %>" DeleteCommand="DELETE FROM [TBL_Distanse] WHERE [Distanse] = @Distanse" InsertCommand="INSERT INTO [TBL_Distanse] ([Distanse], [Navn]) VALUES (@Distanse, @Navn)" ProviderName="<%$ ConnectionStrings:ITtentamen.ProviderName %>" SelectCommand="SELECT [Distanse], [Navn] FROM [TBL_Distanse]" UpdateCommand="UPDATE [TBL_Distanse] SET [Navn] = @Navn WHERE [Distanse] = @Distanse">
              <DeleteParameters>
                  <asp:Parameter Name="Distanse" Type="Double" />
              </DeleteParameters>
              <InsertParameters>
                  <asp:Parameter Name="Distanse" Type="Double" />
                  <asp:Parameter Name="Navn" Type="String" />
              </InsertParameters>
              <UpdateParameters>
                  <asp:Parameter Name="Navn" Type="String" />
                  <asp:Parameter Name="Distanse" Type="Double" />
              </UpdateParameters>
          </asp:SqlDataSource>

          
    </form>
</body>
</html>
