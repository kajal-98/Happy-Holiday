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

public partial class user_fviewdetails : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
    DataSet ds;
    protected void Page_Load(object sender, EventArgs e)
    {
        int fdetails = Convert.ToInt32(Request.QueryString["fdetails"].ToString());
        if (fdetails != 0)
        {
            GetFamilydetails(fdetails);
        }
    }
    private void GetFamilydetails(int fdetails)
    {
        ds = new DataSet();
        ds = WebService.GetSelectedFamilyDetails(fdetails);
        if (ds.Tables.Count > 0 && ds.Tables["education"].Rows.Count > 0)
        {
            FormView1.DataSource = ds.Tables["education"].DefaultView;
            FormView1.DataBind();
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/user/book.aspx");
    }
}