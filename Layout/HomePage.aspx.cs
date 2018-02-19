using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Layout_Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void toMainPage(object sender, EventArgs e)
    {
        Response.Redirect("Default.aspx");
    }

    protected void toCoaches(object sender, EventArgs e)
    {
        Response.Redirect("Coaches.aspx");
    }

    protected void toTeams(object sender, EventArgs e)
    {
        Response.Redirect("Teams.aspx");
    }

    protected void toPlayers(object sender, EventArgs e)
    {
        Response.Redirect("Players.aspx");
    }
    protected void toGames(object sender, EventArgs e)
    {
        Response.Redirect("Games.aspx");
    }

    protected void toExecutives(object sender, EventArgs e)
    {
        Response.Redirect("Executives.aspx");
    }

    protected void toCustomers(object sender, EventArgs e)
    {
        Response.Redirect("Customers.aspx");
    }
}