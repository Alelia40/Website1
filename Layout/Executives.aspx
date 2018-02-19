<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Executives.aspx.cs" Inherits="Layout_Executives" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Executives</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Executive Information</h1>
            <asp:Button runat="server" Text="Go back to main page" Value="MainPage" OnClick ="toMainPage"></asp:Button><br />
            
            <asp:Label Text="Name of executive: " runat="server"></asp:Label>
            <asp:TextBox ID="EXECUTIVENAME_TEXTSEARCH" runat="server" AutoPostBack="true"></asp:TextBox>
            <asp:Label Text="Salary: " runat="server"></asp:Label>
            <asp:TextBox ID="SALARY_FILTER" runat="server" AutoPostBack="true"></asp:TextBox>

            <asp:SqlDataSource
                id ="EXECUTIVE_SELECT"
                runat="server"
                DataSourceMode="DataReader"
                ConnectionString="<%$ ConnectionStrings:MSI %>"
                selectCommand="SELECT * FROM [Executive] WHERE (([ename] LIKE '%' + @ename + '%') OR ([e_address] LIKE '%' + @e_address + '%'))">
                <SelectParameters>
                    <asp:ControlParameter ControlID="EXECUTIVENAME_TEXTSEARCH" DefaultValue="%" Name="ename" PropertyName="Text" Type="String" />
                    <asp:ControlParameter ControlID="EXECUTIVENAME_TEXTSEARCH" DefaultValue="%" Name="e_address" PropertyName="Text" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
            <asp:gridview
                DataSourceID="EXECUTIVE_SELECT"
                AutoGenerateColumns="False"
                emptydatatext="No information found"
                runat="server" DataKeyNames="exec_id" CellPadding="4" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:Boundfield DataField="exec_id" HeaderText="Executive Id"
                        InsertVisible="false" ReadOnly="true" SortExpression="exec_id" />
                    <asp:Boundfield DataField="ename" HeaderText="Executive Name"
                        SortExpression="ename" />
                    <asp:Boundfield DataField="e_address" HeaderText="Home Address"
                        SortExpression="e_address" />
                    <asp:Boundfield DataField="networth" HeaderText="Networth"
                        SortExpression="networth" />
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
