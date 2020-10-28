using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
public partial class Ad_xggg : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["name"] == null)
        {
            Response.Write("<script>alert('请先登录！');window.location.href='Login.aspx'</script>");
        }
        else 
        {
            Ad();
            string h = "select * from gonggao";
            this.SqlDataSource1.SelectCommand = h;
            this.GridView1.DataBind();
        }
    }
    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "xuanze")
        {
            /* int k = Convert.ToInt32(e.CommandArgument);
             this.Label1.Text = k.ToString();
           string id = this.GridView1.DataKeys[k].Value.ToString();
            Session["id"] = id;
             chaxun(id);*/

            int k = Convert.ToInt32(e.CommandArgument);
            string Uid = this.GridView1.DataKeys[k].Value.ToString();
            chaxun(Uid);
        }
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
    #region 查询
    public void chaxun(string id)
    {

        string mystr = System.Configuration.ConfigurationManager.ConnectionStrings["hulu"].ToString();
        SqlConnection conn = new SqlConnection();
        conn.ConnectionString = mystr;
        try
        {
            conn.Open();
            SqlCommand cmd = new SqlCommand();
            // cmd.CommandText = "select * from wenzhang where biaoti like'%" +this.TextBox1.Text.Trim()+ "%'";
            cmd.CommandText = "select * from gonggao where id ='" + id.ToString() + "'";
            cmd.Connection = conn;
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                this.TextBox2.Text = dr["ggbt"].ToString().Trim();
                this.TextBox3.Text = dr["ggnr"].ToString().Trim();
                dr.Close();
            }
            else
            {
                Response.Write("<script>alert('公告不存在！')</script>");
                dr.Close();
            }

        }
        catch
        {
            Response.Write("<script>alert('查询失败，请重试！')</script>");

        }
        finally
        {
            conn.Close();
        }

    }
    #endregion

    #region 确认修改
    public void querenxiugai()
    {
        string mystr = System.Configuration.ConfigurationManager.ConnectionStrings["hulu"].ToString();
        SqlConnection conn = new SqlConnection();
        conn.ConnectionString = mystr;
        try
        {
            conn.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = "update gonggao set ggnr='" + this.TextBox3.Text.Trim() + "',ggsj='" + DateTime.Now.ToLocalTime().ToString() + "' where ggbt='" + this.TextBox2.Text.Trim() + "'";
            cmd.Connection = conn;
            cmd.ExecuteNonQuery();
            Response.Write("<script>alert('修改成功！')</script>");

        }
        catch
        {
            Response.Write("<script>alert('修改失败，请重试！')</script>");
        }
        finally
        {
            conn.Close();
        }



    }
    #endregion
    protected void Button1_Click(object sender, EventArgs e)
    {
        querenxiugai();
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        string mystr = System.Configuration.ConfigurationManager.ConnectionStrings["hulu"].ToString();
        SqlConnection conn = new SqlConnection();
        conn.ConnectionString = mystr;
        try
        {
            conn.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = "select * from gonggao where ggbt like '%" + this.TextBox1.Text.Trim() + "%'";
            cmd.Connection = conn;
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                this.SqlDataSource1.SelectCommand = cmd.CommandText;
                dr.Close();
            }
            else
            {
                Response.Write("<script>alert('搜索不到,请换关键字！')</script>");
                dr.Close();
            }

        }
        catch
        {
            Response.Write("<script>alert('搜索失败，请重试！')</script>");

        }
        finally
        {
            conn.Close();
        }
        /*this.GridView1.Visible = true;
        string strSQL;
        strSQL = "select * from gonggao where ggbt like '%" + this.TextBox1.Text.Trim() + "%'";
        this.SqlDataSource1.SelectCommand = strSQL;*/
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        shanchuwenzhang();
    }
    #region 删除文章
    public void shanchuwenzhang()
    {
        if (this.TextBox2.Text != null)
        {
            string mystr = System.Configuration.ConfigurationManager.ConnectionStrings["hulu"].ToString();
            SqlConnection conn = new SqlConnection();
            conn.ConnectionString = mystr;
            try
            {
                conn.Open();
                SqlCommand cmd = new SqlCommand();
                cmd.CommandText = "DELETE from gonggao where ggbt='" + this.TextBox2.Text.Trim() + "'";
                cmd.Connection = conn;
                cmd.ExecuteNonQuery();
                Response.Write("<script>alert('删除成功！')</script>");

            }
            catch
            {
                Response.Write("<script>alert('删除失败，请重试！')</script>");
            }
            finally
            {
                conn.Close();
            }
        }
        else
            Response.Write("<script>alert('请选择要删除的文章！')</script>");

    }
    #endregion

    protected void Button4_Click(object sender, EventArgs e)
    {
        string h = "select * from gonggao";
        this.SqlDataSource1.SelectCommand = h;
        this.GridView1.DataBind();
    }
}