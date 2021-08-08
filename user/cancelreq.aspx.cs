using System;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class user_cancelreq : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\holodaydata.mdf;Integrated Security=True;User Instance=True;");
    SqlDataAdapter adp;
    SqlCommand cmd;
    DataSet ds;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void showdetails_Click(object sender, EventArgs e)
    {
        /*string id = TextBox1.Text;
        cmd = new SqlCommand("select * from records where Emailid='"+id+"'",con);
        adp = new SqlDataAdapter(cmd);
        ds = new DataSet();
        adp.Fill(ds);
        GridView1.DataSource = ds;
        GridView1.DataBind();
        con.Close();*/
    }
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        /*Label rid = new Label();
        rid = (Label)GridView1.Rows[e.RowIndex].Cells[2].FindControl("RecordId");
        cmd = new SqlCommand("delete from records where RecordId='" + rid.Text + "'", con);
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();*/
    }
}