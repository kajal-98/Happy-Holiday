using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void profile_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/admin/profile.aspx");
    }
    protected void booking_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/admin/details.aspx");
    }
    protected void addpack_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/admin/pack.aspx");
    }
    protected void feedback_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/admin/feedback.aspx");
    }
    protected void logout_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/login/logout.aspx");
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/admin/userdetails.aspx");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/admin/visit.aspx");
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/admin/desirereq.aspx");
    }
}
