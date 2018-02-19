<%@ Page Language="C#" AutoEventWireup="true" CodeFile="HomePage.aspx.cs" Inherits="Layout_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Shaking Baseball Database</title>
    <style>
        img:hover {
          animation: shake 0.5s;
          animation-iteration-count: infinite;
        }

        @keyframes shake {
          0% { transform: translate(1px, 1px) rotate(0deg); }
          10% { transform: translate(-1px, -2px) rotate(-1deg); }
          20% { transform: translate(-3px, 0px) rotate(1deg); }
          30% { transform: translate(3px, 2px) rotate(0deg); }
          40% { transform: translate(1px, -1px) rotate(1deg); }
          50% { transform: translate(-1px, 2px) rotate(-1deg); }
          60% { transform: translate(-3px, 1px) rotate(0deg); }
          70% { transform: translate(3px, 1px) rotate(-1deg); }
          80% { transform: translate(-1px, -1px) rotate(1deg); }
          90% { transform: translate(1px, 2px) rotate(0deg); }
          100% { transform: translate(1px, -2px) rotate(-1deg); }
        }

        /*top navigation bar*/
        .topnav {
            overflow:hidden;
            background-color:#e9e9e9;
        }

        @media screeen and (max-width: 600px) {
            .topnav a, .topnav input[type=text], .topnav {
                float:none;
                display:block;
                text-align:left;
                width:100%;
                margin:0;
                padding: 14px;
            }
        }
    </style>
</head>
<body style="height: 212px">
    <form id="form1" runat="server">
        <div class="topnav">
            <asp:Button runat="server" Text="Case Baseball Database" Value="MainPage" OnClick ="toMainPage"></asp:Button>
            <asp:Button runat="server" Text="Coaches" Value="Coaches" OnClick ="toCoaches"></asp:Button>
            <asp:Button runat="server" Text="Executives" Value="Executives" OnClick ="toExecutives"></asp:Button>
            <asp:Button runat="server" Text="Games" Value="Games" OnClick ="toGames"></asp:Button>
            <asp:Button runat="server" Text="Teams" Value="Teams" OnClick ="toTeams"></asp:Button>
            <asp:Button runat="server" Text="Players" Value="Players" OnClick ="toPlayers"></asp:Button>
            <h1 style="color:royalblue; border:double; border-color:coral; background-size:100px 100px;background-color:burlywood">What would you like to know about?</h1>
            <img src =" http://www.weirdhut.com/wp-content/uploads/2011/05/very-funny-baseball-player.jpg" alt ="duck" onclick="toMainPage"/><br />
            <!--
            <asp:Button runat="server" Text="Go back to main page" Value="MainPage" OnClick ="toMainPage"></asp:Button><br />
            <asp:Button runat="server" Text="Coaches" Value="Coaches" OnClick ="toCoaches"></asp:Button><br />
            <asp:Button runat="server" Text="Executives" Value="Executives" OnClick ="toExecutives"></asp:Button><br />
            <asp:Button runat="server" Text="Games" Value="Games" OnClick ="toGames"></asp:Button><br />
            <asp:Button runat="server" Text="Teams" Value="Teams" OnClick ="toTeams"></asp:Button><br />
            <asp:Button runat="server" Text="Players" Value="Players" OnClick ="toPlayers"></asp:Button><br />
            -->
        </div>
    </form>
</body>
</html>
