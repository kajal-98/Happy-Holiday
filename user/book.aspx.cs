using System;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class user_book : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\holodaydata.mdf;Integrated Security=True;User Instance=True;");
    SqlDataAdapter da;
    SqlCommand cmd;
    DataSet ds;
    
    protected void Page_Load(object sender, EventArgs e)
    {
        if (con.State == ConnectionState.Closed)
        {
            con.Open();
        }
        
        if (DropDownList2.SelectedValue == "Pilgrim")
        {
            ds = new DataSet();
            ds = WebService.GetPilgrim();
            if (ds.Tables.Count > 0 && ds.Tables["pilgrim"].Rows.Count > 0)
            {
                DropDownList3.DataSource = ds.Tables["pilgrim"].DefaultView;
                DropDownList3.DataTextField = ("packname");
                DropDownList3.DataBind();
            }

        }
        else if (DropDownList2.SelectedValue == "Family")
        {
            ds = new DataSet();
            ds = WebService.GetFamily();
            if (ds.Tables.Count > 0 && ds.Tables["education"].Rows.Count > 0)
            {
                DropDownList3.DataSource = ds.Tables["education"].DefaultView;
                DropDownList3.DataTextField = ("packname");
                DropDownList3.DataBind();
            }
        }
        else
        {
            ds = new DataSet();
            ds = WebService.GetSpecial();
            if (ds.Tables.Count > 0 && ds.Tables["special"].Rows.Count > 0)
            {
                DropDownList3.DataSource = ds.Tables["special"].DefaultView;
                DropDownList3.DataTextField = ("packname");
                DropDownList3.DataBind();
            }
        }
    }
    
    protected void DropDownList2_SelectedIndexChanged(object sender, System.EventArgs e)
    {
        
    }
    protected void DropDownList3_SelectedIndexChanged(object sender, System.EventArgs e)
    {
        
    }
    protected void Button1_Click(object sender, System.EventArgs e)
    {
        cmd = new SqlCommand("insert into records(EmailId,PackageType,PackageName,NoOfPersons,TPrice,Date) values('" + TextBox1.Text + "','" + DropDownList2.SelectedValue + "','"+ DropDownList3.SelectedValue +"','" + TextBox2.Text + "','" + DropDownList4.SelectedValue +"',getdate() )", con);
        cmd.ExecuteNonQuery();
        Response.Redirect("~/user/confirmation.aspx");
        con.Close();
    }
}