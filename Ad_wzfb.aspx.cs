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

public partial class Ad_wzfb : System.Web.UI.Page
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
    protected void Button1_Click(object sender, EventArgs e)
    {
        fbwz();
    }
    #region 发布文章
    public void fbwz()
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
                cmd.CommandText = "insert into news values(@BIAOTI,@NEIRONG,@IMG,@TIME)";
                cmd.Parameters.AddWithValue("@BIAOTI", this.TextBox1.Text.Trim());
                cmd.Parameters.AddWithValue("@NEIRONG", this.TextBox2.Text.Trim());
                cmd.Parameters.AddWithValue("@IMG", "~\\img\\" + name + "");
                cmd.Parameters.AddWithValue("@TIME", DateTime.Now.ToLocalTime().ToString());
                cmd.Connection = conn;
                cmd.ExecuteNonQuery();
                Response.Write("<script>alert('添加成功！')</script>");
                this.TextBox1.Text = "";
                this.TextBox2.Text = "";

            }
            else
            {
                Response.Write("<script>alert('请选择正确的格式图片！')</script>");
            }

        }
        catch (Exception ex)
        {
           
            Response.Write("<script>alert('添加失败,请重试！')</script>");
        }
        finally
        {
            conn.Close();
        }
    }
    #endregion
}