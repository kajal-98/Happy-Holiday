using System;
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

public partial class login_forgot : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
    SqlDataAdapter da;
    DataSet ds;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        da = new SqlDataAdapter("select password from userregistry where emailid='" + TextBox1.Text + "'", con);
        ds = new DataSet();
        da.Fill(ds, "userregistry");
        if (ds.Tables.Count > 0 && ds.Tables["userregistry"].Rows.Count > 0)
        {
            Label1.Text = ds.Tables["userregistry"].Rows[0][0].ToString();
        }
    }
}