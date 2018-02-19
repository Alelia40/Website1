<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Customers.aspx.cs" Inherits="Layout_Customers" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Customers</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Customer Information</h1>
            
            <asp:Button runat="server" Text="Go back to main page" Value="MainPage" OnClick ="toMainPage"></asp:Button><br />

            <asp:Label Text="Look up customer: " runat="server"></asp:Label>
            <asp:TextBox ID="CUSTOMERNAME_TEXTSEARCH" runat="server" AutoPostBack="true"></asp:TextBox>

            <asp:SqlDataSource
                id ="CUSTOMER_SELECT"
                runat="server"
                DataSourceMode="DataReader"
                ConnectionString="<%$ ConnectionStrings:MSI %>"
                selectCommand="SELECT * FROM [Customer] WHERE ([customer_name] LIKE '%' + @customer_name + '%')">
                <SelectParameters>
                    <asp:ControlParameter ControlID="CUSTOMERNAME_TEXTSEARCH" DefaultValue="%" Name="customer_name" PropertyName="Text" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
            <asp:gridview
                DataSourceID="CUSTOMER_SELECT"
                AutoGenerateColumns="False"
                emptydatatext="No information found"
                runat="server" DataKeyNames="customer_id" CellPadding="4" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:Boundfield DataField="customer_id" HeaderText="Customer ID" ReadOnly="true" SortExpression="customer_id" />
                    <asp:Boundfield DataField="customer_name" HeaderText="Customer Name"
                        SortExpression="customer_name" />
                </Columns>
                <EditRowStyle BackColor="#2461BF" />
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#EFF3FB" />
                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F5F7FB" />
                <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                <SortedDescendingCellStyle BackColor="#E9EBEF" />
                <SortedDescendingHeaderStyle BackColor="#4870BE" />
            </asp:gridview>
        </div>
    </form>
</body>
</html>
