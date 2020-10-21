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

public partial class editor : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        /*string uid = Request.Cookies["id"].Value;
        string title = Request.Form.Get("title");
        string tbrief = Request.Form.Get("brief");*/
        if (Request.Cookies["id"] == null)
        {
            Response.Write("<script language=javascript >alert('没有权限访问！');</Script>");
            Response.Redirect("index.aspx");
        }

        string b = Request.Cookies["id"].Value.ToString();
        if (b != "id1")
        {
            Response.Redirect("index.aspx");
            //Session["a"] = "eee";
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {   

        string ProImg = "";
        string fileFullname = this.FileUpload1.FileName;
        string dataName = DateTime.Now.ToString("yyyyMMddhhmmss");
        string fileName = fileFullname.Substring(fileFullname.LastIndexOf("\\") + 1);
        string type = fileFullname.Substring(fileFullname.LastIndexOf(".") + 1);
        if (type == "bmp" || type == "jpg" || type == "gif" || type == "JPG" || type == "BMP" || type == "GIF" || type == "gif" || type == "PNG" || type == "png" || type == "jpeg" || type == "JPEG")
        {
            this.FileUpload1.SaveAs(Server.MapPath("./image") + "\\" + dataName + "." + type);
            ProImg = "./image/" + dataName + "." + type;
            // 呵呵路径就是这个了
        }
        else
        {
            Response.Write("alert('支持格式：jpeg|jpg|gif|bmp|');<&#47;script>");
        }
        SqlConnection Conn;
        Conn = new SqlConnection("Data Source=(local); Integrated Security=true; Initial Catalog=wwc;");
        Conn.Open();
 	string num = "";
        String strSQL = "select * from essay";
        SqlCommand Comm = new SqlCommand(strSQL, Conn);
        SqlDataReader dr = Comm.ExecuteReader();
        while (dr.Read())
        {
            num = dr["essayid"].ToString();
            
        }
        Conn.Close();
        Conn.Open();
        string classid = Request.Form.Get("classid"); //"7";
        string userid = Request.Cookies["id"].Value; //"id2";
        string text = Request.Form.Get("title"); //"eeeeeeeeee";
        string brief = Request.Form.Get("brief"); //"ffffffffffffff";
        string url = "";
        string picurl = "./image/" + url;
        DateTime date = DateTime.Now;
        string headname = num;//text.ToString();
        string content = HttpContext.Current.Server.MapPath("./content/" + headname + ".txt");
        string content2 = "./content/" + headname + ".txt";
        String sql = "insert into essay(essayclid,essayuserid,essaytext,essaybrief,essaypicurl,essaycontent,essaydate)" +
                  "values('" + classid + "','" + userid + "','" + text + "','" + brief + "','" + ProImg + "','" + content2 + "','" + date + "')";
        FileInfo myFile = new FileInfo(content);
        StreamWriter sW = myFile.CreateText();
        string strs = Request.Form["Contents"];//"早上好";
        foreach (var s in strs)
        {
            sW.WriteLine(s);
        }
        sW.Close();
        SqlCommand insertCommand = new SqlCommand(sql, Conn);
        insertCommand.ExecuteNonQuery();
        Conn.Close();

        Response.Redirect("user.aspx");
    }

    /* protected void Button1_Click(object sender, EventArgs e)
     {
         string t1 = Request.Form["Contents"];
         Response.Write(t1);
     }*/

}