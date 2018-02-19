using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Layout_DefaultPage : System.Web.UI.Page
{
    private String UserField { get; set; }

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Login_Click(object sender, EventArgs e)
    {
        this.UserField = LoginButton.Value.ToString();
        if (this.UserField == "Hello")
        {
            Response.Redirect("HomePage.aspx");
        }
    }

    
}