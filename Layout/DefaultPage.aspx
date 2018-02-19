<%@ Page Language="C#" AutoEventWireup="true" CodeFile="DefaultPage.aspx.cs" Inherits="Layout_DefaultPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Welcome!</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <input type="text" id="LoginButton" runat="server" />
            <asp:Button ID="Login" runat ="server" OnClick="Login_Click" /> 
        </div>
    </form>
</body>
</html>
