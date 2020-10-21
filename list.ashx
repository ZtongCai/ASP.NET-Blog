<%@ WebHandler Language="C#" Class="list" %>

using System;
using System.Web;
using System.Collections.Generic;
using System.Linq;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using Newtonsoft.Json;


public class BookGroup
{
    public string Id { get; set; }
    public string Text { get; set; }
    public string Brief { get; set; }
    public string Url { get; set; }
    public string Date { get; set; }
}
public class list : IHttpHandler {




    public void ProcessRequest (HttpContext context) {
        SqlConnection Conn;
        Conn = new SqlConnection("Data Source=iZklk0f788mwh0Z; Integrated Security=true; Initial Catalog=wwc;");
        Conn.Open();
        //string str = "12";
        string str = context.Request.Form["ID"];
        String strSQL = "select essayid,essaytext,essaybrief,essaypicurl,essaydate from essay where essayclid like '%" + str + "%' ";
        SqlCommand Comm = new SqlCommand(strSQL, Conn);
        SqlDataReader dr = Comm.ExecuteReader();
        List<BookGroup> bookgroup = new List<BookGroup>();
        while (dr.Read())
        {
            BookGroup book = new BookGroup();
            book.Id = dr["essayid"].ToString();
            book.Text = dr["essaytext"].ToString();
            book.Brief = dr["essaybrief"].ToString();
            book.Url = dr["essaypicurl"].ToString();
            book.Date = dr["essaydate"].ToString();
            bookgroup.Add(book);
        }
        context.Response.Write(JsonConvert.SerializeObject(bookgroup));
    }

    public bool IsReusable {
        get {
            return false;
        }
    }

}