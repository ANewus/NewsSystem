using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
public partial class Ad_ggfb : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["name"] == null)
        {
            Response.Write("<script>alert('请先登录！');window.location.href='Login.aspx'</script>");
        }
        else
            Ad();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        fbgg();
    }
    #region 判断是否管理员
    public void Ad()
    {
        string mystr = System.Configuration.ConfigurationManager.ConnectionStrings["hulu"].ToString();
        SqlConnection conn = new SqlConnection();
        conn.ConnectionString = mystr;
        try
        {
            conn.Open();
            SqlCommand cmd = new SqlCommand();
            // cmd.CommandText = "select * from wenzhang where biaoti like'%" +this.TextBox1.Text.Trim()+ "%'";
            cmd.CommandText = "select * from Admin where ad_id ='" + Session["name"].ToString() + "'";
            cmd.Connection = conn;
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {

                dr.Close();
            }
            else
            {
                RegisterStartupScript("提示", "<script>alert('非管理员用户！');window.close()</script>");
                dr.Close();
            }

        }
        catch
        {
            Response.Write("<script>alert('查询用户失败，请重试！')</script>");

        }
        finally
        {
            conn.Close();
        }
    }
    #endregion
    #region 发布公告
    public void fbgg()
    {
        string mystr = System.Configuration.ConfigurationManager.ConnectionStrings["hulu"].ToString();
        SqlConnection conn = new SqlConnection();
        conn.ConnectionString = mystr;
        try
        {
            conn.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = "INSERT INTO gonggao(ggbt,ggnr,ggsj) values('" + this.TextBox1.Text.Trim() + "','" + this.TextBox2.Text.Trim() + "','" + DateTime.Now.ToLocalTime().ToString() + "')";
            cmd.Connection = conn;
            cmd.ExecuteNonQuery();
            Response.Write("<script>alert('发布成功！')</script>");
            this.TextBox1.Text = "";
            this.TextBox2.Text = "";

        }
        catch
        {
            Response.Write("<script>alert('发布失败，请重试！')</script>");
        }
        finally
        {
            conn.Close();
        }
    }
    #endregion
}