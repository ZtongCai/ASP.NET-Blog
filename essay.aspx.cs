using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Text;
using Newtonsoft.Json;
public class eessay
{
    public string Class { get; set; }
    public string Name { get; set; }
    public string Text { get; set; }
    public string Brief { get; set; }
    public string Url { get; set; }
    public string Date { get; set; }
    public string Content { get; set; }
}
public partial class essay : System.Web.UI.Page
{
    public static String neirong = "";
    protected void Page_Load(object sender, EventArgs e)
    {
	neirong = "";
        string eid = Request["eid"].ToString();
        SqlConnection Conn;
        Conn = new SqlConnection("Data Source=(local); Integrated Security=true; Initial Catalog=wwc;");
        Conn.Open();
        //string str = "21";
        //string mysql1 = "select essayclid from essay where essayid='" + str + "'";
        //string mysql2 = "select essayuserid from essay where essayid='" + str + "'";
        //SqlCommand sql1 = new SqlCommand(mysql1, Conn);
        //Int32 clid = (Int32)sql1.ExecuteScalar();
        //SqlCommand sql2 = new SqlCommand(mysql2, Conn);
        //string usid = (string)sql2.ExecuteScalar();
        //string mysql3 = "select classname from class where classid='" + clid + "'";
        //SqlCommand sql3 = new SqlCommand(mysql3, Conn);
        //string classname1 = (string)sql3.ExecuteScalar();
        ////string str = "id1";
        //String mysql4 = "select name from userr where userid='" + usid + "'";
        //SqlCommand sql4 = new SqlCommand(mysql4, Conn);
        //String mingzi = (String)sql4.ExecuteScalar();
        String mysql5 = "select essaytext,essaybrief,essaypicurl,essaydate,essaycontent from essay where essayid = " + eid + " ";
        SqlCommand Comm = new SqlCommand(mysql5, Conn);
        SqlDataReader dr = Comm.ExecuteReader();
        eessay essay = new eessay();
        while (dr.Read())
        {
          //  essay.Text = dr["essaytext"].ToString();
           // essay.Brief = dr["essaybrief"].ToString();
           // essay.Url = dr["essaypicurl"].ToString();
            essay.Content = dr["essaycontent"].ToString();//路径
         //   essay.Date = dr["essaydate"].ToString();
        }
     //   essay.Class = classname1;
     //   essay.Name = mingzi;
      //  Response.Write(JsonConvert.SerializeObject(essay));
        if (!this.IsPostBack)
        {
            string Path = Server.MapPath(essay.Content);
            insertStr(Path);
        }
        Conn.Close();

    }
    public void insertStr(string Path)
        {
            
            string strLine = "";
            int i = 0;
            try
            {
                StreamReader sr = new StreamReader(Path, Encoding.GetEncoding("UTF-8"));
                strLine = sr.ReadLine();
                while (strLine != null)
                {
                    neirong += strLine ;
                    strLine = sr.ReadLine();
                    i++;
                }
                //Response.Write(JsonConvert.SerializeObject(neirong));//输出neirong
                //Response.Write(i);
                sr.Dispose();
                sr.Close();
            }
            catch
            {
            }
        }
}
