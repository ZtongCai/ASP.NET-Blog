<%@ WebHandler Language="C#" Class="index" Debug="true" %>

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


    public class ClassGroup
{
    public string ID { get; set; }
    public string Name { get; set; }
    public string Brief { get; set; }
    public string Url { get; set; }
}

public class index : IHttpHandler {
    
    public void ProcessRequest (HttpContext context) {


       
         SqlConnection Conn;
        Conn = new SqlConnection("Data Source=iZklk0f788mwh0Z; Integrated Security=true; Initial Catalog=wwc;");
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
        context.Response.Write(JsonConvert.SerializeObject(classgroup));
    }
 
    public bool IsReusable {
        get {
            return false;
        }
    }

}