using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class tuichu : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["name"] != null)
        {
            Session.Clear();
            Response.Write("<script>alert('退出成功！');window.location.href='main.aspx'</script>");
        }
        else
            Response.Write("<script>alert('您未登陆！');window.location.href='main.aspx'</script>");
    }
}