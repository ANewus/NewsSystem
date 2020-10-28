using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class liaotianshi : System.Web.UI.Page
{
    protected void Application_Start(object sender, EventArgs e)
    {
        Application["chats"] = null;
        Application["chatsnum"] = null;
    }
    protected void Application_End(object sender, EventArgs e)
    {
        Application["chats"] = null;
        Application["chatsnum"] = null;
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["name"] == null)
        {
            Response.Write("<script>alert('请先登录！');window.location.href='Login.aspx'</script>");
        }
        else
        {
            this.Label1.Text = Session["name"].ToString();   //把登录名赋值到labe1
            if (Application["chatnum"] != null)
            {
                TextBox1.Text = Application["chats"].ToString();

            }
        }

        this.Label2.Text = "当前在线人数：" + Application["counter"].ToString();
        if (Application["counter"].ToString() == "0")
        {
            Application["chats"] = null;
            Application["chatsnum"] = null;

        }

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        if (this.TextBox1.Text != "")
            TextBox1.Text = Application["chats"].ToString();

    }
    protected void Button2_Click(object sender, EventArgs e)
    {

        if (TextBox2.Text != "")
        {
            Application.Lock();
            Application["chats"] += Label1.Text + "说：" + TextBox2.Text + "[" + DateTime.Now.ToString() + "].\n";
            Application.UnLock();
            TextBox1.Text = Application["chats"].ToString();
            this.TextBox2.Text = "";
        }
        else
            Response.Write("<script>alert('请输入聊天内容')</script>");
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Session.Clear();
        RegisterStartupScript("提示", "<script>alert('退出成功');window.location.href='Login.aspx'</script>");

    }
}