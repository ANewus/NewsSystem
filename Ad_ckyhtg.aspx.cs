using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Configuration;
public partial class Ad_ckyhtg : System.Web.UI.Page
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
            string h = "SELECT * FROM tougao";
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
            cmd.CommandText = "select * from tougao where id ='" + id.ToString() + "'";
            cmd.Connection = conn;
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {

                this.Label1.Text = dr["id"].ToString().Trim();
                this.TextBox2.Text = dr["tgbt"].ToString().Trim();
                this.TextBox3.Text = dr["tgnr"].ToString().Trim();
                this.Image1.ImageUrl = dr["tgimg"].ToString().Trim();
                dr.Close();
            }
            else
            {
                Response.Write("<script>alert('该用户无投稿')</script>");
                dr.Close();
            }

        }
        catch
        {
            Response.Write("<script>alert('查询投稿失败，请重试！')</script>");

        }
        finally
        {
            conn.Close();
        }

    }
    #endregion
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
    protected void Button3_Click(object sender, EventArgs e)//搜索
    {
        string mystr = System.Configuration.ConfigurationManager.ConnectionStrings["hulu"].ToString();
        SqlConnection conn = new SqlConnection();
        conn.ConnectionString = mystr;
        try
        {
            conn.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = "select * from tougao where tgbt like '%" + this.TextBox1.Text.Trim() + "%'";
            cmd.Connection = conn;
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                this.SqlDataSource1.SelectCommand = cmd.CommandText;
                dr.Close();
            }
            else
            {
                Response.Write("<script>alert('暂无该关键字投稿')</script>");
                dr.Close();
            }

        }
        catch
        {
            Response.Write("<script>alert('查询投稿失败，请重试！')</script>");

        }
        finally
        {
            conn.Close();
        }
        /*string strSQL;
        strSQL = "select * from liuyan where lynr like '%" + this.TextBox1.Text.Trim() + "%'";
        this.SqlDataSource1.SelectCommand = strSQL;*/
    }
    protected void Button4_Click(object sender, EventArgs e)//查看全部
    {
        string h = "SELECT * FROM tougao";
        this.SqlDataSource1.SelectCommand = h;
        this.GridView1.DataBind();
    }


    #region 通过
    public void pass()
    {
        string mystr = System.Configuration.ConfigurationManager.ConnectionStrings["hulu"].ToString();
        SqlConnection conn = new SqlConnection();
        conn.ConnectionString = mystr;
        try
        {
            conn.Open();
            SqlCommand cmd = new SqlCommand();





                string SavePath = Server.MapPath("~\\img");//图片保存到文件夹下

                cmd.CommandText = "insert into news values(@BIAOTI,@NEIRONG,@IMG,@TIME)";
                cmd.Parameters.AddWithValue("@BIAOTI", this.TextBox2.Text.Trim());
                cmd.Parameters.AddWithValue("@NEIRONG", this.TextBox3.Text.Trim());
                cmd.Parameters.AddWithValue("@IMG", this.Image1.ImageUrl.Trim());
                cmd.Parameters.AddWithValue("@TIME", DateTime.Now.ToLocalTime().ToString());
                cmd.Connection = conn;
                cmd.ExecuteNonQuery();
                Response.Write("<script>alert('通过成功！')</script>");
                this.Label1.Text = "";
                this.TextBox2.Text = "";
                this.TextBox3.Text = "";
                this.Image1.ImageUrl = "";

                shanchutougao();


        }
        catch (Exception ex)
        {

            Response.Write("<script>alert('通过失败,请重试！')</script>");
        }
        finally
        {
            conn.Close();
        }
    }
    #endregion
    protected void Button1_Click(object sender, EventArgs e)
    {
        pass();
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        shanchutougao();
    }
    #region 删除投稿
    public void shanchutougao()
    {
        if (this.Label1.Text != null)
        {
            string mystr = System.Configuration.ConfigurationManager.ConnectionStrings["hulu"].ToString();
            SqlConnection conn = new SqlConnection();
            conn.ConnectionString = mystr;
            try
            {
                conn.Open();
                SqlCommand cmd = new SqlCommand();
                cmd.CommandText = "DELETE from tougao where id='" + this.Label1.Text.ToString() + "'";
                cmd.Connection = conn;
                cmd.ExecuteNonQuery();
                Response.Write("<script>alert('删除成功！')</script>");
                this.Label1.Text = "";
                this.TextBox2.Text = "";
                this.TextBox3.Text = "";
                this.Image1.ImageUrl = "";

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
            Response.Write("<script>alert('请选择要删除的投稿！')</script>");

    }
    #endregion
}