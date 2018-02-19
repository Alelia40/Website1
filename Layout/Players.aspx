<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Players.aspx.cs" Inherits="Layout_Players" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Players</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Player Information</h1>
            <asp:Button runat="server" Text="Go back to main page" Value="MainPage" OnClick ="toMainPage"></asp:Button><br />
            
            <asp:Label Text="Look up player: " runat="server"></asp:Label>
            <asp:TextBox ID="PLAYERNAME_TEXTSEARCH" runat="server" AutoPostBack="true"></asp:TextBox>
            
            <asp:SqlDataSource
                id ="PLAYER_SELECT"
                runat="server"
                DataSourceMode="DataReader"
                ConnectionString="<%$ ConnectionStrings:MSI %>"
                selectCommand="SELECT * FROM [Player] WHERE (([pname] LIKE '%' + @pname + '%') OR ([team_name] LIKE '%' + @team_name + '%'))">
                <SelectParameters>
                    <asp:ControlParameter ControlID="PLAYERNAME_TEXTSEARCH" DefaultValue="%" Name="pname" PropertyName="Text" Type="String"/>
                    <asp:ControlParameter ControlID="PLAYERNAME_TEXTSEARCH" DefaultValue="%" Name="team_name" PropertyName="Text" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
            <asp:gridview
                DataSourceID="PLAYER_SELECT"
                AutoGenerateColumns="False"
                emptydatatext="No information found"
                runat="server" DataKeyNames="player_id" CellPadding="4" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:Boundfield DataField="player_id" HeaderText="Player ID" ReadOnly="true" SortExpression="player_id" />
                    <asp:Boundfield DataField="pname" HeaderText="Player Name"
                        SortExpression="pname" />
                    <asp:Boundfield DataField="team_name" HeaderText="Team Name"
                        SortExpression="team_name" />
                    <asp:Boundfield DataField="position" HeaderText="Position"
                        SortExpression="position" />
                    <asp:Boundfield DataField="batting_avg" HeaderText="Batting Average"
                        SortExpression="batting_avg" />
                    <asp:Boundfield DataField="ranking" HeaderText="Ranking"
                        SortExpression="ranking" />
                    <asp:Boundfield DataField="age" HeaderText="Age"
                        SortExpression="age" />
                    <asp:Boundfield DataField="salary" HeaderText="Salary"
                        SortExpression="salary" />
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
