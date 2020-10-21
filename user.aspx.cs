using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class user : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.Cookies["id"] == null) {
            Response.Write("<script language=javascript >alert('没有权限访问！');</Script>");
            Response.Redirect("login.aspx");
        }
     
        string b = Request.Cookies["id"].Value.ToString();
        if (b != "id1")
        {
            Response.Redirect("login.aspx");
            //Session["a"] = "eee";
        }
        //Response.Write(b);
    }
}