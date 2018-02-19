<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Coaches.aspx.cs" Inherits="Layout_Coaches" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Coaches</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Coach Information</h1>
            <asp:Button runat="server" Text="Go back to main page" Value="MainPage" OnClick ="toMainPage"></asp:Button><br />
            
            <asp:Label Text="Look up coach: " runat="server"></asp:Label>
            <asp:TextBox ID="COACH_TEXTSEARCH" runat="server" AutoPostBack="true"></asp:TextBox>
            
            <asp:SqlDataSource
                id ="COACH_SELECT"
                runat="server"
                DataSourceMode="DataReader"
                ConnectionString="<%$ ConnectionStrings:MSI %>"
                selectCommand= "SELECT * FROM [Coach] WHERE (([coach_name] LIKE '%' + @coach_name + '%') OR ([team_name] LIKE '%' + @team_name + '%'))">
                <SelectParameters>
                    <asp:ControlParameter ControlID="COACH_TEXTSEARCH" Name="coach_name" PropertyName="Text" Type="String" DefaultValue="%" />
                    <asp:ControlParameter ControlID="COACH_TEXTSEARCH" DefaultValue="%" Name="team_name" PropertyName="Text" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
            <asp:gridview
                DataSourceID="COACH_SELECT"
                AutoGenerateColumns="False"
                emptydatatext="No information found"
                runat="server" DataKeyNames="coach_id" CellPadding="4" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:Boundfield DataField="coach_id" HeaderText="coach_id" ReadOnly="true" SortExpression="coach_id" />
                    <asp:Boundfield DataField="coach_name" HeaderText="coach_name"
                        SortExpression="coach_name" />
                    <asp:Boundfield DataField="phone_number" HeaderText="phone_number"
                        SortExpression="phone_number" />
                    <asp:Boundfield DataField="salary" HeaderText="salary"
                        SortExpression="salary" />
                    <asp:Boundfield DataField="team_name" HeaderText="team_name"
                        SortExpression="team_name" />
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
