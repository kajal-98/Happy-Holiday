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

public partial class user_spviewdetails : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
    DataSet ds;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.QueryString.Count > 0)
        {
            int sdetails = Convert.ToInt32(Request.QueryString["sdetails"].ToString());
            if (sdetails != 0)
            {
                GetSpecialdetails(sdetails);
            }
        }
    }
    private void GetSpecialdetails(int sdetails)
    {
        ds = new DataSet();
        ds = WebService.GetSelectedSpecialDetails(sdetails);
        if (ds.Tables.Count > 0 && ds.Tables["special"].Rows.Count > 0)
        {
            FormView1.DataSource = ds.Tables["special"].DefaultView;
            FormView1.DataBind();
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {

    }
}