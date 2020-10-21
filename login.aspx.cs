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

public partial class login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       
    }

    protected void Unnamed_ServerClick(object sender, EventArgs e)
    {
        string name = Request.Form.Get("icon_prefix");
        string pwd = Request.Form.Get("password");
      
        if (name != null && pwd != null)
        {
            SqlConnection Conn;
            Conn = new SqlConnection("Data Source=(local); Integrated Security=true; Initial Catalog=wwc;");
            Conn.Open();
            string mysql1;
            mysql1 = "select count(*) from userr where userid='" + name + "'and password='" + pwd + "'";
            SqlCommand sql1 = new SqlCommand(mysql1, Conn);
            int my1 = (int)sql1.ExecuteScalar();
            if (my1 > 0)
            {
                Response.Cookies["id"].Value = name;
                Response.Redirect("user.aspx");

                //Server.Transfer("user.aspx");
            }
            else
            {
                Response.Write("<script language=javascript >alert('请正确输入用户名和密码！');</Script>");
                //Response.Write("/Script>");
            }
            Conn.Close();
        }
    }
}