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

public partial class Ad_xgwz : System.Web.UI.Page
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
            string h = "select * from news";
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
            cmd.CommandText = "select * from news where id ='" +id.ToString()+ "'";
            cmd.Connection = conn;
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                this.Label1.Text = dr["id"].ToString().Trim();
                this.TextBox2.Text = dr["biaoti"].ToString().Trim();
                this.TextBox3.Text = dr["neirong"].ToString().Trim();
                this.Image1.ImageUrl = dr["img"].ToString().Trim();
                dr.Close();
            }
            else
            {
                Response.Write("<script>alert('文章不存在！')</script>");
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



    #region 更新
    public void gengxin()
    {
        string mystr = System.Configuration.ConfigurationManager.ConnectionStrings["hulu"].ToString();
        SqlConnection conn = new SqlConnection();
        conn.ConnectionString = mystr;
        try
        {
            conn.Open();
            SqlCommand cmd = new SqlCommand();


            string FullName = FileUpload1.PostedFile.FileName;//获取图片物理地址
            FileInfo fi = new FileInfo(FullName);
            string name = fi.Name;//获取图片名称
            string type = fi.Extension;//获取图片类型


            if (type == ".jpg" || type == ".gif" || type == ".bmp" || type == ".png")
            {



                string SavePath = Server.MapPath("~\\img");//图片保存到文件夹下
                this.FileUpload1.PostedFile.SaveAs(SavePath + "\\" + name);//保存路径
                cmd.CommandText = "update news set biaoti=@BIAOTI,neirong=@NEIRONG,img=@IMG,time=@TIME where id='" + this.Label1.Text.ToString() + "'";
                cmd.Parameters.AddWithValue("@BIAOTI", this.TextBox2.Text.Trim());
                cmd.Parameters.AddWithValue("@NEIRONG", this.TextBox3.Text.Trim());
                cmd.Parameters.AddWithValue("@IMG", "~\\img\\" + name + "");
                cmd.Parameters.AddWithValue("@TIME", DateTime.Now.ToLocalTime().ToString());
                cmd.Connection = conn;
                cmd.ExecuteNonQuery();
                Response.Write("<script>alert('更新成功！')</script>");
                this.Label1.Text = "";
                this.TextBox2.Text = "";
                this.TextBox3.Text = "";
                this.Image1.ImageUrl = "";

            }
            else
            {
                Response.Write("<script>alert('请选择正确的格式图片！')</script>");
            }

        }
        catch (Exception ex)
        {

            Response.Write("<script>alert('更新失败,请重试！')</script>");
        }
        finally
        {
            conn.Close();
        }
    }
    #endregion
    protected void Button1_Click(object sender, EventArgs e)
    {
        gengxin();
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
            cmd.CommandText = "select * from news where biaoti like '%" + this.TextBox1.Text.Trim() + "%'";
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
        /*string strSQL;
        strSQL = "select * from wenzhang where biaoti like '%" + this.TextBox1.Text.Trim() + "%'";
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
                cmd.CommandText = "DELETE from news where id='" + this.Label1.Text.ToString() + "'";
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
        string h = "select * from news";
        this.SqlDataSource1.SelectCommand = h;
        this.GridView1.DataBind();
    }
}