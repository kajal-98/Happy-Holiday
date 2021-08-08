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

public partial class admin_profile : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
    SqlDataAdapter da;
    DataSet ds;
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Text = Session["name"].ToString() ;
        if (con.State == ConnectionState.Closed)
        {
            con.Open();
        }
        if (Page.IsPostBack != true)
        {
            if (Session.Count > 0)
            {
                GetProfile(Convert.ToInt32(Session["n"].ToString()));
            }
            else
            {
                Response.Redirect("~/Home.aspx");
            }
        }
    }
    private void GetProfile(int n)
    {
        da = new SqlDataAdapter("select Name,Password from admin where AdminId=" + n + " ", con);
        ds = new DataSet();
        da.Fill(ds, "admin");
        if (ds.Tables.Count > 0 && ds.Tables["admin"].Rows.Count > 0)
        {
            TextBox1.Text = ds.Tables["admin"].Rows[0][0].ToString();
            TextBox2.Text = ds.Tables["admin"].Rows[0][1].ToString();
        }
    }
    
    protected void Button3_Click(object sender, EventArgs e)
    {
        da = new SqlDataAdapter("update admin set Name='" + TextBox1.Text + "',Password='" + TextBox2.Text + "' where AdminId=" + Convert.ToInt32(Session["n"].ToString()) + " ", con);
        da.SelectCommand.ExecuteNonQuery();
        GetProfile(Convert.ToInt32(Session["n"].ToString()));
        Label2.Text = "Record successfuly Updated!!!!!!!!!!";
    }
}