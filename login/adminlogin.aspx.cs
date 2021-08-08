using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient;

public partial class adminlogin : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
    SqlCommand cmd;
    SqlDataAdapter da;
    DataSet ds;
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Session["name"] = TextBox1.Text; 
        da = new SqlDataAdapter("select AdminId from admin where Name='" + TextBox1.Text + "'and Password='" + TextBox2.Text + "'", con);
        ds = new DataSet();
        da.Fill(ds, "table");
        if (ds.Tables["table"].Rows.Count > 0)
        {
            Session.Add("n", ds.Tables["table"].Rows[0][0].ToString());

            Response.Redirect("~/admin/profile.aspx");
        }
        else
        {
             Label1.Text = "You are not an admin" ;
        }

    }
}