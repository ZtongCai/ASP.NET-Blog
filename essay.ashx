<%@ WebHandler Language="C#" Class="essay" %>

using System;
using System.Web;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Runtime.Serialization.Json;
using System.ServiceModel;
using System.ServiceModel.Web;
using System.Web.Script.Serialization;
using Newtonsoft.Json;
using System.Collections.Generic;


    
public class Essay
{
    public string Class { get; set; }
    public string Name { get; set; }
    public string Text { get; set; }
    public string Brief { get; set; }
    public string Url { get; set; }
    public string Date { get; set; }
    public string Content { get; set; }
}
public class essay : IHttpHandler {
    
    public void ProcessRequest (HttpContext context) {
        //context.Response.ContentType = "text/plain";
        //context.Response.Write("Hello World");
            SqlConnection Conn;
        Conn = new SqlConnection("Data Source=(local); Integrated Security=true; Initial Catalog=wwc;");
        Conn.Open();

        //string str = "21";
        string str = context.Request.Form["EID"];
        string mysql1 = "select essayclid from essay where essayid='" + str + "'";
        string mysql2 = "select essayuserid from essay where essayid='" + str + "'";
        SqlCommand sql1 = new SqlCommand(mysql1, Conn);
        Int32 clid = (Int32)sql1.ExecuteScalar();
        SqlCommand sql2 = new SqlCommand(mysql2, Conn);
        string usid = (string)sql2.ExecuteScalar();
        string mysql3 = "select classname from class where classid='" + clid + "'";
        SqlCommand sql3 = new SqlCommand(mysql3, Conn);
        string classname1 = (string)sql3.ExecuteScalar();
        //string str = "id1";
        String mysql4 = "select name from userr where userid='" + usid + "'";
        SqlCommand sql4 = new SqlCommand(mysql4, Conn);
        String mingzi = (String)sql4.ExecuteScalar();
        String mysql5 = "select essaytext,essaybrief,essaypicurl,essaydate,essaycontent from essay where essayid = '" + str + "' ";
        SqlCommand Comm = new SqlCommand(mysql5, Conn);
        SqlDataReader dr = Comm.ExecuteReader();
        Essay essay = new Essay();
        while (dr.Read())
        {
            essay.Text = dr["essaytext"].ToString();
            essay.Brief = dr["essaybrief"].ToString();
            essay.Url = dr["essaypicurl"].ToString();
            essay.Content = dr["essaycontent"].ToString();
            essay.Date = dr["essaydate"].ToString();
        }
        essay.Class = classname1;
        essay.Name = mingzi;
        context.Response.Write(JsonConvert.SerializeObject(essay));
        /*if (!this.IsPostBack)
        {
            string Path = Server.MapPath(essay.Content);
            insertStr(Path);
        }*/
        Conn.Close();
    }
    public bool IsReusable {
        get {
            return false;
        }
    }

}