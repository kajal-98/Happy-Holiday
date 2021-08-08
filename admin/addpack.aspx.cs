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

public partial class admin_addpack : System.Web.UI.Page
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
    protected void Button3_Click(object sender, System.EventArgs e)
    {
        string imgpath;
        if (DropDownList1.SelectedValue == "Pilgrim" && FileUpload1.HasFile == true) 
        {
            string filename = Guid.NewGuid().ToString().Substring(0, 10) + "" + FileUpload1.PostedFile.FileName.Remove(0, FileUpload1.PostedFile.FileName.LastIndexOf("."));
            FileUpload1.SaveAs(Server.MapPath("~/image/" + filename.ToString()));
            imgpath = "~/image/" + filename.ToString();
            cmd = new SqlCommand("insert into pilgrim(packname,cost,days,place,day1,day2,day3,day4,day5,day6,meals,inclusions,exclusions,imagepath) values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "','" + TextBox6.Text + "','" + TextBox7.Text + "','" + TextBox8.Text + "','" + TextBox9.Text + "','" + TextBox10.Text + "','" + TextBox11.Text + "','" + TextBox12.Text + "','" + TextBox13.Text + "','" + imgpath.ToString() + "')", con);
            cmd.ExecuteNonQuery();
            Response.Redirect("~/admin/pil.aspx");
            con.Close();
        }
        else if(DropDownList1.SelectedValue == "Family")
        {
            string filename = Guid.NewGuid().ToString().Substring(0, 10) + "" + FileUpload1.PostedFile.FileName.Remove(0, FileUpload1.PostedFile.FileName.LastIndexOf("."));
            FileUpload1.SaveAs(Server.MapPath("~/image/" + filename.ToString()));
            imgpath = "~/image/" + filename.ToString();
            cmd = new SqlCommand("insert into education(packname,cost,days,place,day1,day2,day3,day4,day5,day6,meals,inclusions,exclusions,imagepath) values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "','" + TextBox6.Text + "','" + TextBox7.Text + "','" + TextBox8.Text + "','" + TextBox9.Text + "','" + TextBox10.Text + "','" + TextBox11.Text + "','" + TextBox12.Text + "','" + TextBox13.Text + "','" + imgpath.ToString() + "')", con);
            cmd.ExecuteNonQuery();
            Response.Redirect("~/admin/fam.aspx");
            con.Close();
        }
        else
        {
            string filename = Guid.NewGuid().ToString().Substring(0, 10) + "" + FileUpload1.PostedFile.FileName.Remove(0, FileUpload1.PostedFile.FileName.LastIndexOf("."));
            FileUpload1.SaveAs(Server.MapPath("~/image/" + filename.ToString()));
            imgpath = "~/image/" + filename.ToString();
            cmd = new SqlCommand("insert into special(packname,cost,days,place,day1,day2,day3,day4,day5,day6,meals,inclusions,exclusions,imagepath) values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "','" + TextBox6.Text + "','" + TextBox7.Text + "','" + TextBox8.Text + "','" + TextBox9.Text + "','" + TextBox10.Text + "','" + TextBox11.Text + "','" + TextBox12.Text + "','" + TextBox13.Text + "','" + imgpath.ToString() + "')", con);
            cmd.ExecuteNonQuery();
            Response.Redirect("~/admin/spe.aspx");
            con.Close();
        }
    }
    protected void TextBox4_TextChanged(object sender, System.EventArgs e)
    {

    }
}