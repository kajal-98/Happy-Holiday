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

public partial class user_feedback : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
    SqlCommand cmd;
    SqlDataAdapter da;
    DataSet ds;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (con.State == ConnectionState.Closed)
        {
            con.Open();
        }
    }
    protected void submit_Click(object sender, EventArgs e)
    {
        cmd = new SqlCommand("insert into feedback(emailid,Feedbacks) values('" + username.Text + "','" + description.Text + "')", con);
        cmd.ExecuteNonQuery();
        Label1.Text = " Thank For Your Feedback .....";
        con.Close();
        
    }
}