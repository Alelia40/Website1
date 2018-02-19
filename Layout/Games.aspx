<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Games.aspx.cs" Inherits="Layout_Games" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Games</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Game History</h1>
            <asp:Button runat="server" Text="Go back to main page" Value="MainPage" OnClick ="toMainPage"></asp:Button><br />
            
            <asp:Label Text="Search for game: " runat="server"></asp:Label>
            <asp:TextBox ID="GAME_SEARCH" runat="server" AutoPostBack="true"></asp:TextBox>
            
            <asp:SqlDataSource
                id ="GAME_SELECT"
                runat="server"
                DataSourceMode="DataReader"
                ConnectionString="<%$ ConnectionStrings:MSI %>"
                selectCommand="SELECT * FROM [Game] WHERE ([game_date] = @game_date)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="GAME_SEARCH" DbType="Date" Name="game_date" PropertyName="Text"/>
                </SelectParameters>
            </asp:SqlDataSource>
            <asp:gridview
                DataSourceID="GAME_SELECT"
                AutoGenerateColumns="False"
                emptydatatext="No information found"
                runat="server" DataKeyNames="game_date,stadium">
                <Columns>
                    <asp:Boundfield DataField="game_date" HeaderText="Game Date" ReadOnly="true" SortExpression="game_date" />
                    <asp:Boundfield DataField="stadium" HeaderText="Stadium"
                        SortExpression="stadium" ReadOnly="True" />
                    <asp:Boundfield DataField="score" HeaderText="Score"
                        SortExpression="score" />
                    <asp:Boundfield DataField="winning_team" HeaderText="Winning Team"
                        SortExpression="winning_team" />
                </Columns>
            </asp:gridview>
        </div>
    </form>
</body>
</html>
