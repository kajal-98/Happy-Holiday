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

public partial class user_desire : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
    SqlCommand cmd;
    SqlDataAdapter da;
    DataSet ds;
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Text = Guid.NewGuid().ToString().Substring(0, 6);
        if (con.State == ConnectionState.Closed)
        {
            con.Open();
        }
    }
    
    protected void send_Click(object sender, EventArgs e)
    {
        cmd = new SqlCommand("insert into desire(name,email,address,contact,destination,type,accomodation,transport,budget,date,duration,adult,child,description) values('" + name.Text + "','" + email.Text + "','" + address.Text + "','" + mobileno.Text + "','" + DropDownList1.SelectedValue + "','" + DropDownList2.SelectedValue + "','" + DropDownList3.SelectedValue + "','" + DropDownList4.SelectedValue + "','" + TextBox1.Text + "','" + calender.Text + "','" + TextBox2.Text + "','" + adult.Text + "','" + child.Text + "','" + other.Text + "')", con);
        cmd.ExecuteNonQuery();
        Response.Redirect("~/user/confirmation.aspx");
        con.Close();
    }
}