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

public partial class user_profile : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
    SqlDataAdapter da;
    DataSet ds;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (con.State == ConnectionState.Closed)
        {
            con.Open();
        }
        

    }
    protected void get_Click(object sender, EventArgs e)
    {
        da = new SqlDataAdapter("select fullname,gender,contactno,password from userregistry where emailid='" + emailid.Text + "' ", con);
        ds = new DataSet();
        da.Fill(ds, "userregistry");
        if (ds.Tables.Count > 0 && ds.Tables["userregistry"].Rows.Count > 0)
        {
            fullname.Text = ds.Tables["userregistry"].Rows[0][0].ToString();
            gender.Text = ds.Tables["userregistry"].Rows[0][1].ToString();
            mobileno.Text = ds.Tables["userregistry"].Rows[0][2].ToString();
            old.Text = ds.Tables["userregistry"].Rows[0][3].ToString();
        }
    }
    protected void update_Click(object sender, EventArgs e)
    {
        da = new SqlDataAdapter("update userregistry set fullname='" + fullname.Text + "',gender='" + gender.Text + "',contactno='" + mobileno.Text + "' where emailid='" + emailid.Text + "' ", con);
        da.SelectCommand.ExecuteNonQuery();
        Label1.Text = "Records Updated Successfully!!!!!!!!!";
    }
    protected void change_Click(object sender, EventArgs e)
    {
        da = new SqlDataAdapter("update userregistry set password='" + newpass.Text + "' where emailid='"+emailid.Text+ "'", con);
        da.SelectCommand.ExecuteNonQuery();
        Label2.Text = "Password Changed Successfully!!!!!!!!!";
    }
}