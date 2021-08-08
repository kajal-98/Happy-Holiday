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

public partial class registration : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
    SqlDataAdapter da;
    DataSet ds;
    protected void Page_Load(object sender, EventArgs e)
    {
        sectext.Text = Guid.NewGuid().ToString().Substring(0, 6);
        if (con.State == ConnectionState.Closed)
        {
            con.Open();
        }
    }
    protected void emailid_TextChanged(object sender, EventArgs e)
    {
        da = new SqlDataAdapter("select count(emailid) from userregistry where emailid='" + emailid.Text + "' ", con);
        ds = new DataSet();
        da.Fill(ds, "userregistry");
        if (ds.Tables["userregistry"].Rows.Count == 1 && ds.Tables["userregistry"].Rows[0][0].ToString() == "1")
        {
            confirmemail.Text = "Email Id is not Available.";
            confirmemail.BackColor = System.Drawing.Color.Red;
            emailid.Focus();
        }
        else
        {
            confirmemail.Text = "Email Id is Available.";
            confirmemail.BackColor = System.Drawing.Color.Green;
            password.Focus();
        }
    }
    private int GetUserid(string emailid)
    {
        da = new SqlDataAdapter("select userid from userregistry where emailid='" + emailid.ToString() + "' ", con);
        return Convert.ToInt32(da.SelectCommand.ExecuteScalar());
    }
    protected void create_Click(object sender, EventArgs e)
    {
        if (confirmemail.Text == "Email Id is Available.")
        {
            da = new SqlDataAdapter("insert into userregistry(emailid,password,SecurityText,status,date,gender,contactno)values('" + emailid.Text + "','" + password.Text + "','" + text.Text + "','Activate',getdate(),'" + DropDownList1.SelectedValue + "','" + Mobileno.Text + "')", con);
            da.SelectCommand.ExecuteNonQuery();
            int userid = GetUserid(emailid.Text);
            if (userid > 0)
            {
                da = new SqlDataAdapter("update userregistry set fullname='" + username.Text + "' where userid='" + userid + "'", con);
                int n = da.SelectCommand.ExecuteNonQuery();
                if (n == 1)
                {
                    Label1.Text = "User Successfully registed";
                    Response.Redirect("~/login/userlogin.aspx");
                }
            }
        }
        else
        {
            confirmemail.Text = "The Email Id is already taken.Choose another Email Id.";
            confirmemail.BackColor = System.Drawing.Color.Blue;
        }
    }
   
}