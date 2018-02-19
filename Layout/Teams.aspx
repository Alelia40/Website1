<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Teams.aspx.cs" Inherits="Layout_Teams" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Teams</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Team Information</h1>
            <asp:Button runat="server" Text="Go back to main page" Value="MainPage" OnClick ="toMainPage"></asp:Button><br /> 
            
            <asp:Label Text="Team name: " runat="server"></asp:Label>
            <asp:TextBox ID="TEAMNAME_TEXTSEARCH" runat="server" AutoPostBack="true"></asp:TextBox>
               
            <asp:SqlDataSource
                id ="TEAM_SELECT"
                runat="server"
                DataSourceMode="DataReader"
                ConnectionString="<%$ ConnectionStrings:MSI %>"
                selectCommand="SELECT * FROM [Team] WHERE (([team_name] LIKE '%' + @team_name + '%') OR ([home_city] LIKE '%' + @home_city + '%') OR ([division] LIKE '%' + @division + '%'))">
                <SelectParameters>
                    <asp:ControlParameter ControlID="TEAMNAME_TEXTSEARCH" DefaultValue="%" Name="team_name" PropertyName="Text" Type="String"/>
                    <asp:ControlParameter ControlID="TEAMNAME_TEXTSEARCH" DefaultValue="%" Name="home_city" PropertyName="Text" Type="String" />
                    <asp:ControlParameter ControlID="TEAMNAME_TEXTSEARCH" DefaultValue="%" Name="division" PropertyName="Text" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
            <asp:gridview
                DataSourceID="TEAM_SELECT"
                AutoGenerateColumns="False"
                emptydatatext="No information found"
                runat="server" DataKeyNames="team_name" CellPadding="4" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:Boundfield DataField="team_name" HeaderText="Team Name" ReadOnly="true" SortExpression="team_name" />
                    <asp:Boundfield DataField="home_city" HeaderText="Home City"
                        SortExpression="home_city" />
                    <asp:Boundfield DataField="ranking" HeaderText="Ranking"
                        SortExpression="ranking" />
                    <asp:Boundfield DataField="division" HeaderText="Division"
                        SortExpression="division" />
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
