using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
public partial class Ad_ckyhly : System.Web.UI.Page
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
            string h = "SELECT * FROM liuyan";
            this.SqlDataSource1.SelectCommand = h;
            this.GridView1.DataBind();
        }
    }
    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "xuanze")
        {
            int k = Convert.ToInt32(e.CommandArgument);
            string Uid = this.GridView1.DataKeys[k].Value.ToString();
            chaxun(Uid);
        }
    }
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
            cmd.CommandText = "select * from liuyan where id ='" + id.ToString() + "'";
            cmd.Connection = conn;
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                this.Label3.Text = dr["id"].ToString().Trim();
                this.Label2.Text = dr["lynr"].ToString().Trim();
                this.Label1.Text = dr["yh_id"].ToString().Trim();
                dr.Close();
            }
            else
            {
                Response.Write("<script>alert('该用户无留言')</script>");
                dr.Close();
            }

        }
        catch
        {
            Response.Write("<script>alert('查询留言失败，请重试！')</script>");

        }
        finally
        {
            conn.Close();
        }

    }
    #endregion

    protected void Button3_Click(object sender, EventArgs e) //搜索
    {
        string mystr = System.Configuration.ConfigurationManager.ConnectionStrings["hulu"].ToString();
        SqlConnection conn = new SqlConnection();
        conn.ConnectionString = mystr;
        try
        {
            conn.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = "select * from liuyan where yh_id like '%" + this.TextBox1.Text.Trim() + "%'";
            cmd.Connection = conn;
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                this.SqlDataSource1.SelectCommand = cmd.CommandText;
                
                dr.Close();
            }
            else
            {
                Response.Write("<script>alert('该用户无留言')</script>");
                dr.Close();
            }

        }
        catch
        {
            Response.Write("<script>alert('查询留言失败，请重试！')</script>");

        }
        finally
        {
            conn.Close();
        }
        /*string strSQL;
        strSQL = "select * from liuyan where lynr like '%" + this.TextBox1.Text.Trim() + "%'";
        this.SqlDataSource1.SelectCommand = strSQL;*/
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        string h = "SELECT * FROM liuyan";
        this.SqlDataSource1.SelectCommand = h;
        this.GridView1.DataBind();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string mystr = System.Configuration.ConfigurationManager.ConnectionStrings["hulu"].ToString();
        SqlConnection conn = new SqlConnection();
        conn.ConnectionString = mystr;
        try
        {
            conn.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = "update liuyan set Ad_hf='" + this.TextBox3.Text.Trim() + "',hftime='" + DateTime.Now.ToLocalTime().ToString() + "' where id='" + this.Label3.Text.Trim() + "'";
            cmd.Connection = conn;
            cmd.ExecuteNonQuery();
            Response.Write("<script>alert('回复成功！')</script>");
            this.TextBox3.Text = "";

        }
        catch
        {
            Response.Write("<script>alert('灰度失败，请重试！')</script>");
        }
        finally
        {
            conn.Close();
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
}