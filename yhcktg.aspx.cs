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
public partial class yhcktg : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        if (Session["name"] == null)
        {
            Response.Write("<script>alert('请先登录！');window.location.href='Login.aspx'</script>");
        }
        else
        {
            string h = "SELECT * FROM tougao where yhid='" + Session["name"].ToString() + "'";
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
                this.TextBox1.Text = dr["tgbt"].ToString().Trim();
                this.TextBox2.Text = dr["tgnr"].ToString().Trim();
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
            Response.Write("<script>alert('投稿留言失败，请重试！')</script>");

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
                cmd.CommandText = "update tougao set tgbt=@TGBT,tgnr=@TGNR,tgimg=@TGIMG,tgtime=@TGTIME where id='" + this.Label1.Text.ToString() + "'";
                cmd.Parameters.AddWithValue("@TGBT", this.TextBox1.Text.Trim());
                cmd.Parameters.AddWithValue("@TGNR", this.TextBox2.Text.Trim());
                cmd.Parameters.AddWithValue("@TGIMG", "~\\img\\" + name + "");
                cmd.Parameters.AddWithValue("@TGTIME", DateTime.Now.ToLocalTime().ToString());
                cmd.Connection = conn;
                cmd.ExecuteNonQuery();
                Response.Write("<script>alert('更新成功！')</script>");
                this.Label1.Text = "";
                this.TextBox2.Text = "";
                this.TextBox1.Text = "";
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
                cmd.CommandText = "DELETE from tougao where yhid='" + Session["name"].ToString() + "'";
                cmd.Connection = conn;
                cmd.ExecuteNonQuery();
                Response.Write("<script>alert('删除成功！')</script>");
                this.TextBox2.Text = "";
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