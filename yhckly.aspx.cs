using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
public partial class yhckly : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        if (Session["name"] == null)
        {
            Response.Write("<script>alert('请先登录！');window.location.href='Login.aspx'</script>");
        }
        else
        {
            string h = "SELECT * FROM liuyan where yh_id='" + Session["name"] .ToString()+ "'";
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
                this.TextBox3.Text = dr["lynr"].ToString().Trim();
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

    #region 确认修改
    public void querenxiugai()
    {
        if (this.TextBox3.Text != null)
        {
            string mystr = System.Configuration.ConfigurationManager.ConnectionStrings["hulu"].ToString();
            SqlConnection conn = new SqlConnection();
            conn.ConnectionString = mystr;
            try
            {
                conn.Open();
                SqlCommand cmd = new SqlCommand();
                cmd.CommandText = "update liuyan set lynr='" + this.TextBox3.Text.Trim() + "',lytime='" + DateTime.Now.ToLocalTime().ToString() + "' where yh_id='" + Session["name"].ToString() + "'";
                cmd.Connection = conn;
                cmd.ExecuteNonQuery();
                Response.Write("<script>alert('修改成功！')</script>");
                this.TextBox3.Text = "";
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

    }
    #endregion
    protected void Button1_Click(object sender, EventArgs e)
    {
        querenxiugai();
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        shanchuwenzhang();
    }
    #region 删除文章
    public void shanchuwenzhang()
    {
        if (this.TextBox3.Text != null)
        {
            string mystr = System.Configuration.ConfigurationManager.ConnectionStrings["hulu"].ToString();
            SqlConnection conn = new SqlConnection();
            conn.ConnectionString = mystr;
            try
            {
                conn.Open();
                SqlCommand cmd = new SqlCommand();
                cmd.CommandText = "DELETE from liuyan where yh_id='" + Session["name"].ToString() + "'";
                cmd.Connection = conn;
                cmd.ExecuteNonQuery();
                Response.Write("<script>alert('删除成功！')</script>");
                this.TextBox3.Text = "";
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
    }
    #endregion
}