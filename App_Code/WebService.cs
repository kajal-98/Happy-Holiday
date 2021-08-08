using System;
using System.Web;
using System.Collections;
using System.Web.Services;
using System.Web.Services.Protocols;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

/// <summary>
/// Summary description for WebService
/// </summary>
[WebService(Namespace = "http://tempuri.org/")]
[WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
// To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
// [System.Web.Script.Services.ScriptService]
public class WebService : System.Web.Services.WebService
{
    static SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
    static SqlDataAdapter da;
    static DataSet ds;
    static SqlCommand cmd;

    public WebService()
    {

        //Uncomment the following line if using designed components 
        //InitializeComponent(); 
    }

    [WebMethod]
    public static DataSet GetSelectedPilgrimDetails(int pdetails)
    {
        da = new SqlDataAdapter("select packname,cost,days,place,day1,day2,day3,day4,day5,day6,meals,inclusions,exclusions,imagepath from pilgrim where pilid=" + pdetails + " ", con);
        ds = new DataSet();
        da.Fill(ds, "pilgrim");
        return ds;
    }

    [WebMethod]
    public static DataSet GetSelectedSpecialDetails(int sdetails)
    {
        da = new SqlDataAdapter("select packname,cost,days,place,day1,day2,day3,day4,day5,day6,meals,type,inclusions,exclusions,imagepath from special where spelid=" + sdetails + " ", con);
        ds = new DataSet();
        da.Fill(ds, "special");
        return ds;
    }

    [WebMethod]
    public static DataSet GetSelectedFamilyDetails(int fdetails)
    {
        da = new SqlDataAdapter("select packname,cost,days,place,day1,day2,day3,day4,day5,day6,meals,inclusions,exclusions,imagepath from education where familyid=" + fdetails + " ", con);
        ds = new DataSet();
        da.Fill(ds, "education");
        return ds;
    }

    [WebMethod]
    public static DataSet GetPilgrim()
    {
        da = new SqlDataAdapter("select packname,cost from pilgrim", con);
        ds = new DataSet();
        da.Fill(ds, "pilgrim");
        return ds;
    }

    [WebMethod]
    public static DataSet GetFamily()
    {
        da = new SqlDataAdapter("select packname,cost from education", con);
        ds = new DataSet();
        da.Fill(ds, "education");
        return ds;
    }

    [WebMethod]
    public static DataSet GetSpecial()
    {
        da = new SqlDataAdapter("select packname,cost from special", con);
        ds = new DataSet();
        da.Fill(ds, "special");
        return ds;
    }

    [WebMethod]
    public static DataSet GetPPilgrim()
    {
        da = new SqlDataAdapter("select cost from pilgrim", con);
        ds = new DataSet();
        da.Fill(ds, "pilgrim");
        return ds;
    }
}
