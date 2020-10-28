using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class Ad_yhgl : System.Web.UI.Page
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
        sousuo(this.TextBox1.Text.Trim());
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
    #region 搜索
    public void sousuo(string s)
    {
        string mystr = System.Configuration.ConfigurationManager.ConnectionStrings["hulu"].ToString();
        SqlConnection conn = new SqlConnection();
        conn.ConnectionString = mystr;
        try
        {
            conn.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = "select * from yonghu where yh_id='" + this.TextBox1.Text.Trim() + "'";
            cmd.Connection = conn;
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                this.Label1.Text = dr[0].ToString().Trim();
                this.Label2.Text = dr[1].ToString().Trim();
                this.Label3.Text = dr[2].ToString().Trim();
                this.Label4.Text = dr[3].ToString().Trim();
                dr.Close();
            }
            else
            {
                Response.Write("<script>alert('该用户不存在！')</script>");
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
    protected void Button2_Click(object sender, EventArgs e)
    {
        if (this.DropDownList1.SelectedValue == "删除用户")
        {
            scyh(this.TextBox1.Text.Trim());
        }
        else if (this.DropDownList1.SelectedValue == "重置密码")
        {
            czmm(this.TextBox1.Text.Trim());

        }
        else
        {
            Response.Write("<script>alert('请选择操作！')</script>");
        }

    }
    #region 重置密码
    public void czmm(string s)
    {
        string mystr = System.Configuration.ConfigurationManager.ConnectionStrings["hulu"].ToString();
        SqlConnection conn = new SqlConnection();
        conn.ConnectionString = mystr;
        try
        {
            conn.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = "update yonghu set yh_pwd='123456' where yh_id='" + this.Label1.Text.Trim() + "'";
            cmd.Connection = conn;
            cmd.ExecuteNonQuery();
            Response.Write("<script>alert('重置成功！')</script>");
           
        }
        catch
        {
            Response.Write("<script>alert('重置失败，请重试！')</script>");
        }
        finally
        {
            conn.Close();
        }
    }
    #endregion
    #region 删除用户
    public void scyh(string s)
    {
        string mystr = System.Configuration.ConfigurationManager.ConnectionStrings["hulu"].ToString();
        SqlConnection conn = new SqlConnection();
        conn.ConnectionString = mystr;
        try
        {
            conn.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = "select * from yonghu where yh_id='" + this.TextBox1.Text.Trim() + "'";
            cmd.Connection = conn;
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                cmd.CommandText = "Delete from yonghu where yh_id='" + this.TextBox1.Text.Trim() + "'";
                Response.Write("<script>alert('删除成功！')</script>");
                dr.Close();
            }
            else
            {
                Response.Write("<script>alert('该用户不存在！')</script>");
                dr.Close();
            }

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
    #endregion
}