using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Runtime.Serialization.Json;
using System.ServiceModel;
using System.ServiceModel.Web;
using System.Web.Script.Serialization;
using Newtonsoft.Json;

public class ClassGroup
{
    public string ID { get; set; }
    public string Name { get; set; }
    public string Brief { get; set; }
    public string Url { get; set; }
}
public partial class test : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlConnection Conn;
        Conn = new SqlConnection("Data Source=DESKTOP-MLSL96I; Integrated Security=true; Initial Catalog=wwc;");
        Conn.Open();
        String strSQL = "select * from class";
        SqlCommand Comm = new SqlCommand(strSQL, Conn);
        SqlDataReader dr = Comm.ExecuteReader();
        List<ClassGroup> classgroup = new List<ClassGroup>();
        while (dr.Read())
        {
            ClassGroup element = new ClassGroup();
            element.ID = dr["classid"].ToString();
            element.Name = dr["classname"].ToString();
            element.Brief = dr["classbrief"].ToString();
            element.Url = dr["classpicurl"].ToString();
            classgroup.Add(element);
        }
        Response.Write(JsonConvert.SerializeObject(classgroup));
    }
}
