using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class user : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void home_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/user/home.aspx");
    }
    protected void edutour_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/user/family.aspx");
    }
    protected void grptour_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/user/special.aspx");
    }

    protected void hmtour_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/user/pilgrim.aspx");
    }
    protected void destour_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/user/desire.aspx");
    }
    protected void logout_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/login/logout.aspx");
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/user/profile.aspx");
    }
    protected void Timer1_Tick(object sender, EventArgs e)
    {

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/user/search.aspx");
    }
}
