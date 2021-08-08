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
public partial class user_viewdetails : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
    DataSet ds;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.QueryString.Count > 0)
        {
            int pdetails = Convert.ToInt32(Request.QueryString["pdetails"].ToString());
            if (pdetails != 0)
            {
                GetPilgrimdetails(pdetails);
            }
        }
    }
    private void GetPilgrimdetails(int pdetails)
    {
        ds = new DataSet();
        ds = WebService.GetSelectedPilgrimDetails(pdetails);
        if (ds.Tables.Count > 0 && ds.Tables["pilgrim"].Rows.Count > 0)
        {
            FormView1.DataSource = ds.Tables["pilgrim"].DefaultView;
            FormView1.DataBind();
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {

    }
}