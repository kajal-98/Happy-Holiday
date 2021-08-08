using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;

public partial class userlogin : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
    SqlDataAdapter da;
    DataSet ds;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string email = TextBox1.Text;
        if (TextBox1.Text != "" && TextBox2.Text != "")
        {
            con.Open();
            da = new SqlDataAdapter("select userid from userregistry where emailid='" + TextBox1.Text + "' and password='" + TextBox2.Text + "' ", con);
            ds = new DataSet();
            da.Fill(ds, "userregistry");
            if (ds.Tables["userregistry"].Rows.Count > 0 && ds.Tables.Count > 0)
            {
                Session.Add("userid", ds.Tables["userregistry"].Rows[0][0].ToString());
                Response.Redirect("~/user/home.aspx");
            }
            else
            {
                Label1.Text = "Invalid userid and password.";
            }
        }
        Session["emailid"] = email;
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/login/forgot.aspx");
    }
    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }
    protected void TextBox2_TextChanged(object sender, EventArgs e)
    {

    }
}